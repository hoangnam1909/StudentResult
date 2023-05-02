from rest_framework import permissions

from .models import User


class CourseOwner(permissions.BasePermission):
    def has_object_permission(self, request, view, course):
        user = request.user
        if user.role == User.Role.TEACHER:
            return user and course.teacher == user.teacher
        else:
            return False


class CourseTopicPermission(permissions.BasePermission):
    def has_object_permission(self, request, view, course):
        user = request.user
        if user.role == User.Role.TEACHER:
            return user and course.teacher == user.teacher
        if user.role == User.Role.STUDENT:
            return user and user.student in course.students.all()


class CourseStudentPermission(permissions.BasePermission):
    def has_object_permission(self, request, view, course):
        user = request.user
        if user.role == User.Role.TEACHER:
            return user and course.teacher == user.teacher
        if user.role == User.Role.STUDENT:
            return user and user.student in course.students.all()
