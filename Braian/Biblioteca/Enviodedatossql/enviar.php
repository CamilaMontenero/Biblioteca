<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Obtener los valores enviados desde el formulario
$titulo = $_POST['titulo'];
$autor_id = $_POST['autor_id'];
$categoria_id = $_POST['categoria_id'];
$descripcion = $_POST['descripcion'];
$anio = $_POST['anio'];
$enlace_pdf = $_POST['enlace_pdf'];

// Aquí puedes realizar cualquier acción adicional, como almacenar los datos en una base de datos

// Redirigir a una página de confirmación
header("Location: confirmacion.html");
exit;
?>
