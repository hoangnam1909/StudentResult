from django.urls import path, include
from rest_framework import routers

from . import views

r = routers.DefaultRouter()
r.register('faculty', views.FacultyViewSet)
r.register('user', views.UserViewSet)
r.register('teacher', views.TeacherViewSet)
r.register('subject', views.SubjectViewSet)
r.register('class', views.ClassViewSet)
r.register('course', views.CourseViewSet)
r.register('mark', views.MarkViewSet)
r.register('topic', views.TopicViewSet)

urlpatterns = [
    path('', include(r.urls)),
]