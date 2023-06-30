<?php
     //si deceo serrar la sesion temporalmente
     session_start();
     session_destroy();
     header("location: ../index/index.html");
?>