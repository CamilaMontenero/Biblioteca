// script.js
document.addEventListener('DOMContentLoaded', function() {
    // Obtener la referencia al elemento de fecha
    const dateElement = document.getElementById('date');

    // Obtener la fecha actual
    const currentDate = new Date();

    // Formatear la fecha en el formato deseado (ejemplo: "28 de junio de 2023")
    const formattedDate = currentDate.toLocaleDateString('es-ES', { day: 'numeric', month: 'long', year: 'numeric' });

    // Mostrar la fecha en el elemento correspondiente
    dateElement.textContent = formattedDate;
});
