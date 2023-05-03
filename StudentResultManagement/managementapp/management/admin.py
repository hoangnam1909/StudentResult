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


class CourseForm(ModelForm):
    class Meta:
        model = Course
        fields = ['subject', 'course_class', 'teacher', 'start_date', 'end_date',
                  'students', 'active', 'locked', 'result_status', ]


class CourseAdmin(admin.ModelAdmin):
    form = CourseForm
    list_display = ['get_course', 'get_teacher', 'start_date', 'end_date']
    list_filter = ['start_date', 'end_date', 'locked', 'result_status']
    list_per_page = 15
    search_fields = ['subject__name',
                     'course_class__id',
                     'teacher__user__first_name', 'teacher__user__last_name']

    def get_course(self, obj):
        return '[{subject_code}] {subject_name} - {class_code}' \
            .format(subject_code=obj.subject.id,
                    subject_name=obj.subject.name,
                    class_code=obj.course_class.id)

    get_course.short_description = 'Course'
    get_course.admin_order_field = 'subject'

    def get_teacher(self, obj):
        return '{fullname} - {email}' \
            .format(fullname=obj.teacher.user.first_name + ' ' + obj.teacher.user.last_name,
                    email=obj.teacher.user.email)

    get_teacher.short_description = 'Teacher'
    get_teacher.admin_order_field = 'course__teacher'
    get_teacher.admin_search_field = 'course__teacher'


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
admin.site.register(Course, CourseAdmin)
admin.site.register(Mark)
admin.site.register(MarkDetail)
admin.site.register(Topic)
admin.site.register(Comment)
