# oficina_app/views.py
from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from .forms import CustomLoginForm, EmpleadoForm, TareaForm, ReporteForm

from .models import Empleado, Tarea, Reporte
from django.contrib.auth.mixins import LoginRequiredMixin

from django.views.generic import ListView


class EmpleadoListView(LoginRequiredMixin, ListView):
    model = Empleado
    template_name = 'empleados.html'
    context_object_name = 'empleados'


class TareaListView(LoginRequiredMixin, ListView):
    model = Tarea
    template_name = 'tareas.html'
    context_object_name = 'tareas'


class ReporteListView(LoginRequiredMixin, ListView):
    model = Reporte
    template_name = 'reportes.html'
    context_object_name = 'reportes'


def home(request):
    # Asegúrate de tener un archivo home.html
    return render(request, 'home.html')

# Vista para login


# Vista para login
def custom_login(request):
    if request.method == 'POST':
        form = CustomLoginForm(request, data=request.POST)
        if form.is_valid():
            user = form.get_user()
            login(request, user)
            messages.success(request, 'Has iniciado sesión correctamente.')
            # Redirigir al index después de iniciar sesión
            return redirect('index')
        else:
            messages.error(
                request, 'Credenciales incorrectas. Por favor, inténtalo nuevamente.')
    else:
        form = CustomLoginForm()
    return render(request, 'registration/login.html', {'form': form})


# Vista para logout
def logout_view(request):
    logout(request)
    messages.info(request, 'Has cerrado sesión exitosamente.')
    return redirect('logged_out')  # Redirigir al logout page


# Vista para la página de logout (se muestra cuando el usuario cierra sesión)
def logged_out_view(request):
    return render(request, 'registration/logout.html')

# Vista para el registro de nuevos usuarios


def register_view(request):
    if request.method == 'POST':
        form = CustomUserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'Cuenta creada exitosamente.')
            # Redirigir a login después de registrarse
            return redirect('login')
        else:
            messages.error(request, 'Hubo un error al crear la cuenta.')
    else:
        form = CustomUserCreationForm()

    return render(request, 'registration/register.html', {'form': form})


