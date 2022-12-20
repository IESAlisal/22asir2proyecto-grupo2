<?php
function getlibros()
{
	$conexion=getConexionMySQLi();
	$consulta="select * from libros";
	$libros=[];
if ($resutlado=$conexion->query($consulta);
{
	while($libro=$resultado->fetch_object())
{
	$libros[]=$libro;
}
$resultado->close();
}	
$conexion->close();
return $libros;
}


function getlibrostitulo()
{
	$conexion=getConexionMySQLi();
	$consulta="select titulo from libros";
	$libros=[];
if ($resutlado=$conexion->query($consulta);
{
	while($libro=$resultado->fetch_object())
{
	$libros[]=$libro->titulo;
}
$resultado->close();
}	
$conexion->close();
echo $libros;
return $libros;
}


?>