from django.urls import path, include
from rest_framework import routers
from . import views


r = routers.DefaultRouter()
r.register('faculty', views.FacultyViewSet)
r.register('user', views.UserViewSet)
r.register('teacher', views.TeacherViewSet)


urlpatterns = [
    path('', include(r.urls))
]
