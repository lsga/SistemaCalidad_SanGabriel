<?php
require_once dirname(dirname(__FILE__)).'/controller/resumenEvaluacionController.php';
require_once dirname(dirname(__FILE__)).'/controller/item_controller.php';
require_once dirname(dirname(__FILE__)).'/controller/ambito_controller.php';
?>
<?php
$sumartoria14= $datos[66]['ponderacion_respuesta']+$datos[67]['ponderacion_respuesta']+
       $datos[68]['ponderacion_respuesta']+$datos[69]['ponderacion_respuesta'];
 ?>
 <?php
 $total14=$sumartoria14/48;
 ?>

  <html>
      <head>
          <title>Informe</title>
          <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
  	<script src="http://canvasjs.com/assets/script/canvasjs.min.js"></script>
      </head>

      <?php
          $dataPoints = array(
              array("y" => $datos[66]['ponderacion_respuesta'], "label" => $datos[66]['indicador_decripcion'].' '.utf8_encode($datos[66]['descripcionrespuesta'])),
              array("y" => $datos[67]['ponderacion_respuesta'], "label" => $datos[67]['indicador_decripcion'].' '.utf8_encode($datos[67]['descripcionrespuesta'])),
              array("y" => $datos[68]['ponderacion_respuesta'], "label" => $datos[68]['indicador_decripcion'].' '.utf8_encode($datos[68]['descripcionrespuesta'])),
              array("y" => $datos[69]['ponderacion_respuesta'], "label" => $datos[69]['indicador_decripcion'].' '.utf8_encode($datos[69]['descripcionrespuesta'])),
          );
      ?>

      <body>
          <div id="chartContainer" style="height: 100%; width: 100%;"></div>

          <script type="text/javascript">

              $(function () {
                  var chart = new CanvasJS.Chart("chartContainer", {
                      theme: "theme2",
                      animationEnabled: true,
                      title: {
                          text: "<?php echo utf8_encode($datos4[13]['NOMBREITEM']) ?> <?php echo round($total14*100),'%' ?>"
                      },
                      axisY: {
                          title: "Puntos",
                          titleFontColor: "black",
                          labelFontColor: "black",
                          titleFontSize: 20,
                          interval: 2
                      },
                      axisX: {
                          interval: 1,
                          labelFontSize: 15,
                          labelAngle: 0,
                          labelFontColor: "black"
                      },
                      data: [
                      {
                          type: "column",
                          indexLabel: "{y}",
                          indexLabelFontColor: "black",
                          dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
                      }
                      ]
                  });
                  chart.render();
              });
          </script>
      </body>
  </html>
