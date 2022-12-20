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
?>