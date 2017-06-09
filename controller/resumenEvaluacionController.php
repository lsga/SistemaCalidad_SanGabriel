<?php
require_once ('../model/pregunta_model.php');
$config = require_once("../util/config.php");
try {
	if (!isset($db))
		$db = new PDO('mysql:host=localhost;dbname=sistema_calidad', 'root' ,'' );
} catch (PDOException $e) {
    print "¡Error!: " . $e->getMessage() . "<br/>";
    die();
}

$objResumen = new pregunta($db);
$datos = $objResumen->resumenEvaluacion();

//echo '---numero de ambito'.$_GET['idambito'];


//print_r($datos);

?>