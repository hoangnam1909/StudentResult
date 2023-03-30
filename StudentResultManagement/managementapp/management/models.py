from django.contrib.auth.models import AbstractUser
from django.db import models


class BaseModel(models.Model):
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)

    class Meta:
        abstract = True


class User(AbstractUser):
    email = models.EmailField(unique=True, null=False)
    gender = models.BooleanField(default=False)
    avatar = models.ImageField(upload_to='users/%Y/%m')

    def __str__(self):
        return '{username} - {email}'.format(username=super().username,
                                             email=self.email)


class Teacher(models.Model):
    code = models.CharField(max_length=10, primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE, default=None)

    def __str__(self):
        return '{code} - {fullname}' \
            .format(code=self.code,
                    fullname=self.user.first_name + ' ' + self.user.last_name)


class Student(models.Model):
    code = models.CharField(max_length=10, primary_key=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE, default=None)
    faculty = models.ForeignKey('Faculty', on_delete=models.PROTECT, null=True)
    regular_class = models.ForeignKey('Class', on_delete=models.CASCADE, null=True)

    def __str__(self):
        return '{code} - {fullname}' \
            .format(code=self.code,
                    fullname=self.user.first_name + ' ' + self.user.last_name)


class Subject(BaseModel):
    id = models.CharField(max_length=15, primary_key=True)
    name = models.CharField(max_length=100, null=False)
    credit = models.IntegerField(default=0)
    midterm_percent = models.IntegerField(default=40)
    final_percent = models.IntegerField(default=60)

    def __str__(self):
        return '{id} - {name}'.format(id=self.id, name=self.name)


class Faculty(BaseModel):
    name = models.CharField(max_length=100, null=False)

    def __str__(self):
        return self.name


class Class(BaseModel):
    id = models.CharField(max_length=15, primary_key=True)
    faculty = models.ForeignKey(Faculty, on_delete=models.CASCADE)

    def __str__(self):
        return self.id


class Course(BaseModel):
    start_date = models.DateTimeField()
    end_date = models.DateTimeField()
    subject = models.ForeignKey(Subject, related_name='courses', on_delete=models.CASCADE)
    course_class = models.ForeignKey(Class, on_delete=models.CASCADE)
    students = models.ManyToManyField(Student, related_name="courses")
    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE)

    def __str__(self):
        return '{subject_code} - {class_code}}' \
            .format(subject_code=self.subject.id,
                    class_code=self.course_class.id)


class Mark(BaseModel):
    student = models.ForeignKey('Student', on_delete=models.CASCADE)
    course = models.ForeignKey('Course', on_delete=models.CASCADE)

    class Meta:
        unique_together = ('student', 'course')


class MarkDetail(BaseModel):
    is_midterm = models.BooleanField(default=False)
    is_final = models.BooleanField(default=False)
    value = models.FloatField(default=0)
    mark = models.ForeignKey('Mark', related_name='marks_detail', on_delete=models.CASCADE)

    class Meta:
        unique_together = ('is_midterm', 'is_final')


class Topic(BaseModel):
    title = models.CharField(max_length=255, null=False)
    content = models.TextField(null=False)
    author = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.title


class Comment(BaseModel):
    content = models.TextField(null=False)
    topic = models.ForeignKey('Topic', related_name='comments', on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
