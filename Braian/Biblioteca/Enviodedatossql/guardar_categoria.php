<?php
// Configuración de la conexión a la base de datos
$host = "localhost";
$dbname = "biblioteca";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Obtener el nombre de la categoría del formulario
    $nombreCategoria = $_POST['nombre'];

    // Insertar la categoría en la tabla "Categorias"
    $stmt = $conn->prepare("INSERT INTO Categorias (Nombre) VALUES (:nombre)");
    $stmt->bindParam(':nombre', $nombreCategoria);
    $stmt->execute();

    echo "Categoría guardada exitosamente";

} catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}

$conn = null;
?>
