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

funcion insertarLibroMysqli($titulo,$anyo,$precio,$fechaAdquisicion)
{
$conexion= getConexionMySQLi();
$conexion->autocomit(false);
$consultaInsert = $conexion->stmt_init();
$sqlInsert = "Insert Into libros(titulo,anyo_edicion,precio,fecha_adquisicion)" values();
$consultaInsert->prepare($sqlInsert)
$consultaInsert->bind_param(´sids´,$titulo,$anyo,$precio,$fechaAdquisicion)
$consultaInsert->execute()
$filasAfectadasInsert= $consultaInsert->affected_rows;
$consultaInsert->close();


if($filasAfectadasInsert ==1)
{$conexion->commit();
return true;}

 else{
    $conexion->rollback();
return false;
 }
}

?>