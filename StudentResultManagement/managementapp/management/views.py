import json
import re
from random import randint

from django.core.mail import send_mail
from django.http import HttpResponse
from django.utils.encoding import force_str
from django.utils.decorators import method_decorator
from django.views.decorators.debug import sensitive_post_parameters
from oauth2_provider.models import get_access_token_model
from oauth2_provider.signals import app_authorized
from oauth2_provider.views import TokenView
from rest_framework import viewsets, generics, parsers, status
from rest_framework.decorators import action
from rest_framework.views import Response
from django.utils.http import urlsafe_base64_decode

from .perms import *
from .serializers import *
from .utils import *
from .email import *


class CustomTokenView(TokenView):
    @method_decorator(sensitive_post_parameters("password"))
    def post(self, request, *args, **kwargs):
        url, headers, body, status = self.create_token_response(request)
        if status == 200:
            body = json.loads(body)
            access_token = body.get("access_token")
            if access_token is not None:
                token = get_access_token_model().objects.get(
                    token=access_token)
                app_authorized.send(
                    sender=self, request=request,
                    token=token)

                body['user_info'] = {
                    'username': token.user.username,
                    'image': 'http://127.0.0.1:8000/static/' + token.user.avatar.name,
                }
                body = json.dumps(body)

        response = HttpResponse(content=body, status=status)
        for k, v in headers.items():
            response[k] = v
        return response


class FacultyViewSet(viewsets.ViewSet, generics.ListAPIView):
    queryset = Faculty.objects.all()
    serializer_class = FacultySerializer


class TeacherViewSet(viewsets.ViewSet,
                     generics.ListAPIView):
    model = Teacher
    queryset = Teacher.objects.all()
    serializer_class = TeacherSerializer

    def get_permissions(self):
        return [permissions.AllowAny()]

    @action(methods=['get'], detail=False, url_path='courses')
    def get_courses(self, request):
        courses = Course.objects.filter(teacher__user_id=request.user.id)
        if courses:
            return Response(CourseSerializer(courses, many=True, context={'request': request}).data)

        return Response(status=status.HTTP_400_BAD_REQUEST, data={"message": "No courses!!!"})


class UserViewSet(viewsets.ViewSet,
                  generics.ListAPIView,
                  generics.CreateAPIView):
    model = User
    queryset = User.objects.filter(is_active=True, is_superuser=False)
    serializer_class = UserSerializer
    parser_classes = [parsers.MultiPartParser, ]

    def get_permissions(self):
        if self.action in ['current_user']:
            return [permissions.IsAuthenticated()]
        return [permissions.AllowAny()]

    def create(self, request, *args, **kwargs):
        try:
            user = User()
            for k, v in request.data.items():
                setattr(user, k, v)

            serializer = UserSerializer(data=request.data)
            if not serializer.is_valid():
                return Response(data=errors_to_json(serializer.errors),
                                status=status.HTTP_400_BAD_REQUEST)

            code_pattern = re.search(r'\d{10}', user.email)
            code = code_pattern.group(0)

            user.set_password(user.password)
            user.is_active = False
            user.save()
            student = Student(code=code, user=user)
            student.save()

            send_verify_email(request=request, user=user)

            return Response(status=status.HTTP_201_CREATED,
                            data={"message": "Account registered successfully"})
        except Exception as ex:
            return Response(data=str(ex), status=status.HTTP_400_BAD_REQUEST)

    @action(methods=['get'], detail=False, url_path='verify-test')
    def verify_test(self, request):
        try:
            user = User.objects.get(pk=3)
            send_verify_email(request, user)
            return Response(status=status.HTTP_200_OK)
        except:
            return Response(status=status.HTTP_400_BAD_REQUEST)

    @action(methods=['get'], permission_classes=[permissions.AllowAny],
            detail=False, url_path='verify')
    def verify(self, request):
        try:
            uid64 = self.request.query_params.get('uid64')
            token = self.request.query_params.get('token')

            user_id = force_str(urlsafe_base64_decode(uid64))
            user = User.objects.get(pk=user_id)
        except(TypeError, ValueError, OverflowError, User.DoesNotExist):
            user = None

        if user is not None and account_activation_token.check_token(user, token):
            user.is_active = True
            user.save()
            return Response(status=status.HTTP_200_OK,
                            data={"message": "You have successfully verified account"})
        else:
            return Response(status=status.HTTP_400_BAD_REQUEST,
                            data={"message": "Activation link is invalid!"})

    @action(methods=['get', 'patch'], detail=False, url_path='current-user')
    def current_user(self, request):
        u = request.user
        if request.method.__eq__('PATCH'):
            serializer = UserSerializer(u, data=request.data, partial=True)
            if serializer.is_valid():
                serializer.save()
                return Response(UserSerializer(u, context={'request': request}).data)
            return Response(status=status.HTTP_400_BAD_REQUEST, data="Error!!!")

        return Response(UserSerializer(u, context={'request': request}).data)


class SubjectViewSet(viewsets.ViewSet,
                     generics.ListAPIView):
    model = Subject
    queryset = Subject.objects.all()
    serializer_class = SubjectSerializer


class ClassViewSet(viewsets.ViewSet,
                   generics.ListAPIView):
    model = Class
    queryset = Class.objects.all()
    serializer_class = ClassSerializer


class CourseViewSet(viewsets.ViewSet,
                    generics.ListAPIView):
    model = Course
    queryset = Course.objects.filter(active=True)
    serializer_class = CourseSerializer


class MarkViewSet(viewsets.ViewSet,
                  generics.ListAPIView):
    model = Mark
    queryset = Mark.objects.all()
    serializer_class = MarkSerializer


class TopicViewSet(viewsets.ViewSet,
                   generics.ListAPIView,
                   generics.CreateAPIView,
                   generics.RetrieveAPIView):
    model = Topic
    queryset = Topic.objects.filter(active=True, comments__active=True).distinct()
    serializer_class = TopicSerializer

    def get_serializer_class(self):
        if self.action == 'add_comment':
            return CommentCreateSerializer
        return TopicSerializer

    def get_permissions(self):
        if self.action in ['add_comment', 'update_comment']:
            return [permissions.IsAuthenticated()]

        return [permissions.AllowAny()]

    @action(methods=['get'], detail=True,
            url_path='comments')
    def get_comments(self, request, pk):
        topic = Topic.objects.get(pk=pk)
        comments = CommentSerializer(topic.comments, many=True,
                                     context={'request': request})

        return Response(data=comments.data,
                        status=status.HTTP_200_OK)

    @action(methods=['post'], detail=True,
            url_path='comments')
    def add_comment(self, request, pk):
        topic = Topic.objects.get(pk=pk)
        user = User.objects.get(pk=request.user.id)

        c = Comment(content=request.data['content'],
                    user=user,
                    topic=topic)
        c.save()

        return Response(CommentSerializer(c, context={'request': request}).data,
                        status=status.HTTP_201_CREATED)

    @action(methods=['patch'], detail=True,
            url_path='comments')
    def update_comment(self, request, pk):
        topic = Topic.objects.get(pk=pk)
        user = User.objects.get(pk=request.data.get('user_id'))

        c = Comment(content=request.data['content'],
                    user=user,
                    topic=topic)
        topic.comments.add(c)
        topic.save()

        return Response(CommentSerializer(c, context={'request': request}).data,
                        status=status.HTTP_201_CREATED)
