const natural = require('natural');
const mysql = require('mysql');

// Paso 1: Conexión a la base de datos
const connection = mysql.createConnection({
  host: '127.0.0.1',
  user: 'root',
  password: '',
  database: 'libreria2'
});

connection.connect();

// Paso 2: Obtén los textos relevantes de los libros
const query = 'SELECT id_libros, autor_libros, genero_libro, sinopsis_libro FROM libros';
connection.query(query, function (error, results) {
  if (error) throw error;

  const libros = results;

  // Paso 3: Crea una lista de textos
  const textos = [];
  const libroIds = [];
  libros.forEach((libro) => {
    const libroId = libro.id_libros;
    const autor = libro.autor_libros;
    const genero = libro.genero_libro;
    const sinopsis = libro.sinopsis_libro;
    const texto = `${autor} ${genero} ${sinopsis}`;
    textos.push(texto);
    libroIds.push(libroId);
  });

  // Paso 4: Calcula la similitud del coseno
  const tfidf = new natural.TfIdf();
  textos.forEach((texto) => {
    tfidf.addDocument(texto);
  });

  const similarityMatrix = [];
  textos.forEach((texto) => {
    const similarityRow = [];
    textos.forEach((otherText) => {
      const similarity = tfidf.tfidfSimilarity(texto, otherText);
      similarityRow.push(similarity);
    });
    similarityMatrix.push(similarityRow);
  });

  // Paso 5: Almacena los resultados en la base de datos
  similarityMatrix.forEach((row, i) => {
    const libroId = libroIds[i];
    const similitudes = row.join(',');

    // Actualiza la tabla "caracteristicas_libros" con las similitudes
    const updateQuery = `UPDATE caracteristicas_libros SET similitudes='${similitudes}' WHERE libro_id=${libroId}`;
    connection.query(updateQuery, function (error, results) {
      if (error) throw error;
    });
  });

  // Paso 6: Cierra la conexión
  connection.end();
});

document.getElementById("btn-recomendar").addEventListener("click", function() {
  // Aquí puedes llamar a la función de recomendación en JavaScript
  obtenerRecomendacion(libroId); // Reemplaza "libroId" con el ID del libro actual
});
  
function obtenerRecomendacion(libroId) {
  $.ajax({
    url: './otros/recomendacion.php',
    method: 'POST',
    data: { libroId: libroId },
    success: function(response) {
      // Manipula la respuesta y muestra los resultados en la página
      console.log(response);
    },
    error: function(xhr, status, error) {
      // Maneja cualquier error que ocurra durante la llamada AJAX
    }
  });
}

// Ejemplo de llamada a la función de recomendación
obtenerRecomendacion(1); // Pasa el ID del libro seleccionado como parámetro
