import io
import json
import re
from collections import namedtuple
from itertools import chain
from random import randint

from django.core.mail import send_mail
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse
from django.utils.encoding import force_str
from django.utils.decorators import method_decorator
from django.views.decorators.debug import sensitive_post_parameters
from oauth2_provider.models import get_access_token_model
from oauth2_provider.signals import app_authorized
from oauth2_provider.views import TokenView
from rest_framework import viewsets, generics, parsers, status
from rest_framework.decorators import action
from rest_framework.parsers import JSONParser
from rest_framework.views import Response, APIView
from django.utils.http import urlsafe_base64_decode
from rest_framework.renderers import TemplateHTMLRenderer
from rest_framework.permissions import *
from django.views.generic.detail import DetailView
from django.views import View

from .perms import *
from .serializers import *
from .utils import *
from .email import *
from .paginators import *

from django.db import connection


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
                    'role': token.user.role,
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
        return [AllowAny()]

    @action(methods=['get'], detail=False, url_path='courses')
    def get_courses(self, request):
        courses = Course.objects.filter(teacher__user_id=request.user.id)
        if courses:
            return Response(CourseSerializer(courses, many=True, context={'request': request}).data)

        return Response(status=status.HTTP_400_BAD_REQUEST, data={"message": "No courses!!!"})


class UserViewSet(viewsets.ViewSet,
                  generics.ListAPIView,
                  generics.CreateAPIView,
                  generics.UpdateAPIView):
    model = User
    queryset = User.objects.filter(is_active=True, is_superuser=False)
    serializer_class = UserSerializer
    parser_classes = [parsers.MultiPartParser, ]

    def get_permissions(self):
        if self.action in ['current_user']:
            return [IsAuthenticated()]
        return [AllowAny()]

    def get_queryset(self):
        queryset = User.objects.all()
        email = self.request.query_params.get('email')
        if email is not None:
            queryset = queryset.filter(email__icontains=email)

        code = self.request.query_params.get('code')
        if code is not None:
            student_user = queryset.filter(student__code__icontains=code)
            teacher_user = queryset.filter(teacher__code__icontains=code)

            queryset = list(chain(student_user, teacher_user))

        return queryset

    @action(methods=['post'], detail=False, url_path='specific-user')
    def get_specific_user(self, request):
        queryset = User.objects.all()

        email = request.POST.get('email')
        if email is not None:
            queryset = queryset.filter(email__icontains=email)

        code = request.POST.get('code')
        if code is not None:
            student_user = queryset.filter(student__code__icontains=code)
            teacher_user = queryset.filter(teacher__code__icontains=code)

            queryset = list(chain(student_user, teacher_user))

        if queryset:
            return Response(status=status.HTTP_200_OK,
                            data=UserSerializer(queryset, many=True, context={'request': request}).data)

        return Response(status=status.HTTP_404_NOT_FOUND,
                        data={"message": "Not found"})

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
            user.role = User.Role.STUDENT
            user.save()
            student = Student(code=code, user=user)
            student.save()

            send_verify_email(request=request, user=user)

            return Response(status=status.HTTP_201_CREATED,
                            data={"message": "Account registered successfully"})
        except Exception as ex:
            return Response(data=str(ex), status=status.HTTP_400_BAD_REQUEST)

    @action(methods=['get'], permission_classes=[AllowAny],
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
            return HttpResponseRedirect(settings.FRONT_END_HOST + '/verify/succeed/')
        else:
            return HttpResponseRedirect(settings.FRONT_END_HOST + '/verify/failed/')

    @action(methods=['get'], detail=False, url_path='current-user')
    def current_user(self, request):
        u = request.user
        return Response(UserSerializer(u, context={'request': request}).data)

    def get_object(self):
        return self.request.user


# class SubjectViewSet(viewsets.ViewSet,
#                      generics.ListAPIView):
#     model = Subject
#     queryset = Subject.objects.all()
#     serializer_class = SubjectSerializer
#
#
# class ClassViewSet(viewsets.ViewSet,
#                    generics.ListAPIView):
#     model = Class
#     queryset = Class.objects.all()
#     serializer_class = ClassSerializer


class StudentViewSet(viewsets.ViewSet):
    model = Student
    queryset = Student.objects.all()
    serializer_class = StudentSerializer
    permission_classes = [StudentUser, ]

    @action(methods=['get'], detail=False, url_path='mark')
    def get_mark(self, request):
        user = request.user
        mark = Mark.objects.filter(student_id=user.student.code)

        serializer = StudentListMarkSerializer(mark, many=True)
        return Response(status=status.HTTP_200_OK,
                        data=serializer.data)


class CourseViewSet(viewsets.ViewSet,
                    generics.ListAPIView):
    model = Course
    queryset = Course.objects.filter(active=True)
    serializer_class = CourseSerializer
    permission_classes = [IsAuthenticated, CourseOwner, ]

    def get_serializer_class(self):
        if self.action in ['topic', ]:
            return TopicSerializer
        elif self.action in ['get_student', ]:
            return StudentSerializer
        return CourseSerializer

    def list(self, request, *args, **kwargs):
        user = request.user
        if user.role == User.Role.TEACHER:
            queryset = Course.objects.filter(teacher=user.teacher).all()

        if user.role == User.Role.STUDENT:
            queryset = Course.objects.filter(students__code=user.student.code).all()

        serializer = self.get_serializer(queryset, many=True)
        print(len(connection.queries))
        return Response(serializer.data)

    @action(methods=['get', 'post'], detail=True, url_path='topic')
    def topic(self, request, pk):
        self.permission_classes = [CourseTopicPermission, ]
        self.get_object()

        if request.method == 'GET':
            self.pagination_class = TopicPaginator
            queryset = self.get_object().topics.all()

            page = self.paginate_queryset(queryset)
            if page is not None:
                serializer = self.get_serializer(page, many=True)
                return self.get_paginated_response(serializer.data)

            serializer = self.get_serializer(queryset, many=True)
            return Response(serializer.data)
        elif request.method == 'POST':
            data = request.data
            topic = Topic.objects.create(title=data['title'],
                                         content=data['content'],
                                         author_id=request.user.id,
                                         course_id=pk)
            serializer = TopicSerializer(topic,
                                         context={'request': request})
            return Response(data=serializer.data,
                            status=status.HTTP_201_CREATED)

    @action(methods=['get'], detail=True, url_path='student')
    def get_student(self, request, pk):
        self.permission_classes = [CourseStudentPermission, ]
        self.pagination_class = StudentPaginator
        queryset = self.get_object().students.all()

        page = self.paginate_queryset(queryset)
        if page is not None:
            serializer = self.get_serializer(page, many=True)
            return self.get_paginated_response(serializer.data)

        serializer = self.get_serializer(queryset, many=True)
        return Response(serializer.data)

    @action(methods=['post'], detail=True, url_path='lock')
    def lock(self, request, pk):
        self.permission_classes = [CourseOwner, ]
        course = self.get_object()
        course.result_status = Course.Status.LOCKED
        course.save()

        students = course.students.all()
        email_list = list(User.objects.filter(student__in=students).values_list('email', flat=True))
        send_mark_email(request, course, email_list)

        return Response(status=status.HTTP_200_OK,
                        data={'message': 'Result Locked'})

    @action(methods=['get', 'post'], detail=True, url_path='mark')
    def get_mark(self, request, pk):
        self.permission_classes = [CourseOwner, ]
        course = self.get_object()
        students_code = course.students.all()
        students_code = students_code.values_list('code', flat=True)
        print(students_code)
        for code in students_code:
            if not Mark.objects.filter(course_id=pk).filter(student_id=code).exists():
                mark = Mark(course_id=pk, student_id=code)
                mark.save()

        if request.method == 'GET':
            mark = Mark.objects.filter(course_id=pk).all()
            print('query counter = ' + str(len(connection.queries)))
            return Response(data={'course_id': pk,
                                  'status': course.result_status,
                                  'mark_list': ListMarkSerializer(mark, many=True).data},
                            status=status.HTTP_200_OK)

        if request.method == 'POST':
            if self.get_object().result_status == Course.Status.LOCKED:
                return Response(status=status.HTTP_400_BAD_REQUEST,
                                data={'message': 'Result locked'})

            data = request.data
            object_name = namedtuple("ObjectName", data.keys())(*data.values())
            mark = object_name.mark_list
            for m in mark:
                if len(m.get('marks_detail')) > 6:
                    return Response(status=status.HTTP_400_BAD_REQUEST,
                                    data={'message': 'Do not enter more than 5 columns of midterm scores'})
                list_mark_detail_id = MarkDetail.objects.filter(mark_id=m.get('id')).values_list('id', flat=True)
                list_mark_detail_id = list(list_mark_detail_id)

                for md in m.get('marks_detail'):
                    mark_detail_id = md.get('id')
                    if mark_detail_id > 0:
                        if mark_detail_id in list_mark_detail_id:
                            MarkDetail.objects.filter(id=mark_detail_id).update(value=md.get('value'))
                            list_mark_detail_id.remove(mark_detail_id)
                    else:
                        new_mark_detail = MarkDetail(mark_id=m.get('id'),
                                                     is_final=md.get('is_final'),
                                                     is_midterm=md.get('is_midterm'),
                                                     value=md.get('value'))
                        new_mark_detail.save()

                for index in list_mark_detail_id:
                    MarkDetail.objects.get(pk=index).delete()

            mark = Mark.objects.filter(course_id=pk).all()

            for m in mark:
                midterm_marks = list(MarkDetail.objects
                                     .filter(mark_id=m.id)
                                     .filter(is_midterm=True)
                                     .values_list('value', flat=True))

                final_mark = list(MarkDetail.objects
                                  .filter(mark_id=m.id)
                                  .filter(is_final=True)
                                  .values_list('value', flat=True))
                m.mark_s4, m.mark_s10 = calculate_mark(self.get_object(),
                                                       midterm_marks=midterm_marks,
                                                       final_mark=final_mark)
                m.save()

            print('query counter = ' + str(len(connection.queries)))
            return Response(data={'course_id': pk,
                                  'mark_list': ListMarkSerializer(mark, many=True).data},
                            status=status.HTTP_200_OK)


class TopicViewSet(viewsets.ViewSet,
                   generics.ListAPIView,
                   generics.RetrieveUpdateAPIView):
    model = Topic
    queryset = Topic.objects.filter(active=True)
    serializer_class = TopicSerializer

    def get_serializer_class(self):
        if self.action == 'add_comment':
            return CommentCreateSerializer

        if self.action in ['retrieve', ]:
            return TopicDetailSerializer

        return TopicSerializer

    def get_permissions(self):
        if self.action in ['comments']:
            return [IsAuthenticated()]
        return [AllowAny()]

    @action(methods=['get', 'post', 'patch'], detail=True,
            url_path='comment')
    def comments(self, request, pk):
        if request.method == 'GET':
            topic = Topic.objects.get(pk=pk)
            comments = CommentSerializer(topic.comments, many=True,
                                         context={'request': request})

            return Response(data=comments.data,
                            status=status.HTTP_200_OK)

        topic = Topic.objects.get(pk=pk)
        user = User.objects.get(pk=request.user.id)

        c = Comment(content=request.data['content'],
                    user=user,
                    topic=topic)
        c.save()

        return Response(CommentSerializer(c, context={'request': request}).data,
                        status=status.HTTP_201_CREATED)


class CommentViewSet(viewsets.ViewSet,
                     generics.CreateAPIView,
                     generics.UpdateAPIView):
    model = Comment
    queryset = Comment.objects.filter(active=True)
    serializer_class = CommentSerializer

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data, many=True)
        serializer.is_valid(raise_exception=True)
        self.perform_create(serializer)
        return Response(serializer.data, status=status.HTTP_201_CREATED)

    @action(methods=['post'], detail=False, url_path='test')
    def test(self, request):
        data = request.data
        object_name = namedtuple("ObjectName", data.keys())(*data.values())
        print(object_name)
        print(object_name.person)
        print(object_name.person[2].get('Name'))
        return Response(status=status.HTTP_200_OK, data=object_name.person[2].get('Name'))
