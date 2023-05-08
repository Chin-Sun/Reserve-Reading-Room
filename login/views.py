from django.shortcuts import render, HttpResponseRedirect

from login.models import *


# Create your views here.
def login(request):
    if request.method == 'POST':
        name = request.POST['name']
        password = request.POST['password']
        try:
            stu = Students.objects.filter(name=name, password=password)
        except Exception as e:
            print(e)
        if stu:
            try:
                name = Students.objects.get(name=name, password=password)
            except Exception as e:
                print(e)
            name = request.session['name'] = {"name": name.name, "photo": str(name.photo)}
            return HttpResponseRedirect('/')
        else:
            msg = "Sorry, the account with this keycode was not found."
            return render(request, 'login/login.html', {"msg": msg})
    else:
        return render(request, 'login/login.html')


def reginter(request):
    if request.method == 'POST':
        name = request.POST['name']
        password = request.POST['password']
        phone = request.POST['phone']
        email = request.POST['email']
        photo = request.FILES.get('photo')
        try:
            stu = Students.objects.filter(is_active=True, name=name)
        except Exception as e:
            print(e)
        if stu:
            msg = 'this user already exists！'
            return render(request, 'login/register.html', {"msg": msg})
        else:
            try:
                stu = Students.objects.create(
                    name=name,
                    password=password,
                    phone=phone,
                    email=email,
                    photo=photo
                )
            except Exception as e:
                print(e)
            msg = "Register successfully！"
            return render(request, 'login/login.html', {"msg": msg})

    return render(request, 'login/register.html')


def pswd_update(request):
    if request.method == "POST":
        name = request.session['name']
        password_1 = request.POST["password_1"]
        password_2 = request.POST["password_1"]

        try:
            stu = Students.objects.get(name=name['name'])
        except Exception as e:
            print(e)
        if stu.password == password_1:
            stu.password = password_2
            stu.save()
            return HttpResponseRedirect("/login/")
        else:
            msg = "Sorry, the account with this keycode was not found！"
            return render(request, 'login/pswd_update.html', {"msg": msg})
    else:
        return render(request, 'login/pswd_update.html')


def logout(request):
    if 'name' in request.session:
        del request.session['name']

    return HttpResponseRedirect('/login/')


def index(request):
    try:
        text = Text.objects.filter(is_active=True).order_by('time')
    except Exception as e:
        print(e)
    return render(request, 'index/index.html', {"text": text})
