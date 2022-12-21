

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
				<h2 class="title">Registrate</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Nombre de usuario</h5>
           		   		<input type="text" name="username">
                         <span class="msg-error"><?php echo $username_err; ?></span>
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Contraseña</h5>
           		    	<input type="password" class="input">
                          <span class="msg-error"> <?php echo $password_err; ?></span>
            	   </div>
            	</div>
            	
            	<input type="submit" class="btn" value="Registrate">
                <a href="index.php">Volver</a>
            </form>
			
        </div>
    </div>
    <script type="text/javascript" src="js/main.js"></script>
</body>
</html>
