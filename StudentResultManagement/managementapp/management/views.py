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


class FacultyViewSet(viewsets.ViewSet, generics.ListAPIView):
    queryset = Faculty.objects.all()
    serializer_class = FacultySerializer


class UserViewSet(viewsets.ViewSet, generics.CreateAPIView):
    model = User
    queryset = User.objects.all()
    serializer_class = UserSerializer
    parser_classes = [parsers.MultiPartParser, ]

    def create(self, request, *args, **kwargs):
        try:
            user = User()
            for k, v in request.data.items():
                setattr(user, k, v)

            code_pattern = re.search(r'\d{10}', user.email)
            code = code_pattern.group(0)

            user.save()
            student = Student(code=code,
                              user=user)
            student.save()

            return Response(status=status.HTTP_201_CREATED)
        except Exception as ex:
            raise APIException(str(ex))
