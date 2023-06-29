<?php
// Conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "libreria2";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Error de conexión a la base de datos: " . $conn->connect_error);
}

// Consulta SQL para obtener la información de los libros
$sql = "SELECT * FROM caracteristicas_libros";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Mostrar los datos de cada libro
    while ($row = $result->fetch_assoc()) {
        echo "<h2>Libro ID: " . $row['libro_id'] . "</h2>";
        echo "<p>Autor: " . $row['autor'] . "</p>";
        echo "<p>Género: " . $row['genero'] . "</p>";
        echo "<p>Sinopsis: " . $row['sinopsis'] . "</p>";
        echo "<a href='detalle_libro.php?id=" . $row['libro_id'] . "'>Ver más detalles</a>";
        echo "<hr>";
    }
} else {
    echo "No se encontraron libros.";
}

// Cerrar la conexión a la base de datos
$conn->close();
?>
