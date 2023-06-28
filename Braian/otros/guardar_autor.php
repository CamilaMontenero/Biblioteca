<?php
// Establecer la conexión con la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "libreria2";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Obtener los datos del formulario
$nombre_autor = $_POST['nombre_autor'];
$libros_autor = $_POST['libros_autor'];

// Insertar los datos en la tabla autor
$sql = "INSERT INTO autor (nombre_autor, libros_autor) VALUES ('$nombre_autor', '$libros_autor')";

if ($conn->query($sql) === TRUE) {
    echo "Autor guardado exitosamente";
} else {
    echo "Error al guardar el autor: " . $conn->error;
}

$conn->close();
?>
