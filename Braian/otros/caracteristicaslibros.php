<?php
$usuario = "root";
$clave = "";
$servidor = "127.0.0.1";
$base = "libreria2";

// Paso 1: Conexión a la base de datos
$conexion = mysqli_connect($servidor, $usuario, $clave, $base);

if (!$conexion) {
  die("Error de conexión: " . mysqli_connect_error());
}

// Paso 2: Obtén los libros de la base de datos
$query = "SELECT id_libros, autor_libros, genero_libro, sinopsis_libro FROM libros";
$result = mysqli_query($conexion, $query);

if (!$result) {
  die("Error en la consulta: " . mysqli_error($conexion));
}

// Paso 3: Itera sobre los libros y guarda las características en la tabla "caracteristicas_libros"
while ($row = mysqli_fetch_assoc($result)) {
  $libroId = $row['id_libros'];
  $autor = $row['autor_libros'];
  $genero = $row['genero_libro'];
  $sinopsis = $row['sinopsis_libro'];

  // Inserta las características en la tabla "caracteristicas_libros"
  $insertQuery = "INSERT INTO caracteristicas_libros (libro_id, autor, genero, sinopsis)
                  VALUES ('$libroId', '$autor', '$genero', '$sinopsis')";
  $insertResult = mysqli_query($conexion, $insertQuery);

  if (!$insertResult) {
    die("Error al insertar características: " . mysqli_error($conexion));
  }
}

// Cierra la conexión
mysqli_close($conexion);
?>
