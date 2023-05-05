import pytz
import numpy as np

local_tz = pytz.timezone('Etc/GMT-7')


def utc_to_local(utc_dt):
    local_dt = utc_dt.replace(tzinfo=pytz.utc).astimezone(local_tz)
    return local_tz.normalize(local_dt)


def errors_to_json(errors):
    errors_dict = {}
    for field_name, field_errors in errors.items():
        errors_dict[field_name] = field_errors[0]
    return errors_dict


def calculate_mark(course, midterm_marks, final_mark):
    midterm = 0 if len(midterm_marks) == 0 else midterm_marks
    final = 0 if len(final_mark) == 0 else final_mark[0]

    mark_s10 = np.average(midterm) * course.subject.midterm_percent + final * course.subject.final_percent
    mark_s10 /= 100
    mark_s4 = mark_s10 * 4 / 10

    return round(mark_s4, 2), round(mark_s10, 2)
