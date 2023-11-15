from django.http import JsonResponse
from django.shortcuts import get_object_or_404, render, redirect
from .forms import ProductoForm
from .models import Categoria, Producto
from .forms import ProductoForm, CategoriaForm
from django.contrib import messages








def home(request):
    categorias = Categoria.objects.all()
    data = {
        'categorias': categorias
    }
    return render(request, 'home.html', data)



def category(request, categoria_id): 
    categoria = Categoria.objects.get(id=categoria_id)
    tipos_de_categoria = Producto.objects.filter(categoria=categoria)

    data = {
        'categoria': categoria,
        'tipos_de_categoria': tipos_de_categoria,
        'categoria_id': categoria_id,  
    }
    return render(request, 'category.html', data)

def producto_edit_view(request, producto_id):
    producto = get_object_or_404(Producto, id=producto_id)
    categoria = get_object_or_404(Categoria, id=producto.categoria.id)

    if request.method == 'POST':
        form = ProductoForm(request.POST, request.FILES, instance=producto)
        if form.is_valid():
            producto = form.save()
            return redirect('Categoria', categoria_id=categoria.id)

    else:
        form = ProductoForm(instance=producto)

    return render(request, 'producto_edit.html', {'form': form, 'producto': producto, 'categoria': categoria})









def agregar_producto(request, categoria_id):
    print("Categoria ID:", categoria_id)  # Agrega esta línea para imprimir en la consola
    categoria = get_object_or_404(Categoria, id=categoria_id)

    if request.method == 'POST':
        form = ProductoForm(request.POST, request.FILES)

        if form.is_valid():
            # Lógica para guardar un nuevo producto
            producto = form.save(commit=False)
            producto.categoria = categoria
            producto.save()
            
            # Redirige a la vista 'Categoria' con el parámetro de categoría
            return redirect('Categoria', categoria_id=categoria_id)
    else:
        form = ProductoForm()

    return render(request, 'agregar_producto.html', {'form': form, 'categoria': categoria})





def producto_delete(request, producto_id):
    producto = get_object_or_404(Producto, id=producto_id)
    categoria_id = producto.categoria.id  # Guarda la categoría an  liminar el producto
    producto.delete()

    # Redirige a la vista 'Categoria' con el parámetro de categorí  
    return redirect('Categoria', categoria_id=categoria_id)


def category_view(request, categoria_id):
    categoria = Categoria.objects.get(pk=categoria_id)
    tipos_de_categoria = Producto.objects.filter(categoria=categoria)

    # Obtener el término de búsqueda del formulario
    search_query = request.GET.get('search', '')

    # Filtrar los productos por el término de búsqueda
    if search_query:
        tipos_de_categoria = tipos_de_categoria.filter(nombre__icontains=search_query)
        
        if not tipos_de_categoria.exists():
            messages.info(request, f"No se encontraron resultados para la búsqueda '{search_query}'.")

    return render(request, 'category.html', {'categoria': categoria, 'tipos_de_categoria': tipos_de_categoria})
















