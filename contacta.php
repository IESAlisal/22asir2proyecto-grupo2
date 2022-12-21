<?php
    
    require "contacta.php";

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Contactanos</title>
    <link rel="stylesheet" href="css/estilos.css">

    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>

<body>

    <div class="container-all">

        <div class="ctn-form">
            <h1 class="title">Contactanos</h1>
            <form action='<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>' method="post">
                <label for="">Email</label>
                <input type="text" name="email">
                <span class="msg-error"> <?php echo $email_cv; ?></span>
                <label for="">Comentario</label>
                <input type="comentario" name="coment">
                <span class="msg-error"> <?php echo $coment_cv; ?></span>
                <label for="">Dejanos tu CV</label>
                <input type="CV" name="CV">
                <span class="msg-error"> <?php echo $cv; ?></span>

                <input type="submit" value="Enviar">

            </form>
            <span class="text-footer">
                            <a href="bienvenida.php">Volver</a>
            </span>
        </div>

    </div>

</body>

</html>