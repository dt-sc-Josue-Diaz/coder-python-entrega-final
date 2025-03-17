from django.shortcuts import render
from .models import Empleado, Proyecto, Tarea


def home(request):
    return render(request, 'oficina/base.html')


def lista_empleados(request):
    empleados = Empleado.objects.all()
    return render(request, "oficina/empleados.html", {"empleados": empleados})


def lista_proyectos(request):
    proyectos = Proyecto.objects.all()
    return render(request, "oficina/proyectos.html", {"proyectos": proyectos})


def lista_tareas(request):
    tareas = Tarea.objects.all()
    return render(request, "oficina/tareas.html", {"tareas": tareas})
