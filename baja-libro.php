<?php
    
    require "baja-libro.php";

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Baja de  Libros</title>
    <link rel="stylesheet" href="css/estilos.css">

    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>

<body>

    <div class="container-all">

        <div class="ctn-form">
            <h1 class="title">Baja de Libros</h1>
            <form action='<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>' method="post">
               
            <label for="">Libro</label>
        

               <input type="submit" value="Borrar">

           </form>

            <span class="text-footer">
                            <a href="bienvenida.php">Volver</a>
            </span>
        </div>

    </div>

</body>

</html>