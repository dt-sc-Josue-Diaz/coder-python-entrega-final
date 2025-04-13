from django.urls import path
from django.contrib.auth import views as auth_views
from . import views
from .views import EmpleadoListView, TareaListView, ReporteListView, about_view

urlpatterns = [
    path('', views.home, name='home'),
    path('about/', about_view, name='about'),
    path('login/', auth_views.LoginView.as_view(), name='login'),
    path('logout/', views.logout_view, name='logout'),
    path('logged_out/', views.logged_out_view, name='logged_out'),
    path('logged_out/', views.logged_out_view, name='logged_out'),
    path('register/', views.register_view, name='register'),
    path('empleados/', EmpleadoListView.as_view(), name='empleado_list'),
    path('tareas/', TareaListView.as_view(), name='tarea_list'),
    path('reportes/', ReporteListView.as_view(), name='reporte_list'),
]
