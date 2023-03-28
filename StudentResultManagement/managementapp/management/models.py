from django.db import models
from django.contrib.auth.models import AbstractUser
from ckeditor.fields import RichTextField


class BaseModel(models.Model):
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)

    class Meta:
        abstract = True


class User(AbstractUser):
    is_teacher = models.BooleanField(default=False)
    is_student = models.BooleanField(default=False)
    avatar = models.ImageField(upload_to='users/%Y/%m', null=True)


class Subject(BaseModel):
    id = models.CharField(max_length=15, primary_key=True)
    name = models.CharField(max_length=100, null=False)
    credit = models.IntegerField(default=0)


class Faculty(models.Model):
    name = models.CharField(max_length=100, null=False)


class Class(BaseModel):
    id = models.CharField(max_length=15, primary_key=True)
    faculty = models.ForeignKey(Faculty, on_delete=models.CASCADE)
    subject = models.ManyToManyField(Subject)



