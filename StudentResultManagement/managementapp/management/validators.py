from django.core.exceptions import ValidationError
import re


def validate_ou_email(email):
    print('== email validate')
    if len(re.findall(r"^\d{10}[a-z]+@ou.edu.vn$", email)) == 0:
        print('\tinvalid')
        message = "{email} is not an OU email".format(email=email)
        raise ValidationError(message=message)
    print('\tvalid')
    print('==END email validate')
