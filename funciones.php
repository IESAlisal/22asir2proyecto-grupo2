<?php
function getConexionMySQLi() {
	$mysqli = new mysqli(HOST, USERNAME, PASSWORD, DATABASE);
	$mysqli -> set_charset("utf8");
	$error = $mysqli -> connect_errno;

	if ($error != null) {
		print"<p>Error $error conectando a la base de datos: $mysqli -> connect_error</p>";
		exit();
	}
	return $mysqli;
}

function getConexionMySQLi_sin_bbdd() {
	$mysqli = new mysqli(HOST, USERNAME, PASSWORD, DATABASE);
	$mysqli -> set_charset("utf8");
	$error = $mysqli ->connect_errno;
}

function crearBBDD($basedatos) {
	$conexion = getConexionMySQLi_sin_bbdd();
	$sql="select schema_name from information_schema.shcemata where schema_name='$basedatos'";
	$stm=$conexion -> prepare($sql);
	$stm -> execute();

	$stm -> bind_result ($nombre_db);
	$existe=$stm->fetch();
	$stml->close();

	if (!existe) {
		if($conexion->query("CREATE DATABASE $basedatos") ===true) {
			print "Base de datos $basedatos creada";
		}
		else {
			print "Error al ejecutar consulta";
		}
	}
	$conexion->close();
	return $existe;
}

function crearTablas($basedatos) {
	ini_set("display_errors",true);
	$conexion = getoConexionMySQLi_sin_bbdd();
	$conexion->select_db($basedatos);
	$existe_l = 0;
	$libros2="
		CREATE TABLE libros (
		titulo varchar(59),
		anyo int(11),
		precio decimal(10,2),
		fecha_adquisicion date,
		numero_ejemplar tinyiny(11) AUTO_INCREMENT PRIMARY KEY)
		ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
		";
	if ($conexion->query($libros2) === true) {
		print "Tabla libros creada en MYSQL<br>";
		existe_l=1;
	}
	else {
		print "Error al crear tabla libros2 en MySQL"
	}

	$existe_lg=0;
	$logins2="
		CREATE TABLE logins (
		usuario VARCHAR (50) CHARACTER SET utf8 PRIMARY KEY,
		passwd VARCHAR(32) CHARACTER SET utf8,
		)";
	
	if ($conexion->query(logins2) === true) {
		print "Tabla logins creada en MYSQL<br>";
		$existe_lg=1;
	}
	else {
		print "Error al crear tabla logins2";
	}

function usuarioCorrecto($usuario, $password) {
	$conexion = getConexionMySQLi();

	$r = false;
	$sql = "Select usuario from logins where usuario=? and passwd=?";
	$stm=$conexion->prepare($sql);
	$p=md5($password);
	$stm-> bind_param("ss",$usuario,$p);
	$stm->execute();
	$stm->bind_result($u);
	if($stm->fetch()) {
		$r=true;
	}
	$stm->close();
	return $r;
}		
	
function regitrarUsuarioMySQLi($usuario, $password) {
	$correcto = false;
	
	$conexion = getConexionMySQLi();
	$sql = "INSERT INTO logins (usuario,passwd) VALUES (?,md5(?))";
	$consulta =$conexion -> prepare($sql);
	$consulta->bind_param ("ss",$usuario,$password);

	$consulta->execute();
	$consulta->close();
	$conexion->close();
}

function insertarLibroMySQLi($titulo, $anyo, $precio, $fecha_adquisicion) {
	$conexion = getConexionMySQLi();
	$conexion->autocommit(false);

	$consnultaInsert = $conexion->stmt_init();
	$sqlInsert = "INSERT INTO libros(titulo, anyo_edicion, precio, fecha_adquisicion) VALUES (?,?,?,?)";
	$consultaInsert->prepare($sqlInsert);
	$consultaInsert->bind_param('sids', $titulo, $anyo, $precio, $fecha_adquisicion);
	$consultaInsert->execute();
	$filasAfectadasInsert = $consultaInsert->affected_rows;
	$consultaInsert->close();
	
	if ($filasAfectadasInsert == 1) {
		$conexion->commit();
		return true;
	}
	else {
		$conexion->rollback();
		return false;
	}

function getLibros() {
	$conexion = getConexionMySQLi();
	$consulta = "SELECT * FROM libros";
	$libros=[];
	if ($resultado = $conexion->query($consulta)) {
		while ($libro = $resultado -> fetch_object()) {
			$libros[] = $libro;
		}
		$resultado->close();
		return $libros;
	}
}	

function getLibrosTitulo() {

	$conexion = getConexionMySQLi();
	$consulta = "SELECT titulo FROM libros";
	$libros=[];
	if ($resultado = $conexion->query($consulta)) {
		while ($libro = $resultado -> fetch_object()) {
			$libros[] = $libro->titulo;
		}
		$resultado->close();
	}
	print ("$libros");
	return $libros;
}

function getLibrosPrecio() {

	$conexion = getConexionMySQLi();
	$consulta = "SELECT precio FROM libros";
	$libros=[];
	if ($resultado = $conexion->query($consulta)) {
		while ($libro = $resultado -> fetch_object()) {
			$libros[] = $libro->precio;
		}
		$resultado->close();
	}
	print ("$libros");
	return $libros;
}

?>