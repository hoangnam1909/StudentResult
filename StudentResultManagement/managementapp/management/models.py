from django.db import models
from django.contrib.auth.models import AbstractUser


class BaseModel(models.Model):
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)

    class Meta:
        abstract = True


class User(AbstractUser):
    gender = models.BooleanField(default=False, null=False)
    avatar = models.ImageField(upload_to='users/%Y/%m', null=False)


class Teacher(models.Model):
    code = models.CharField(max_length=10, primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE)


class Student(models.Model):
    code = models.CharField(max_length=10, primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    faculty = models.ForeignKey('Faculty', on_delete=models.PROTECT)
    regular_class = models.ForeignKey('Class', on_delete=models.CASCADE)


class Subject(BaseModel):
    id = models.CharField(max_length=15, primary_key=True)
    name = models.CharField(max_length=100, null=False)
    credit = models.IntegerField(default=0)
    midterm_percent = models.IntegerField(default=40)
    final_percent = models.IntegerField(default=60)


class Faculty(models.Model):
    name = models.CharField(max_length=100, null=False)


class Class(BaseModel):
    id = models.CharField(max_length=15, primary_key=True)
    faculty = models.ForeignKey(Faculty, on_delete=models.CASCADE)


class Course(BaseModel):
    start_date = models.DateTimeField()
    end_date = models.DateTimeField()
    subject = models.ManyToManyField(Subject, related_name="courses")
    course_class = models.ForeignKey(Class, on_delete=models.CASCADE)
    students = models.ManyToManyField(Student, related_name="courses")
    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE)


class Mark(BaseModel):
    is_midterm = models.BooleanField(default=False)
    is_final = models.BooleanField(default=False)
    student = models.ForeignKey('Student', on_delete=models.CASCADE)
    course = models.ForeignKey('Course', on_delete=models.CASCADE)


class Topic(BaseModel):
    title = models.CharField(max_length=255, null=False)
    content = models.TextField(null=False)
    author = models.ForeignKey(User, on_delete=models.CASCADE)


class Comment(BaseModel):
    content = models.TextField(null=False)
    topic = models.ForeignKey('Topic', related_name='comments', on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)

