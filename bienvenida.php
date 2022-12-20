<?php

    session_start();

if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: index.php");
    exit;
}

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bienvenido </title>
    <link rel="stylesheet" href="css/estilos.css">
    
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
   
   <div class="ctn-welcome">
       

       <h1 class="title-welcome">Bienvenido a la aplicacion de libros</h1>
       <a href="alta-libros.php" class="close-sesion">Alta de Libros</a>
       <a href="libros-actualizar.php" class="close-sesion">Actualizar Libros</a>
       <a href="baja-libro.php" class="close-sesion">Baja de Libros</a>
       <a href="cerrar-sesion.php" class="close-sesion">Cerrar Sesión</a>
       
   </div>
   
    
</body>
</html>