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
$nombre_genero = $_POST['nombre_genero'];

// Insertar los datos en la tabla genero
$sql = "INSERT INTO genero (nombre_genero) VALUES ('$nombre_genero')";

if ($conn->query($sql) === TRUE) {
    echo "Género guardado exitosamente";
} else {
    echo "Error al guardar el género: " . $conn->error;
}

$conn->close();
?>
