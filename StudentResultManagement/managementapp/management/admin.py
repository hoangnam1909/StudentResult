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
                  'last_name', 'is_active', 'gender', 'avatar']
        widgets = {
            'password': PasswordInput(),
        }

    # def save(self, commit=True):
    #     user = super(UserForm, self).save(commit=False)
    #     user.set_password(user.username)
    #     user.save(update_fields=['username', 'password', 'email', 'first_name',
    #                              'last_name', 'is_active', 'gender', 'avatar'])
    #     return user


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

    def save_model(self, request, obj, form, change):
        if obj.password is not None:
            obj.set_password(request.user.password)
        super().save_model(request, obj, form, change)


class TeacherInlineAdmin(admin.StackedInline):
    model = Teacher
    fk_name = 'user'
    max_num = 1


class TeacherUser(User):
    class Meta:
        proxy = True


class TeacherUserAdmin(admin.ModelAdmin):
    form = UserForm
    inlines = [TeacherInlineAdmin, ]


admin.site.site_header = 'Student Result Management'
admin.site.register(User, UserAdmin)
admin.site.register(TeacherUser, TeacherUserAdmin)
admin.site.register(Student)
admin.site.register(Subject)
admin.site.register(Faculty)
admin.site.register(Class)
admin.site.register(Course)
admin.site.register(Mark)
admin.site.register(MarkDetail)
admin.site.register(Topic)
admin.site.register(Comment)
