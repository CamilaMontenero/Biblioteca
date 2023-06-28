<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="prefereciasc.css">
    <title>Libreria.web.preferencias</title>
    <link rel="shortcut icon" href="libros.png" type="image/x-icon">
</head>
<body>
<?php
  include "conexionlibreria.php";
?>
    <div class="titulo">
        <h1>Tus preferencias en libros</h1>
    </div>
    <br>
    <br>
    <h2>Empecemos por lo importante, ¿qué género de libros te gustan?</h2>
    <select name="genero">
        <?php
        $querygenero = "SELECT * FROM genero ORDER BY nombre_genero";

        $resultadogenero = mysqli_query($conexion, $querygenero);

        $fila = mysqli_num_rows($resultadogenero);
        
        if ($fila > 0) {
            while ($registrogenero = mysqli_fetch_array($resultadogenero)) {
                echo '<option value="'.$registrogenero[0].'">'.$registrogenero[1].'</option>';
            }
        } else {
            echo '<option>Sin datos</option>';
        }
        ?>
    </select>

    <br>

    <h2>¿Hay algún autor que te interese más que los otros?</h2>
    <select name="autor">
        <?php
        $queryautor = "SELECT * FROM autor ORDER BY nombre_autor";

        $resultadoautor = mysqli_query($conexion, $queryautor);

        $fila = mysqli_num_rows($resultadoautor);
        
        if ($fila > 0) {
            while ($registroautor = mysqli_fetch_array($resultadoautor)) {
                echo '<option value="'.$registroautor[0].'">'.$registroautor[1].'</option>';
            }
        } else {
            echo '<option>Sin datos</option>';
        }
        ?>
    </select>

</body>
</html>
