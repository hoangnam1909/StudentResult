from django.http import HttpResponse
from rest_framework import viewsets, generics, parsers, permissions, status, views
from rest_framework.exceptions import APIException
from rest_framework.decorators import action
from rest_framework.views import Response
from .models import *
from .serializers import *
from django.db import transaction, DatabaseError
import re
import json
from django.core.mail import send_mail
from random import randint
from .utils import *


class FacultyViewSet(viewsets.ViewSet, generics.ListAPIView):
    queryset = Faculty.objects.all()
    serializer_class = FacultySerializer


class TeacherViewSet(viewsets.ViewSet,
                     generics.ListAPIView):
    model = Teacher
    queryset = Teacher.objects.all()
    serializer_class = TeacherSerializer


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

            user.username = code
            user.set_password(code)

            send_mail('Verify your email',
                      'Code: ' + str(randint(100000, 999999)),
                      'settings.EMAIL_HOST_USER',
                      [user.email])

            user.save()
            student = Student(code=code,
                              user=user)
            student.save()

            return Response(status=status.HTTP_201_CREATED)
        except Exception as ex:
            return Response(data=str(ex), status=status.HTTP_400_BAD_REQUEST)

    @action(methods=['get', 'put'], detail=False, url_path='current-user')
    def current_user(self, request):
        u = request.user
        if request.method.__eq__('PUT'):
            for k, v in request.data.items():
                setattr(u, k, v)
            u.save()

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
