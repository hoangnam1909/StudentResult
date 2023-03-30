import pytz

local_tz = pytz.timezone('Etc/GMT-7')


def utc_to_local(utc_dt):
    local_dt = utc_dt.replace(tzinfo=pytz.utc).astimezone(local_tz)
    return local_tz.normalize(local_dt)


def errors_to_json(errors):
    errors_dict = {}
    for field_name, field_errors in errors.items():
        errors_dict[field_name] = field_errors[0]
    return errors_dict
