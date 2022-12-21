<?php
    
    require "libros-actualizar.php";

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Actualizar Libros</title>
    <link rel="stylesheet" href="css/estilos.css">

    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>

<body>

    <div class="container-all">

        <div class="ctn-form">
            <h1 class="title">Actualizar libros</h1>
            <label for="">Libro</label>
               <ul><?php echo $getlibros; ?> </ul>
            <form action='<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>' method="post">
               <table style="border=1">
                   <td>TITULO</td>
                   <td>PRECIO</td>
                   <tr>
                    <td><?php echo $titulo; ?> </td>;
                    <input type="number" name="precio">
                     <span class="msg-error"> <?php echo $precio; ?></span>
                </table>
               <input type="submit" value="Actualizar">

           </form>

            <span class="text-footer">
                        <a href="bienvenida.php">Volver</a>
            </span>
        </div>

    </div>

</body>

</html>