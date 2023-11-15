$(document).ready(function() {
    // Selecciona el botón del navbar-toggler y el navbar-collapse
    var navbarToggler = $('.navbar-toggler');
    var navbarCollapse = $('.navbar-collapse');

    // Agrega un evento de clic al botón del navbar-toggler
    navbarToggler.on('click', function() {
        // Alternar la clase 'show' en el navbar-collapse
        navbarCollapse.toggleClass('show');
    });

    // Cierra el navbar-collapse cuando se hace clic en un enlace dentro de él
    $('.navbar-nav a').on('click', function() {
        navbarCollapse.removeClass('show');
    });
});