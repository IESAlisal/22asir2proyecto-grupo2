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