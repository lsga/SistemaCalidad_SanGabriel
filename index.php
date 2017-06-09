<?php
$titulo_pagina = "Sistema....";
include("util/Seguridad.php");
include("util/Config.php");
include("includes/headerprincipal.php");
?>

<?php
if(!Seguridad::sesionIniciada())
	include("login.php");
else
	header("Location: http://".$dominio."/scge/".$pagina_principal);
?>

<?php
include("includes/footer.php");
session_destroy();




?>
