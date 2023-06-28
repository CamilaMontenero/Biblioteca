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
$puntaje_calificacion = $_POST['puntaje_calificacion'];

// Insertar los datos en la tabla calificacion
$sql = "INSERT INTO calificacion (puntaje_calificacion) VALUES ('$puntaje_calificacion')";

if ($conn->query($sql) === TRUE) {
    echo "Calificación guardada exitosamente";
} else {
    echo "Error al guardar la calificación: " . $conn->error;
}

$conn->close();
?>
