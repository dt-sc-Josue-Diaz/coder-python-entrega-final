from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import AuthenticationForm, UserCreationForm
from .models import Empleado, Tarea, Reporte


# Formulario para login
class CustomLoginForm(AuthenticationForm):
    username = forms.CharField(label='Usuario', max_length=100, widget=forms.TextInput(
        attrs={'placeholder': 'Nombre de usuario'}))
    password = forms.CharField(label='Contraseña', widget=forms.PasswordInput(
        attrs={'placeholder': 'Contraseña'}))

    def clean_username(self):
        username = self.cleaned_data['username']
        if not User.objects.filter(username=username).exists():
            raise forms.ValidationError("El usuario no existe.")
        return username


# Formulario de login personalizado
class CustomLoginForm(AuthenticationForm):
    username = forms.CharField(label='Usuario', max_length=100)
    password = forms.CharField(label='Contraseña', widget=forms.PasswordInput)

# Formulario de registro personalizado


class CustomUserCreationForm(UserCreationForm):
    username = forms.CharField(label='Nombre de usuario', max_length=100)
    email = forms.EmailField(label='Correo electrónico')
    password1 = forms.CharField(label='Contraseña', widget=forms.PasswordInput)
    password2 = forms.CharField(
        label='Confirmar Contraseña', widget=forms.PasswordInput)

    class Meta:
        model = User
        fields = ['username', 'email', 'password1', 'password2']


class EmpleadoForm(forms.ModelForm):
    class Meta:
        model = Empleado
        fields = '__all__'


class TareaForm(forms.ModelForm):
    class Meta:
        model = Tarea
        fields = '__all__'


class ReporteForm(forms.ModelForm):
    class Meta:
        model = Reporte
        fields = '__all__'
