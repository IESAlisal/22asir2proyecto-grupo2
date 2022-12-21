

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
				<img src="img/avatar.svg">
				<h2 class="title">Alta de Libros</h2>
                               
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
                     		
                      	
            	<input type="submit" class="btn" value="Guardar Datos">
                <a href="index.php">Volver</a>
            </form>
			
        </div>
    </div>
    <script type="text/javascript" src="js/main.js"></script>
</body>
</html>