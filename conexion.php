<?php
define("HOST", "localhost");
define("USERNAME", "root");
define("PASSWORD", "");
define("DATABASE", "libros");

function getConexion()
{
    $mysqli = new mysqli(HOST, USERNAME, PASSWORD, DATABASE);
    $error  = $mysqli->connect_errno;

    if ($error != null)
    {
        echo "<p>Error $error conectando a la base de datos: $mysqli->connect_error</p>";
        exit();
    }
    return $mysqli;
}