from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('empleados/', views.lista_empleados, name='lista_empleados'),
    path('proyectos/', views.lista_proyectos, name='lista_proyectos'),
    path('tareas/', views.lista_tareas, name='lista_tareas'),
]
