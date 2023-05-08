from django.db import models
from django.utils.safestring import mark_safe


# 学生表
class Students(models.Model):
    id = models.AutoField(verbose_name="Number", primary_key=True)
    name = models.CharField(verbose_name="Name", max_length=22, default='')
    password = models.CharField(verbose_name="Password", max_length=32, default='')
    phone = models.CharField(verbose_name="Student_ID", max_length=11, default='')
    email = models.CharField(verbose_name="Email", max_length=22, default='')
    time = models.DateTimeField(verbose_name="Created Time", auto_now_add=True)
    photo = models.FileField(verbose_name="Image", default='', upload_to="Students/photo/")
    # integral = models.IntegerField(verbose_name="积分", default=100)
    is_active = models.BooleanField(verbose_name="Study motivation", default=True)

    def admin_sample(self):
        return mark_safe('<img src="/media/%s" height="60" width="60" />' % (self.photo,))

    admin_sample.short_description = 'Student Image'
    admin_sample.allow_tags = True

    def __str__(self):
        return self.name

    class Meta:
        # 数据库列表名
        db_table = 'Students'
        # 后台管理名
        verbose_name_plural = 'Student Management'

    # def viewed(self):
    #     """
    #     增加阅读数
    #     :return:
    #     """
    #     self.traffic += 1
    #     self.save(update_fields=['traffic'])


# 自习室
class Rooms(models.Model):
    id = models.AutoField(verbose_name="ID", primary_key=True)
    name = models.CharField(verbose_name="Name", max_length=22, default='')
    number = models.IntegerField(verbose_name="The number of seats", default=0)
    photo = models.FileField(verbose_name="Image", default='', upload_to="Room/photo/")
    time = models.DateTimeField(verbose_name="Created Time", auto_now_add=True)
    is_active = models.BooleanField(verbose_name="Activate Status", default=True)

    def admin_sample(self):
        return mark_safe('<img src="/media/%s" height="60" width="60" />' % (self.photo,))

    admin_sample.short_description = 'Student Image'
    admin_sample.allow_tags = True

    def __str__(self):
        return self.name

    class Meta:
        # 数据库列表名
        db_table = 'Room'
        # 后台管理名
        verbose_name_plural = 'Room Management'


# 预约管理
class Bookings(models.Model):
    id = models.AutoField(verbose_name="ID", primary_key=True)
    students = models.ForeignKey(verbose_name="Students", to='Students', null=True, on_delete=models.CASCADE)
    number = models.IntegerField(verbose_name="Reserved Seat Number", default=0)
    room = models.ForeignKey(verbose_name="Rooms", to='Rooms', on_delete=models.CASCADE, null=True)
    # 1.上午 2.下午 3.晚自习
    time_choice = (
        (1, 'Morning'),
        (2, 'Afternoon'),
        (3, 'Evening'),
    )
    period = models.IntegerField(verbose_name="Time", choices=time_choice, default=1)
    # time_length = (
    #     (1, '1 hour'),
    #     (2, '2 hours'),
    #     (3, '3 hours'),
    #     (4, '4 hours'),
    #     (5, '5 hours'),
    # )
    # timelength = models.IntegerField(verbose_name="timeLength", choices=time_length, default=1)
    time = models.DateTimeField(verbose_name="Created Time", auto_now_add=True)
    is_active = models.BooleanField(verbose_name="Activate Status", default=True)

    def __str__(self):
        return self.students.name

    class Meta:
        # 数据库列表名
        db_table = 'Booking'
        # 后台管理名
        verbose_name_plural = 'Booking Management'

    def admin_sample(self):
        return mark_safe('<img src="/media/%s" height="60" width="60" />' % (self.students.photo,))

    admin_sample.short_description = '  Student Image'
    admin_sample.allow_tags = True


# 警告管理
class Integrals(models.Model):
    id = models.AutoField(verbose_name="ID", primary_key=True)
    student = models.ForeignKey(verbose_name="Students", to='Students', on_delete=models.CASCADE)
    # integral = models.IntegerField(verbose_name="扣积分", default=0)
    title = models.CharField(verbose_name="Warning Title", max_length=220, default='')
    text = models.TextField(verbose_name="Warning Content", max_length=220, default='')
    time = models.DateTimeField(verbose_name="Created Time", auto_now_add=True)
    is_active = models.BooleanField(verbose_name="Activate Status", default=True)

    def __str__(self):
        return self.student.name

    class Meta:
        # 数据库列表名
        db_table = 'Integral'
        # 后台管理名
        verbose_name_plural = 'Credit Management'

    def admin_sample(self):
        return mark_safe('<img src="/media/%s" height="60" width="60" />' % (self.student.photo,))

    admin_sample.short_description = ' Student Image'
    admin_sample.allow_tags = True


# 提示管理
class Text(models.Model):
    id = models.AutoField(verbose_name="ID", primary_key=True)
    title = models.CharField(verbose_name="Title", max_length=120, default='')
    text = models.TextField(verbose_name="Content", default='')
    time = models.DateTimeField(verbose_name="Created Time", auto_now_add=True)
    is_active = models.BooleanField(verbose_name="Activate Status", default=True)

    def __str__(self):
        return self.text

    class Meta:
        # 数据库列表名
        db_table = 'Text'
        # 后台管理名
        verbose_name_plural = 'Management Tips'


def __str__(self):
    return self.admin_sample
