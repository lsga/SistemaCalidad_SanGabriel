
<?php
require("../util/Config.php");

	echo '
  <a href="../views/inicio.php"><button class="btnprincipal" style="vertical-align:middle"><span>SISTEMA DE CALIDAD GESTION ESCOLAR</span></button></a>
  <a href="../views/macroprocesos.php"><button class="btnprincipal" style="vertical-align:middle"><span>MACRO DE PROCESOS INSTITUCIONALES</span></button></a>
	<a href="../views/ministerioEducacion.php"><button class="btnprincipal" style="vertical-align:middle"><span>AUTOEVALUACION MINISTERIO DE EDUCACION</span></button></a>
	<center><a href="'.$path.'/logout.php"><button class="btnprincipal" style="vertical-align:middle"><span>CERRAR</span></button></a></center>
  ';
?>
