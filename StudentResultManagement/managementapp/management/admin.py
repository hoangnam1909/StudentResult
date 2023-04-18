from django.utils.html import mark_safe
from django.contrib import admin
from django import forms
from .models import *
from .utils import *


@admin.display(description='date_joined')
def date_format(obj):
    return utc_to_local(obj.date_joined).strftime("%H:%M:%S - %d/%m/%Y")


class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ['username', 'email', 'first_name',
                  'last_name', 'is_active', 'gender', 'avatar']

    def save(self, commit=True):
        user = super(UserForm, self).save(commit=False)
        user.save(update_fields=['username', 'email', 'first_name',
                                 'last_name', 'is_active', 'gender', 'avatar'])
        return user


class UserAdmin(admin.ModelAdmin):
    list_display = ['id', 'username', 'email', date_format, 'is_active']
    list_filter = ['id', 'username', 'email', 'is_active']
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


admin.site.register(User, UserAdmin)
admin.site.register(Teacher)
admin.site.register(Student)
admin.site.register(Subject)
admin.site.register(Faculty)
admin.site.register(Class)
admin.site.register(Course)
admin.site.register(Mark)
admin.site.register(MarkDetail)
admin.site.register(Topic)
admin.site.register(Comment)
