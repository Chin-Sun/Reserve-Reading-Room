# Generated by Django 3.2.15 on 2023-04-03 21:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('login', '0009_auto_20230323_0027'),
    ]

    operations = [
        migrations.AddField(
            model_name='bookings',
            name='timelength',
            field=models.IntegerField(choices=[(1, '1 hour'), (2, '2 hours'), (3, '3 hours'), (4, '4 hours'), (5, '5 hours')], default=1, verbose_name='timeLength'),
        ),
    ]
