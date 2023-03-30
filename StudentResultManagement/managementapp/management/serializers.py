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


class TeacherSerializer(serializers.ModelSerializer):
    user = UserSerializer(many=False)
    class Meta:
        model = Teacher
        fields = ['code', 'user']
