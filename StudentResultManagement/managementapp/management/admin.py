from django.utils.html import mark_safe
from django.contrib import admin
from django.forms import ModelForm, PasswordInput
from .models import *
from .utils import *


@admin.display(description='date_joined')
def date_format(obj):
    return utc_to_local(obj.date_joined).strftime("%H:%M:%S - %d/%m/%Y")


class UserForm(ModelForm):
    class Meta:
        model = User
        fields = ['username', 'password', 'email', 'first_name',
                  'last_name', 'is_active', 'gender', 'role', 'avatar']
        widgets = {
            'password': PasswordInput(),
        }


class UserAdmin(admin.ModelAdmin):
    list_display_links = ['username', 'email']
    list_display = ['username', 'email', date_format, 'is_active', 'role']
    list_filter = ['is_active', 'role']
    list_per_page = 25
    list_editable = ['is_active']
    search_fields = ['id', 'username', 'email', 'first_name',
                     'last_name', 'gender', 'is_active']
    readonly_fields = ['image']
    form = UserForm

    def image(self, obj):
        if obj:
            return mark_safe(
                '<img src="/static/{url}" width="120" />'.format(url=obj.avatar.name))

    def save_model(self, request, obj, form, change):
        if obj.password is not None:
            obj.set_password(obj.password)
        super().save_model(request, obj, form, change)


class TeacherAdmin(admin.ModelAdmin):
    pass


class StudentAdmin(admin.ModelAdmin):
    pass


admin.site.site_header = 'Student Result Management'
admin.site.register(User, UserAdmin)
admin.site.register(Teacher, TeacherAdmin)
admin.site.register(Student, StudentAdmin)
admin.site.register(Subject)
admin.site.register(Faculty)
admin.site.register(Class)
admin.site.register(Course)
admin.site.register(Mark)
admin.site.register(MarkDetail)
admin.site.register(Topic)
admin.site.register(Comment)
