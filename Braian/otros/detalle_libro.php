<?php
// Verificar si se proporcionó un ID de libro en la URL
if (isset($_GET['id'])) {
    $libro_id = $_GET['id'];

    // Conexión a la base de datos
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "libreria2";

    $conn = new mysqli($servername, $username, $password, $dbname);
    if ($conn->connect_error) {
        die("Error de conexión a la base de datos: " . $conn->connect_error);
    }

    // Consulta SQL para obtener la información del libro específico
    $sql = "SELECT * FROM caracteristicas_libros WHERE libro_id = $libro_id";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Mostrar los detalles del libro
        $row = $result->fetch_assoc();
        echo "<h2>Detalles del libro</h2>";
        echo "<p>Libro ID: " . $row['libro_id'] . "</p>";
        echo "<p>Autor: " . $row['autor'] . "</p>";
        echo "<p>Género: " . $row['genero'] . "</p>";
        echo "<p>Sinopsis: " . $row['sinopsis'] . "</p>";
    } else {
        echo "No se encontró información del libro.";
    }

    // Cerrar la conexión a la base de datos
    $conn->close();
} else {
    echo "No se proporcionó un ID de libro.";
}
?>
