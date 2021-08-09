<?php

$item = null;
$valor = null;
$orden = "id";

$ventas = ControladorVentas::ctrSumaTotalVentas();
$cotizaciones = ControladorCotizacion::ctrSumaTotalCotizaciones();

$categorias = ControladorCategorias::ctrMostrarCategorias($item, $valor);
$totalCategorias = count($categorias);

$clientes = ControladorClientes::ctrMostrarClientes($item, $valor);
$totalClientes = count($clientes);

$productos = ControladorProductos::ctrMostrarProductos($item, $valor, $orden);
$totalProductos = count($productos);

$item = "usuario";
$valor = $_SESSION["usuario"];


$usuarios = ControladorUsuarios::ctrMostrarUsuarios($item, $valor);

?>

<h2 style="text-align: center;">Su índice de masa corporal es:</h2>

<?php
$estatura =  $usuarios["estatura"] / 100;
$peso =  $usuarios["peso"];
$imc = $peso / pow($estatura, 2);

echo ' <tr>
                 
           <h1  style="text-align: center;"> <b> ' . $imc . '</b><h1>
                  ';
if ($imc < 18.5) {
  echo ' <div class="small-box bg-orange">
  <h3  style="text-align: center;"> Usted tiene un peso demasiado bajo </h3>
  </div>';

} else if ($imc > 18.5 && $imc < 24.9) {
  echo ' <div class="small-box bg-green">
  <h3  style="text-align: center;"> Usted tiene un peso óptimo</h3>
  </div>';

} else if ($imc > 24.9 && $imc < 29.9) {
  echo ' <div class="small-box bg-red">
  <h3  style="text-align: center;"> Usted tiene sobrepeso</h3>
  </div>';
}


 else if ($imc >= 30.00) {
  echo ' <div class="small-box bg-red">
  <h3  style="text-align: center;"> Usted tiene obesidad</h3>
  </div>';
}


?>
<br><br>
<div style="text-align: center;">
  <h4 style="text-align: center;">Para más información acerca del índice de masa corporal, puede consultar el siguiente enlace:</h3>
  <a href="https://www.cdc.gov/healthyweight/spanish/assessing/bmi/adult_bmi/index.html#IMC" style="text-align: center;" target="_blank">Información acerca del índice de masa corporal</a>
</div>


<br><br><br><br><br><br>
<div class="col-lg-3 col-xs-6">

  <div class="small-box bg-aqua">

    <div class="inner">

      <h3>6
        <!--<?php echo number_format($ventas["total"], 2); ?>-->
      </h3>

      <p>Nutrición</p>

    </div>

    <div class="icon">

      <i class="ion ion-ios-nutrition"></i>

    </div>

    <a href="#" class="small-box-footer">

      Más info <i class="fa fa-arrow-circle-right"></i>

    </a>

  </div>

</div>

<div class="col-lg-3 col-xs-6">

  <div class="small-box bg-green">

    <div class="inner">

      <h3><?php echo number_format($totalCategorias); ?></h3>

      <p>Categorías</p>

    </div>

    <div class="icon">

      <i class="ion ion-clipboard"></i>

    </div>

    <a href="categorias" class="small-box-footer">

      Más info <i class="fa fa-arrow-circle-right"></i>

    </a>

  </div>

</div>

<div class="col-lg-3 col-xs-6">

  <div class="small-box bg-yellow">

    <div class="inner">

      <h3><?php echo number_format($totalClientes); ?></h3>

      <p>Usuarios fitness</p>

    </div>

    <div class="icon">

      <i class="ion ion-person-add"></i>

    </div>

    <a href="clientes" class="small-box-footer">

      Más info <i class="fa fa-arrow-circle-right"></i>

    </a>

  </div>

</div>

<div class="col-lg-3 col-xs-6">

  <div class="small-box bg-red">

    <div class="inner">

      <h3><?php echo number_format($totalProductos); ?></h3>

      <p>Ejercicios</p>

    </div>

    <div class="icon">

      <i class="ion ion-ios-football"></i>

    </div>

    <a href="#" class="small-box-footer">

      Más info <i class="fa fa-arrow-circle-right"></i>

    </a>

  </div>

</div>