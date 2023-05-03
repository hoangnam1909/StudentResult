from django.shortcuts import render
from django.core.mail import send_mail, EmailMultiAlternatives
from django.conf import settings

from django.contrib.sites.shortcuts import get_current_site

from django.template.loader import render_to_string
from django.utils.html import strip_tags

from django.utils.encoding import force_bytes, force_str
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode

from rest_framework.authtoken.models import Token
from .token import *


def send_verify_email(request, user):
    uid = urlsafe_base64_encode(force_bytes(user.id))
    token = account_activation_token.make_token(user)

    html_content = render_to_string("email_template.html",
                                    {"title": "title ne",
                                     "verify_link": request.build_absolute_uri(
                                         '/user/verify/?uid64={uid}&token={token}'.format(uid=uid, token=token))})
    text_content = strip_tags(html_content)

    email = EmailMultiAlternatives(
        # subject
        "Verify your email",
        # content
        text_content,
        # from email
        settings.EMAIL_HOST_USER,
        # rec list
        [user.email, ]
    )

    email.attach_alternative(html_content, "text/html")
    email.send()


def send_mark_email(request, course, email_list):
    html_content = render_to_string("mark_notification.html",
                                    {"subject_name": course,
                                     "verify_link": request.build_absolute_uri(
                                         '/course/verify/')})
    text_content = strip_tags(html_content)

    email = EmailMultiAlternatives(
        # subject
        "Thông báo có điểm",
        # content
        text_content,
        # from email
        settings.EMAIL_HOST_USER,
        # rec list
        email_list
    )

    email.attach_alternative(html_content, "text/html")
    email.send()
