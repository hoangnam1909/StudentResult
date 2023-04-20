from rest_framework import permissions


class TeacherCourseOwner(permissions.IsAuthenticated):
    def has_object_permission(self, request, view, course):
        return request.user.teacher and course.teacher == request.user.teacher
