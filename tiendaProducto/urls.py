"""
URL configuration for tiendaProducto project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import include, path
from tiendaApp import views 

app_name = 'tiendaApp'

urlpatterns = [
    path('admin/', admin.site.urls),  # Acceso a la página de administración
    path('', views.home, name='Home'),  # Acceso a la aplicación en la raíz
    path('productosList/<int:categoria_id>/', views.category, name='Categoria'),
    path('filtro/<int:categoria_id>/', views.category_view, name='category_view'),
    path('agregar_producto/<int:categoria_id>/', views.agregar_producto, name='agregar_producto'),
    path('producto_edit/<int:producto_id>/', views.producto_edit_view, name='producto_edit_view'),
    path('producto_delete/<int:producto_id>/', views.producto_delete, name='producto_delete'),

]
