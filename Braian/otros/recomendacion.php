<?php
$usuario = "root";
$clave = "";
$servidor = "127.0.0.1";
$base = "libreria2";

$conexion = mysqli_connect($servidor, $usuario, $clave, $base);

if (!$conexion) {
    die("Error de conexión: " . mysqli_connect_error());
}
function obtenerLibrosRecomendados($libroId) {
    // Consulta SQL para obtener las características del libro dado
    $consultaCaracteristicas = "SELECT * FROM caracteristicas_libros WHERE id_libros = $libroId";
    $resultadoCaracteristicas = mysqli_query($conexion, $consultaCaracteristicas);
    $caracteristicas = mysqli_fetch_assoc($resultadoCaracteristicas);

    // Consulta SQL para calcular la similitud y obtener libros similares
    $consultaRecomendacion = "SELECT l.* FROM libros l
                              JOIN caracteristicas_libros cl ON l.id_libros = cl.id_libros
                              WHERE l.id_libros != $libroId
                              ORDER BY SIMILARITY(cl.autor_libros, '$caracteristicas[autor_libros]')
                              DESC LIMIT 5";
    $resultadoRecomendacion = mysqli_query($conexion, $consultaRecomendacion);
    $librosRecomendados = mysqli_fetch_all($resultadoRecomendacion, MYSQLI_ASSOC);

    return $librosRecomendados;
}
?>
