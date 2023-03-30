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
