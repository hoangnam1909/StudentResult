from rest_framework import serializers, validators
from .models import *
from .validators import *
import re


class FacultySerializer(serializers.ModelSerializer):
    class Meta:
        model = Faculty
        fields = ['id', 'name', 'created_date', 'updated_date']


class UserSerializer(serializers.ModelSerializer):
    image = serializers.SerializerMethodField(source='avatar')

    def get_image(self, user):
        if user.avatar:
            request = self.context.get('request')
            return request.build_absolute_uri('/static/%s' % user.avatar.name) if request else ''

    def create(self, validated_data):
        data = validated_data.copy()
        user = User(**data)
        user.set_password(user.password)
        user.save()
        return user

    class Meta:
        model = User
        fields = ['id', 'first_name', 'last_name', 'email', 'gender',
                  'username', 'password', 'avatar', 'image', 'date_joined']
        extra_kwargs = {
            'password': {'write_only': True},
            'avatar': {'write_only': True},
            'email': {'validators': [validate_ou_email, ]}
        }


class UserCommentSerializer(serializers.ModelSerializer):
    image = serializers.SerializerMethodField(source='avatar')

    def get_image(self, user):
        if user.avatar:
            request = self.context.get('request')
            return request.build_absolute_uri('/static/%s' % user.avatar.name) if request else ''

    class Meta:
        model = User
        fields = ['id', 'first_name', 'last_name', 'image']


class ClassSerializer(serializers.ModelSerializer):
    faculty = FacultySerializer(many=False)

    class Meta:
        model = Class
        fields = ['id', 'faculty']


class StudentSerializer(serializers.ModelSerializer):
    user = UserSerializer(many=False)
    faculty = FacultySerializer(many=False)
    regular_class = ClassSerializer(many=False)

    class Meta:
        model = Teacher
        fields = ['code', 'user', 'faculty', 'regular_class']


class TeacherSerializer(serializers.ModelSerializer):
    user = UserSerializer(many=False)

    class Meta:
        model = Teacher
        fields = ['code', 'user']


class SubjectSerializer(serializers.ModelSerializer):
    class Meta:
        model = Subject
        fields = ['id', 'name', 'credit']


class CourseSerializer(serializers.ModelSerializer):
    subject = SubjectSerializer(many=False)
    course_class = ClassSerializer(many=False)
    teacher = TeacherSerializer(many=False)

    class Meta:
        model = Course
        fields = ['id', 'start_date', 'end_date',
                  'subject', 'course_class', 'teacher']


class MarkDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = MarkDetail
        fields = ['is_midterm', 'is_final', 'value']


class MarkSerializer(serializers.ModelSerializer):
    student = StudentSerializer(many=False)
    marks_detail = MarkDetailSerializer(many=True)
    course = CourseSerializer(many=False)

    class Meta:
        model = Mark
        fields = ['student', 'course', 'marks_detail']


class CommentCreateSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comment
        fields = ['content']


class CommentSerializer(serializers.ModelSerializer):
    user = UserCommentSerializer(many=False)

    class Meta:
        model = Comment
        fields = ['id', 'content', 'created_date', 'updated_date',
                  'user']


class TopicDetailSerializer(serializers.ModelSerializer):
    author = UserCommentSerializer()
    comments = CommentSerializer(many=True)

    class Meta:
        model = Topic
        fields = ['id', 'title', 'content', 'created_date',
                  'updated_date', 'author', 'comments']


class TopicCommentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Topic
        fields = ['id', 'title']


class TopicSerializer(serializers.ModelSerializer):
    author = UserCommentSerializer()

    class Meta:
        model = Topic
        fields = ['id', 'title', 'content',
                  'created_date', 'updated_date', 'author']
