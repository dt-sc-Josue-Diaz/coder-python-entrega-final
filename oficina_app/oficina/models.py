# oficina/models.py
from django.db import models


class Empleado(models.Model):
    nombre = models.CharField(max_length=100)
    puesto = models.CharField(max_length=100)
    correo = models.EmailField(default='correo@temporal.com')


class Tarea(models.Model):
    titulo = models.CharField(max_length=100)
    descripcion = models.TextField()
    responsable = models.ForeignKey(Empleado, on_delete=models.CASCADE)


class Reporte(models.Model):
    titulo = models.CharField(max_length=100)
    contenido = models.TextField()
    fecha = models.DateField()
