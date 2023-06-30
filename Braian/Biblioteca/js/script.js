document.addEventListener('DOMContentLoaded', function() {
    // Obtener la referencia al botón de alternancia de tema
    const themeToggle = document.getElementById('theme-toggle');

    // Agregar un evento de clic al botón
    themeToggle.addEventListener('click', function() {
        // Alternar la clase 'dark-theme' en el elemento body
        document.body.classList.toggle('dark-theme');
    });
});