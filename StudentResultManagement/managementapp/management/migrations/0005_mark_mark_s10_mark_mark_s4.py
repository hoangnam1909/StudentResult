# Generated by Django 4.1.7 on 2023-05-03 08:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('management', '0004_remove_course_locked'),
    ]

    operations = [
        migrations.AddField(
            model_name='mark',
            name='mark_s10',
            field=models.FloatField(default=0),
        ),
        migrations.AddField(
            model_name='mark',
            name='mark_s4',
            field=models.FloatField(default=0),
        ),
    ]