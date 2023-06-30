const starContainer = document.querySelector('.star-rating');
const stars = starContainer.querySelectorAll('.star');
let selectedRating = 0;

// Función para resaltar las estrellas al pasar el cursor sobre ellas
function highlightStars(rating) {
  stars.forEach((star, index) => {
    if (index < rating) {
      star.classList.add('filled');
    } else {
      star.classList.remove('filled');
    }
  });
}

// Función para establecer la puntuación seleccionada
function setRating(rating) {
  selectedRating = rating;
}

// Evento al pasar el cursor sobre las estrellas
starContainer.addEventListener('mouseover', (event) => {
  const star = event.target;
  const rating = parseInt(star.dataset.rating);

  highlightStars(rating);
});

// Evento al hacer clic en una estrella
starContainer.addEventListener('click', (event) => {
  const star = event.target;
  const rating = parseInt(star.dataset.rating);

  setRating(rating);
});

// Evento al retirar el cursor de las estrellas
starContainer.addEventListener('mouseout', () => {
  highlightStars(selectedRating);
});
