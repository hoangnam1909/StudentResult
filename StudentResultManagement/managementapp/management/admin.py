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
    list_display_links = ['username', 'get_full_name', 'email']
    list_display = ['username', 'get_full_name', 'email',
                    date_format, 'is_active', 'role']
    list_filter = ['is_active', 'role']
    list_per_page = 15
    list_editable = ['is_active']
    search_fields = ['id', 'username', 'email', 'first_name',
                     'last_name', 'gender', 'is_active']
    readonly_fields = ['image']
    form = UserForm

    def get_full_name(self, obj):
        return obj.first_name + ' ' + obj.last_name

    get_full_name.short_description = 'Fullname'

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
                  'students', 'active', 'result_status', ]


class CourseAdmin(admin.ModelAdmin):
    form = CourseForm
    list_display = ['get_course', 'get_teacher',
                    'get_student_count', 'result_status']
    list_filter = ['start_date', 'end_date',
                   'result_status', 'teacher']
    list_per_page = 15
    search_fields = ['result_status',
                     'subject__id',
                     'subject__name',
                     'course_class__id',
                     'teacher__code',
                     'teacher__user__first_name',
                     'teacher__user__last_name',
                     'teacher__user__email']

    def get_course(self, obj):
        return '[{subject_code}] {subject_name} - {class_code}' \
            .format(subject_code=obj.subject.id,
                    subject_name=obj.subject.name,
                    class_code=obj.course_class.id)

    get_course.short_description = 'Course'
    get_course.admin_order_field = ['subject', ]

    def get_teacher(self, obj):
        return '{fullname} - {email}' \
            .format(fullname=obj.teacher.user.first_name + ' ' + obj.teacher.user.last_name,
                    email=obj.teacher.user.email)

    get_teacher.short_description = 'Teacher'
    get_teacher.admin_order_field = 'teacher'

    def get_student_count(self, obj):
        return str(obj.students.all().count())

    get_student_count.short_description = 'number of students'


class ProductVariantInline(admin.TabularInline):
    model = MarkDetail
    exclude = ['active']
    readonly_fields = ('id',)
    max_num = 6


class MarkAdmin(admin.ModelAdmin):
    list_display = ['id', 'student', 'course']
    list_display_links = ['id', 'student', 'course']
    list_per_page = 15
    search_fields = ['id', 'student__code',
                     'student__user__first_name',
                     'student__user__last_name',
                     'course__subject__id',
                     'course__subject__name',
                     'course__course_class__id']


class SubjectAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'credit',
                    'midterm_percent', 'final_percent']
    list_display_links = ['id', 'name']
    list_filter = ['credit', 'midterm_percent', 'final_percent']
    list_per_page = 15
    search_fields = ['id', 'name']


class FacultyAdmin(admin.ModelAdmin):
    list_display = ['id', 'name']
    list_display_links = ['id', 'name']
    list_per_page = 15
    search_fields = ['id', 'name']


class ClassAdmin(admin.ModelAdmin):
    list_display = ['id', 'faculty']
    list_display_links = ['id', 'faculty']
    list_per_page = 15
    search_fields = ['id', 'faculty']


class TopicAdmin(admin.ModelAdmin):
    list_display = ['title', 'course', 'author']
    list_display_links = ['title']
    list_per_page = 15
    search_fields = ['title', 'course', ]


admin.site.site_header = 'Student Result Management'
admin.site.register(User, UserAdmin)
admin.site.register(Subject, SubjectAdmin)
admin.site.register(Faculty, FacultyAdmin)
admin.site.register(Class, ClassAdmin)
admin.site.register(Course, CourseAdmin)
admin.site.register(Mark, MarkAdmin)
admin.site.register(MarkDetail)
admin.site.register(Topic, TopicAdmin)
admin.site.register(Comment)
admin.site.register(Student)
admin.site.register(Teacher)
