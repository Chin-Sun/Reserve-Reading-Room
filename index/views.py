# from django.utils import timezone
from django.shortcuts import render, HttpResponseRedirect, redirect
from django.utils import timezone

from login.models import *


# Create your views here.



def bookings(request):
    try:
        room = Rooms.objects.filter(is_active=True)

    except Exception as e:
        print(e)

    return render(request, 'index/Bookings.html', {"room": room})


def seat(request, id):
    try:
        room = Rooms.objects.get(id=id)
        rooms = Rooms.objects.filter(is_active=True)
    except Exception as e:
        print(e)
    if request.method == "GET":
        room_selected = request.GET.get('room_id')
        if room_selected:

            time_selected_r = int(request.GET.get('day'))  # 日期
            time_selected_s = int(request.GET.get('time'))  # 时间
            # time_selected_l = int(request.GET.get('time'))

            # 日期判断
            d1 = timezone.now()
            time = int(d1.day)
            if time_selected_r == 1:
                time = time
            elif time_selected_r == 2:
                time = time + 1
            # print(time)
            try:
                room_1 = Rooms.objects.get(id=room_selected)
                booking = Bookings.objects.filter(
                    time__day=time,
                    period=time_selected_s,
                    # timelength=time_selected_l,
                    room_id=room_1,
                    is_active=True)

            except Exception as e:
                print(e)
            seat_list = []
            for i in range(room.number + 1):
                seat_list.append(i)
            seat_list.remove(0)
            print("booking list:", booking.values_list())
            for i in booking:
                # print("座位号", i.id)
                seat_list.remove(int(i.number))
            return render(request, 'index/seat_id.html', {"room": room,
                                                          "rooms": rooms,
                                                          "seat": seat_list,
                                                          "room_id": room_selected,  # 选择上页自习室一致
                                                          "time_selected_r": time_selected_r,
                                                          "time_selected_s": time_selected_s,
                                                          # "time_selected_l": time_selected_l,
                                                          "room_1": room_1.name,
                                                                                                          })
        else:
            return render(request, 'index/seat.html', {"room": room,
                                                       "rooms": rooms,
                                                       "room_id": room.id,

                                                       })
    elif request.method == 'POST':
        room_1 = request.POST['room']
        number = request.POST['number']
        period = request.POST['time']
        # timelength = request.POST['timeLength']
        name = request.session.get("name")
        name = name['name']
        day = request.POST['day']
        # print(room, number, period, day, name)
        # 日期判断
        d1 = timezone.now()
        time = int(d1.day)
        if day == 1:
            day = time
        elif day == 2:
            day = time + 1

        # 判断本人有没有已经预约了座位
        name = request.session.get('name')
        name = name['name']
        try:
            student = Students.objects.get(name=name)
            book = Bookings.objects.filter(
                students_id=student.id,
                time__day=time,
                period=period,
                # timelength=timelength,
                is_active=True)

        except Exception as e:
            print(e)
        if book:
            msg = "alert"
            return render(request, 'index/seat.html', {"rooms": rooms, "room": room, "room_id": room.id, "msg": msg})
        else:
            try:
                student = Students.objects.get(name=name)
                booking = Bookings.objects.create(
                    students=student,
                    number=number,
                    room_id=room_1,
                    period=period,
                    # timelength=timelength

                    )
            except Exception as e:
                print(e)
            return HttpResponseRedirect('/index/recording/')


def instructor(request):
    return render(request, 'index/instructor.html')

def Nonclass(request):
    return render(request, 'index/Nonclass.html')

def recording(request):
    student = request.session.get('name')
    student = student['name']
    id = request.GET.get('id')
    if id:
        try:
            booking = Bookings.objects.get(id=id)
        except Exception as e:
            print(e)
        booking.is_active = False
        booking.save()
        return HttpResponseRedirect("/index/recording/")
    try:
        student = Students.objects.get(name=student).id
        booking = Bookings.objects.filter(is_active=True, students_id=student).order_by('-time')
    except Exception as e:
        print(e)

    # 日期判断
    d1 = timezone.now()
    day = int(d1.day)
    return render(request, 'index/Recording.html', {"booking": booking, "day": day})


def warn(request):
    student = request.session.get('name')
    student = student['name']
    try:
        student = Students.objects.get(name=student)
        integrals = Integrals.objects.filter(is_active=True, student_id=student.id)
    except Exception as e:
        print(e)

    return render(request, 'index/warn.html', {"integrals": integrals})
