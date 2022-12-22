

<!DOCTYPE html>
<html>
<head>
	<title>Register</title>
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
		<div class="login-content">
               <form action='<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>' method="post">
				
				<h2 class="title">Alta de Libros</h2>
                <form class="formulario" action="" method="post" name="formulario">
                <div class="div">
           		   		<h4>Titulo:</h4>
           		   		<input type="text" class="input" require>
           		   </div>
		    	 <div class="div">
           		   		<h4>Año de edicion:</h4>
           		   		<input type="number" name="anyo" min="1900" max="2100" required>
           		   </div>
                      <div class="div">
           		   		<h4>Precio:</h4>
           		   		<input type="number" name="precio" step="any" required>
           		   </div>     
                            <div class="div">
           		   		<h4>Fecha de adquisicion:</h4>
           		   		<input type="date" name="adquisicion" required>
           		   </div>    
	        	                 	
            	<input type="submit" class="btn" value="Guardar Datos">
                <a href="bienvenida.php">Volver</a>
            </form>
			
        </div>
    </div>
    <script type="text/javascript" src="js/main.js"></script>
</body>
</html>