"""managementapp URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
import debug_toolbar
from django.contrib import admin
from django.urls import path, re_path, include
from rest_framework import permissions
from drf_yasg.views import get_schema_view
from drf_yasg import openapi

from management.views import CustomTokenView

schema_view = get_schema_view(
    openapi.Info(
        title="Student Result Management API",
        default_version='v1',
        description="APIs for Student Result Management",
        contact=openapi.Contact(email="1951052125nam@ou.edu.vn"),
        license=openapi.License(name="Nguyễn Hoàng Nam@2023"),
    ),
    public=True,
    permission_classes=(permissions.AllowAny,), )

urlpatterns = [
    path('', include('management.urls')),
    path('admin/', admin.site.urls),
    re_path(r'^ckeditor/', include('ckeditor_uploader.urls')),
    re_path(r'^swagger(?P<format>\.json|\.yaml)$',
            schema_view.without_ui(cache_timeout=0),
            name='schema-json'),
    re_path(r'^swagger/$',
            schema_view.with_ui('swagger', cache_timeout=0),
            name='schema-swagger-ui'),
    re_path(r'^redoc/$',
            schema_view.with_ui('redoc', cache_timeout=0),
            name='schema-redoc'),
    path('authenticate/token/', CustomTokenView.as_view(), name="token"),
    path('o/', include('oauth2_provider.urls',
                       namespace='oauth2_provider')),
    path('__debug__/', include(debug_toolbar.urls)),
    # path('api/token/refresh/', TokenRe)
]
