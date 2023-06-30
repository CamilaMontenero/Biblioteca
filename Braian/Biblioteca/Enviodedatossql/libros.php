<!DOCTYPE html>
<html>
<head>
    <title>Envío de información</title>
    <link rel="stylesheet" href="styles.css">
    <script>
        function limpiarFormulario() {
            document.getElementById("formulario").reset();
        }
    </script>
</head>
<body>
    <h1>Formulario de envío</h1>
    <form id="formulario" action="../enviodedatossql/enviar.php" method="POST">
        <label for="titulo">Título:</label>
        <input type="text" name="titulo" id="titulo" required><br>


        <label for="autor">Autor:</label>
        <select name="autor_id" id="autor_id" required>
            <?php
            // Conexión a la base de datos (cambiar los valores según tu configuración)
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "biblioteca";

            // Crear la conexión
            $conn = new mysqli($servername, $username, $password, $dbname);

            // Verificar la conexión
            if ($conn->connect_error) {
                die("Conexión fallida: " . $conn->connect_error);
            }

            // Consulta para obtener los autores
            $sql = "SELECT AutorID, NombreAutor FROM autor";
            $result = $conn->query($sql);

            // Mostrar las opciones de los autores
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo '<option value="' . $row["AutorID"] . '">' . $row["NombreAutor"] . '</option>';
                }
            }

            // Cerrar la conexión
            $conn->close();
            ?>
        </select><br>

        <label for="categoria">Categoría:</label>
        <select name="categoria_id" id="categoria_id" required>
            <?php
            // Crear una nueva conexión a la base de datos (si no estás utilizando una estructura de conexión persistente)
            $conn = new mysqli($servername, $username, $password, $dbname);

            // Verificar la conexión
            if ($conn->connect_error) {
                die("Conexión fallida: " . $conn->connect_error);
            }

            // Consulta para obtener las categorías
            $sql = "SELECT CategoriaID, NombreCategoria FROM categoria";
            $result = $conn->query($sql);

            // Mostrar las opciones de las categorías
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo '<option value="' . $row["CategoriaID"] . '">' . $row["NombreCategoria"] . '</option>';
                }
            }

            // Cerrar la conexión
            $conn->close();
            ?>
        </select><br>


        <label for="descripcion">Descripción:</label>
        <textarea name="descripcion" id="descripcion" required></textarea><br>

        <label for="anio">Año de publicación:</label>
        <input type="text" name="anio" id="anio" required><br>

        <label for="enlace_pdf">Enlace PDF:</label>
        <input type="text" name="enlace_pdf" id="enlace_pdf" required><br>

        <input type="submit" value="Enviar">
        <input type="button" value="Clear" onclick="limpiarFormulario()">
    </form>
</body>
</html>
