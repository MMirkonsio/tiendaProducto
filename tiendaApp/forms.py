from django import forms
from .models import Producto, Categoria
from django.core.exceptions import ValidationError

from django import forms
from .models import Producto

class ProductoForm(forms.ModelForm):
    class Meta:
        model = Producto
        fields = ['nombre', 'descripcion', 'precio', 'id', 'foto']

    def clean_precio(self):
        precio = str(self.cleaned_data['precio'])
        # Reemplazar la coma con un punto y convertir a Decimal
        precio = precio.replace(',', '.')
        return precio



class CategoriaForm(forms.ModelForm):
    class Meta:
        model = Categoria
        fields = '__all__'