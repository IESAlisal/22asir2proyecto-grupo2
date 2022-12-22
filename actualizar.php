<!DOCTYPE html>
<html>
<head>
	<title>Actualizar</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<img class="wave" src="img/wave.png">
	<div class="container">
		<div class="img">
			<img src="img/bg.svg">
		</div>
	<form class="formulario" action="" method="post" name="formulario">
	<div class="login-content">
		    <li>
		         <h2>Actualizar</h2>
		      </li>

		    <li>
		        <div class="div">Titulo:</div>
		        <select name="libro">
		            <?php
						require_once 'funciones.php';

						$equipos = getLibros();
						foreach ($libros as $libro) 
						{
						    echo "<option value='$libro'";
						    //Si se ha recibido el equipo y coincide con el que estamos mostrando
						    //ponemos selected a true
						    if (isset($_POST['libro']) && $equipo == $_POST['libro'])
                        	    echo " selected='true'";

						    echo ">$libro</option>";
						}
		    		?>
		        </select>
		    </li>

		    <li>
		        <button class="submit" type="submit" name="mostrar">Mostrar</button>
		    </li>
		</ul>
		</div>
	</form>

	
		<?php
			// Comprobamos si tenemos que mostrar los jugadores
		    if (isset($_POST['mostrar'])) 
		    {
		?>
		<table class="tabla">
		<thead>
			<tr>
				<th>Titulo</th>
				<th>Precio</th>
			</tr>
		</thead>
		<tbody>
			<?php
		        
		        $libros = $_POST['libro'];
		        $titulo = getLibrosTitulo($libro);
		        foreach ($libros as $libro) 
		        {
		        	echo "<tr><td>".$libros["titulo"]."</td>
                            <td>".$libros["precio"]." €</td></tr>";
		        }
			?>
		</tbody>
	</table>
		<?php
		    }
		?>		
		
</body>
</html>


