# Generated by Django 3.2.15 on 2023-04-03 22:05

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('login', '0010_bookings_timelength'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='bookings',
            name='timelength',
        ),
    ]