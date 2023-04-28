from django.contrib.auth.models import AbstractUser
from django.db import models


class BaseModel(models.Model):
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)

    class Meta:
        abstract = True


class User(AbstractUser):
    class Role(models.TextChoices):
        TEACHER = "TEACHER", "Teacher"
        STUDENT = "STUDENT", "Student"
        NO_ROLE = "NO_ROLE", "No Role"

    base_role = Role.NO_ROLE

    email = models.EmailField(unique=True, null=False)
    gender = models.BooleanField(default=False)
    avatar = models.ImageField(upload_to='users/%Y/%m')
    role = models.CharField(max_length=50, default=base_role, choices=Role.choices)

    def __str__(self):
        return '{fullname} - {username} - {email}' \
            .format(fullname=self.first_name + ' ' + self.last_name,
                    username=super().username,
                    email=self.email)


class Teacher(models.Model):
    code = models.CharField(max_length=10, primary_key=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='teacher')

    def __str__(self):
        return '{code} - {fullname} - {email}' \
            .format(code=self.code,
                    fullname=self.user.first_name + ' ' + self.user.last_name,
                    email=self.user.email)


class Student(models.Model):
    code = models.CharField(max_length=10, primary_key=True)
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='student')

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
    class Status(models.TextChoices):
        DRAFT = "DRAFT", "Draft"
        DONE = "DONE", "Done"

    bae_status = Status.DRAFT

    start_date = models.DateTimeField()
    end_date = models.DateTimeField()
    subject = models.ForeignKey(Subject, related_name='courses', on_delete=models.CASCADE)
    course_class = models.ForeignKey(Class, on_delete=models.CASCADE)
    students = models.ManyToManyField(Student, related_name="courses")
    teacher = models.ForeignKey(Teacher, on_delete=models.CASCADE)
    is_locked = models.BooleanField(default=False)
    result_status = models.CharField(max_length=50, default=bae_status, choices=Status.choices)

    class Meta:
        unique_together = ('subject', 'course_class')

    def __str__(self):
        return '[{subject_code}] {subject_name} - {class_code}' \
            .format(subject_code=self.subject.id,
                    subject_name=self.subject.name,
                    class_code=self.course_class.id)


class Mark(BaseModel):
    student = models.OneToOneField('Student', on_delete=models.CASCADE)
    course = models.OneToOneField('Course', on_delete=models.CASCADE)

    class Meta:
        unique_together = ('student', 'course')

    def __str__(self):
        return '[{subject_code} - {class_code}] [{student_id} - {student_fullname}]' \
            .format(student_id=self.student.code,
                    student_fullname=self.student.user.first_name + ' ' + self.student.user.last_name,
                    subject_code=self.course.subject.id,
                    class_code=self.course.course_class.id)


class MarkDetail(BaseModel):
    is_midterm = models.BooleanField(default=False)
    is_final = models.BooleanField(default=False)
    value = models.FloatField(default=0)
    mark = models.ForeignKey('Mark', related_name='marks_detail', on_delete=models.CASCADE)

    class Meta:
        unique_together = ('is_midterm', 'is_final')

    def __str__(self):
        mark_type = ''
        if self.is_midterm:
            mark_type = "Midterm"
        if self.is_final:
            mark_type = "Final"

        return '[{type}] {mark}' \
            .format(type=mark_type, mark=self.mark)


class Topic(BaseModel):
    title = models.CharField(max_length=255, null=False)
    content = models.TextField(null=False)
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    course = models.ForeignKey(Course, default=None, related_name='topics', on_delete=models.CASCADE)

    def __str__(self):
        return self.title


class Comment(BaseModel):
    content = models.TextField(null=False)
    topic = models.ForeignKey('Topic', related_name='comments', on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return 'Topic_id {topic_id} - user_id {user_id} - {created_date}' \
            .format(topic_id=self.topic_id,
                    user_id=self.user_id,
                    created_date=self.created_date)
