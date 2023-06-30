<?php
// Configuración de la conexión a la base de datos
$host = "localhost";
$dbname = "biblioteca";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Obtener el nombre del autor del formulario
    $nombreAutor = $_POST['nombre'];

    // Insertar el autor en la tabla "Autores"
    $stmt = $conn->prepare("INSERT INTO Autores (Nombre) VALUES (:nombre)");
    $stmt->bindParam(':nombre', $nombreAutor);
    $stmt->execute();

    echo "Autor guardado exitosamente";

} catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}

$conn = null;
?>
