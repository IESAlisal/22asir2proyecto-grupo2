<?php
    
    require "alta-libros.php";
    function estaVacio($campo,$valor)
    {
        $vacio=false;
        if($valor=="")
        {
        echo ("<div class='error'>falta el campo $campo</div>");
        $vacio=true;
        }
        return $vacio;
    }
    $todoOK=true;
    if(isset($_POST['titulo']))
    {
        $titulo=$_POST['titulo'];
        if(!estaVacio("titulo",$titulo))
        echo "el titulo es $titulo </br>";
        else $todoOK = false;
    }
    if(isset($_POST['anyo']))
    {
        $anyo=$_POST['anyo'];
        if(!estaVacio("anyo",$anyo))
        echo "el anyo es $anyo </br>";
        else $todoOK = false;
    }
    if(isset($_POST['precio']))
    {
        $precio=$_POST['precio'];
        if(!estaVacio("precio",$precio))
        echo "el precio es $precio </br>";
        else $todoOK = false;
    }
    if(isset($_POST['adquisicion']))
    {
        $adquisicion=$_POST['adquisicion'];
        if(!estaVacio("fecha adquisicion",$adquisicion))
        {list ($year,$mom,$day)=explode('-',$adquisicion);
        if (checkdate(4mom,$day,$year))
        echo "la fecha adquisicion es $adquisicion  </br>";
        
        else {
        echo "<div class='error'>fecha adquisicion<br></div>";
        $todoOK = false;
        }
    }
    
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
            <form action="libros_guardar_mysql.php" method="post">
               
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
               <span class="msg-error"> <?php echo $adquisicion; ?></span>
     

               <input type="submit" value="Guardar datos">

           </form>

            <span class="text-footer">
            <a href="libros_datos_MySQLi.php">Mostrar los libros guardados</a> </br>
                <a href="bienvenida.php">Volver</a>
            </span>
        </div>

    </div>

</body>

</html>