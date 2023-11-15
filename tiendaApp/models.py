from django.db import models

class Categoria(models.Model):
    nombre = models.CharField(max_length=100)
    foto = models.ImageField(upload_to='static/images/', blank=True, null=True)
    descripcion = models.TextField()

    def __str__(self):
        return self.nombre

    class Meta:
        db_table = 'categoria'
        verbose_name = 'Categoria'
        verbose_name_plural = 'Categorias'


class Producto(models.Model):
    nombre = models.CharField(max_length=100)
    descripcion = models.TextField()
    categoria = models.ForeignKey(Categoria, on_delete=models.CASCADE)
    foto = models.ImageField(upload_to='static/images/', blank=True, null=True)
    precio = models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return self.nombre

    class Meta: 
        db_table = 'producto'
        verbose_name = 'Producto'
        verbose_name_plural = 'Productos'
