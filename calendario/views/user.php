<?php


$userId = (isset($_GET['ID']) && $_GET['ID'] != '') ? $_GET['ID'] : 0;
$rdate = (isset($_GET['RDATE']) && $_GET['RDATE'] != '') ? $_GET['RDATE'] : 0;
$usql  = "SELECT * FROM tbl_reservations WHERE rdate= '$rdate' AND uid = $userId";
$res   = dbQuery($usql);
while ($row = dbFetchAssoc($res)) {
  extract($row);
  $stat = '';

  if ($status == "APPROVED") {
    $stat = 'success';
  } else if ($status == "PENDING") {
    $stat = 'warning';
  } else if ($status == "PENDING") {
    $stat = 'warning';
  } else if ($status == "delete") {
    $stat = 'danger';
  }

?>
  <div class="col-md-9">
    <div class="box box-solid">
      <div class="box-header with-border"> <i class="fa fa-text-width"></i>
        <h3 class="box-title">Detalles de actividad</h3>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <dl class="dl-horizontal">
          <dt>Tarea</dt>
          <dd><?php echo $comments; ?></dd>

          <dt>Fecha</dt>
          <dd><?php echo $rdate; ?></dd>

          <dt>Estado</dt>
          <dd><span class="label label-<?php echo $stat; ?>"><?php echo $status; ?></span></dd>

          <dt>Guía de Ejercicios</dt> <br>
          <?php

          if ($rdate == "2021-08-02 06:45" || $rdate == "2021-08-02 07:00" || $rdate == "2021-08-02 07:30" ) {
            echo '  <dd><li><a href="https://www.youtube.com/watch?v=ZUx3QCH4Row" target="_blank">Trote
            continuo</a></dd></li>
            <dd><li><a href="https://www.youtube.com/watch?v=afoS9irPXTI" target="_blank">Flexiones codo</a></li>
            <dd><li><a href="https://www.youtube.com/watch?v=GpVdIbdrHHs" target="_blank">Abdominales</a></li>';
          }

          else if ($rdate == "2021-08-03 06:45" || $rdate == "2021-08-03 07:00" || $rdate == "2021-08-03 07:30" ) {
            echo '  <dd>  <li><a href="https://www.youtube.com/watch?v=_ZwyRKRFQhU" target="_blank">Fartlek</a></li></dd></li>
            <dd><li><a href="https://www.youtube.com/watch?v=UPTxcwDmL_A" target="_blank">Trote regenerativo</a></li>
            <dd><li><a href="https://www.youtube.com/watch?v=IdxB68UzSSc" target="_blank">Burpees</a></li>
            <dd>     <li><a href="https://www.youtube.com/watch?v=GpVdIbdrHHs" target="_blank">Abdominales</a></li>
            <dd> <li><a href="https://www.youtube.com/watch?v=e27gn09JXqw" target="_blank">Barras</a></li>
            ';
            
          }

          else if ($rdate == "2021-08-04 06:45" || $rdate == "2021-08-04 07:00" || $rdate == "2021-08-04 07:30" ) {
            echo '
            <dd> <li><a href="https://www.youtube.com/watch?v=fDQnxCmzcLM" target="_blank">Circuito Fuerza</a></li></dd>
            <dd> <li><a href="https://www.youtube.com/watch?v=_aVkZLSw6sc" target="_blank">Flexiones Diamante</a></li>
            <dd><li><a href="https://www.youtube.com/watch?v=TP3Obt8KZvQ" target="_blank">Plancha</a></li>
            <dd><li><a href="https://www.youtube.com/watch?v=NIR5iKc848Y" target="_blank">Flexiones codo hombro</a></li>
            <dd>  <li><a href="https://www.youtube.com/watch?v=FC1hvUPNtPw" target="_blank">Sentadillas</a></li>
            ';
            
          }

          
          else if ($rdate == "2021-08-05 06:45" || $rdate == "2021-08-05 07:00" || $rdate == "2021-08-05 07:30" ) {
            echo '
            <dd> <li><a href="https://www.youtube.com/watch?v=UPTxcwDmL_A" target="_blank">Trote regenerativo</a></li>
            <dd> <li><a href="https://www.youtube.com/watch?v=afoS9irPXTI" target="_blank">Flexiones codo</a></li>
            <dd>   <li><a href="https://www.youtube.com/watch?v=GpVdIbdrHHs" target="_blank">Abdominales</a></li>
            ';
          }

          else if ($rdate == "2021-08-06 06:45" || $rdate == "2021-08-06 07:00" || $rdate == "2021-08-06 07:30" ) {
            echo '
            <dd>    <li><a href="https://www.youtube.com/watch?v=1bx-Ol4uGZ4" target="_blank">Ecuavoley</a></li></dd>
            <dd>     <li><a href="https://www.youtube.com/watch?v=6yUeQeOZkAE" target="_blank">Fútbol</a></li>
            <dd>    <li><a href="https://www.youtube.com/watch?v=GpVdIbdrHHs" target="_blank">Baloncesto</a></li>
            <dd>  <li><a href="https://www.youtube.com/watch?v=0YbBlQbrtIE" target="_blank">Gimnasio</a></li>
          
            ';      
          }

          else if ($rdate == "2021-08-07 06:45" || $rdate == "2021-08-07 07:00" || $rdate == "2021-08-07   07:30" ) {
            echo '
            <dd>     <li><a href="https://www.youtube.com/watch?v=lh1UszyPHfk" target="_blank">Crossfit</a></li></dd>
            <dd>     <li><a href="https://www.youtube.com/watch?v=UW42IbX41Ew" target="_blank">Tabata</a></li>
            <dd> <li><a href="https://www.youtube.com/watch?v=IdxB68UzSSc" target="_blank">Burpees</a></li>
            <dd>     <li><a href="https://www.youtube.com/watch?v=NIR5iKc848Y" target="_blank">Flexiones codo hombro</a></li>
            <dd>     <li><a href="https://www.youtube.com/watch?v=naYnjVUiCfA" target="_blank">Chase de rabit</a></li>
            <dd>  <li><a href="https://www.youtube.com/watch?v=TP3Obt8KZvQ" target="_blank">Plancha</a></li>
            <dd>  <li><a href="https://www.youtube.com/watch?v=5kK10N_5M8M" target="_blank">Step codo</a></li>
            <dd>  <li><a href="https://www.youtube.com/watch?v=bW37tKjzLdM" target="_blank">Mountain Climbers</a></li>
            <dd>       <li><a href="https://www.youtube.com/watch?v=PQkr_jS84-0" target="_blank">Sentadilla con salto</a></li>
            <dd>     <li><a href="https://www.youtube.com/watch?v=NIR5iKc848Y" target="_blank">Flexiones codo hombro</a></li>
            <dd>    <li><a href="https://www.youtube.com/watch?v=pigXNMA39nY" target="_blank">Salto a la grada</a></li>

            ';      
          }
          ?>
        </dl>
      </div>
      <!-- /.box-body -->
    </div>
    <!-- /.box -->
  </div>
<?php
}
?>