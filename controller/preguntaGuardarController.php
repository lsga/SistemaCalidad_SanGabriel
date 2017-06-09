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

$objAnalisisT = new pregunta($db);
//print_r($_POST);

//echo "indicador=".$_REQUEST['idindicador'];
//echo "archivo=".$_FILES['txt_evidenciapdf'];
/*echo "evidencia=".$_POST['txtevidencia'];
echo "chk_respuesta=".$_POST['chk_respuesta'];
echo "observaciones".$_POST['txtobservaciones'];
echo "comentario".$_POST['txtComentario'];
*/




   $respuesta = $objAnalisisT->insertar_respuesta( $_POST["id_pregunta"],
                                                    $_POST["chk_respuesta"],
                                                    $_POST["txtevidencia"],
                                                    $_FILES["archivo_evidencia"],
                                                    $_POST["txtComentario"],
                                                    $_POST["txtobservaciones"]
                
                                                   );
  
   
   
                                    
                                                
?>