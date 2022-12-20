<?php
    
    require "alta-libros.php";

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Alta de Libros</title>
    <link rel="stylesheet" href="css/estilos.css">

    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>

<body>

    <div class="container-all">

        <div class="ctn-form">
            <h1 class="title">Alta de Libros</h1>
            <form action='<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>' method="post">
               
               <label for="">Titulo</label>
               <input type="text" name="titulo">
               <span class="msg-error"><?php echo $titulo; ?></span>
               <label for="">Año de Edicion</label>
               <input type="text" name="anyo_edicion">
               <span class="msg-error"> <?php echo $anyo_edicion; ?></span>
               <label for="">Precio</label>
               <input type="text" name="precio">
               <span class="msg-error"> <?php echo $precio; ?></span>
               <label for="">Fecha de  Adquisicion</label>
               <input type="text" name="fechaAdquisicion">
               <span class="msg-error"> <?php echo $fechaAdquisicion; ?></span>
     

               <input type="submit" value="Guardar datos">

           </form>

            <span class="text-footer">
                <a href="libros-guardados.php">mostrar los libros guardados</a> </br>
                <a href="bienvenida.php">Volver</a>
            </span>
        </div>

    </div>

</body>

</html>