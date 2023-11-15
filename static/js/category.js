// category.js
$(document).ready(function() {
    var searchForm = $('#searchForm');
    var searchInput = $('#searchInput');
    var productosTableBody = $('#productos-table tbody');

    searchInput.on('input', function() {
        // Obtener el valor del campo de búsqueda
        var searchTerm = searchInput.val();

        // Enviar la solicitud AJAX de forma asíncrona
        $.ajax({
            type: 'GET',
            url: searchForm.attr('action'),
            data: { 'search': searchTerm },
            async: true,  // Hacer la solicitud asíncrona
        })
        .done(function(response) {
            // Actualizar el cuerpo de la tabla con la respuesta de la búsqueda
            productosTableBody.html(response);

            // Limpiar el mensaje de "No se encontraron resultados" si existe
            var noResultsRow = productosTableBody.find('tr.no-results');
            if (noResultsRow.length > 0) {
                noResultsRow.remove();
            }

            // Mostrar el mensaje solo cuando no hay resultados y se está realizando una búsqueda
            if (searchTerm && response.trim() === '') {
                productosTableBody.append('<tr class="no-results"><td colspan="5">No se encontraron resultados para la búsqueda "' + searchTerm + '"</td></tr>');
            }
        })
        .fail(function(error) {
            console.log('Error en la solicitud AJAX:', error);
        });
    });
});
