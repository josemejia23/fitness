<?php

require_once "../../../controladores/cotizaciones.controlador.php";
require_once "../../../modelos/cotizaciones.modelo.php";

require_once "../../../controladores/clientes.controlador.php";
require_once "../../../modelos/clientes.modelo.php";

require_once "../../../controladores/usuarios.controlador.php";
require_once "../../../modelos/usuarios.modelo.php";

require_once "../../../controladores/productos.controlador.php";
require_once "../../../modelos/productos.modelo.php";

class imprimirCotizacion{

public $codigo;

public function traerImpresionCotizacion(){

//TRAEMOS LA INFORMACIÓN DE LA VENTA

$itemCotizacion = "codigo";
$valorCotizacion = $this->codigo;

$respuestaCotizacion = ControladorCotizacion::ctrMostrarCotizaciones($itemCotizacion, $valorCotizacion);

$fecha = substr($respuestaCotizacion["fecha"],0,-8);
$productos = json_decode($respuestaCotizacion["productos"], true);
$envio = number_format($respuestaCotizacion["envio"],2);
$neto = number_format($respuestaCotizacion["neto"],2);
$impuesto = number_format($respuestaCotizacion["impuesto"],2);
$descuento = number_format($respuestaCotizacion["descuento"],2);
$total = number_format($respuestaCotizacion["total"],2);

//TRAEMOS LA INFORMACIÓN DEL CLIENTE

$itemCliente = "id";
$valorCliente = $respuestaCotizacion["id_cliente"];

$respuestaCliente = ControladorClientes::ctrMostrarClientes($itemCliente, $valorCliente);

//TRAEMOS LA INFORMACIÓN DEL VENDEDOR

$itemVendedor = "id";
$valorVendedor = $respuestaCotizacion["id_vendedor"];

$respuestaVendedor = ControladorUsuarios::ctrMostrarUsuarios($itemVendedor, $valorVendedor);

//REQUERIMOS LA CLASE TCPDF

require_once('tcpdf_include.php');

$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

$pdf->setPrintHeader(false);
$pdf->setPrintFooter(false);

$img = file_get_contents('./images/logoDecorpox.png');
$pdf->AddPage('P', 'A5');

$pdf->Image('@' . $img, 5, 5, 15, 0);



//---------------------------------------------------------

$bloque1 = <<<EOF

<table style="font-size:8px; text-align:center" >
	<tr>
		<td style="width:40%;" >
		</td>
		<td style="width:60%;" border="0.5";  >
	
			<div>
			
				COTIZACIÓN: $valorCotizacion

			</div>

		</td>
		
	</tr>
	

</table>
<table style="font-size:5px; text-align:left">

	<tr>
		<td style="width:40%;" >
		</td>
		<td style="width:60%;" border="0.5";  >
	
			<div>
		
			<br>
			<b>RUC:</b> 1792345197001

			<br>
			<b>Fecha:</b> $fecha

				<br>
				<b>Decorpox Ecuador</b>
				
				<br>
			
				<b>Dirección:</b> Av. República de El Salvador y Suiza, Edificio Euro, Quito 220520, Ecuador.
				
				<br>
				<b>Teléfono:</b> +593 97 955 0192
				<br>

			</div>

		</td>

	</tr>
	
</table>

<br><br>
<table style="font-size:5px; text-align:left">

	<tr>
		<td style="width:100%;" border="0.5";  >
		<br>
			<div>	
			<b>Vendedor:</b> $respuestaVendedor[nombre]
			<br>
			<b>Cliente:</b> $respuestaCliente[nombre]
			<br>
			<b>Cédula:</b> $respuestaCliente[documento]
			<br>
			<b>Email:</b> $respuestaCliente[email]
			<br>
			<b>Dirección:</b> $respuestaCliente[direccion]
			<br>
			<b>Teléfono:</b> $respuestaCliente[telefono]
			<br>
			</div>
		</td>
	</tr>
	
</table>
<table style="font-size:5px; text-align:center">

	<tr>
	<td style="width:30%;" border="0.5";  >
			<div>	
			<b>CÓDIGO</b>
			</div>
		</td> 	
		<td style="width:30%;" border="0.5";  >
			<div>	
			<b>DESCRIPCIÓN</b>
			</div>
		</td>
		<td style="width:10%;" border="0.5";  >
	
			<div>	
			<b>CANTIDAD</b>
			</div>
		</td>
		<td style="width:10%;" border="0.5";  >
	
			<div>	
			<b>P. UNITARIO</b>
			</div>
		</td>
		<td style="width:20%;" border="0.5";  >
	
			<div>	
			<b>P. TOTAL</b>
			</div>
		</td>
	</tr>
	
	
</table>

EOF;

$pdf->writeHTML($bloque1, false, false, false, false, '');

// ---------------------------------------------------------


foreach ($productos as $key => $item) {

$valorUnitario = number_format($item["precio"], 2);

$precioTotal = number_format($item["total"], 2);

$bloque2 = <<<EOF

<table style="font-size:5px;">

	<tr>
	<td style="width:30%; text-align:center" border="0.5";>
		$item[codigo] 
		<br>
		</td>
		<td style="width:30%; text-align:center" border="0.5";>
		$item[descripcion] 
		<br>
		</td>
		<td style="width:10%; text-align:center" border="0.5";>
		$item[cantidad]  
		<br>
		</td>
		<td style="width:10%; text-align:center" border="0.5";>
		$valorUnitario
		<br>
		</td>
		<td style="width:20%; text-align:center" border="0.5";>
		$precioTotal
		</td>
	</tr>

	
</table>

EOF;

$pdf->writeHTML($bloque2, false, false, false, false, '');

}

// ---------------------------------------------------------

$bloque3 = <<<EOF

<table style="font-size:5px; text-align:right">
<tr>
	
		<td style="width:80%;" border="0.5";>
		<b> ENVÍO: </b>
		</td>

		<td style="width:20%;" border="0.5";>
			$ $envio
		</td>

	</tr>

	<tr>
	
	<td style="width:80%;" border="0.5";>
	<b> DESCUENTO: </b>
	</td>

	<td style="width:20%;" border="0.5";>
		$ $descuento
	</td>

</tr>

	<tr>
	
		<td style="width:80%;" border="0.5"; >
			<b>SUBTOTAL: </b>
		</td>

		<td style="width:20%;" border="0.5";>
			$ $neto
		</td>

	</tr>

	



	<tr>
	
		<td style="width:80%;" border="0.5";>
		<b> IMPUESTO: </b>
		</td>

		<td style="width:20%;" border="0.5";>
			$ $impuesto
		</td>

	</tr>



	<tr>
	
		<td style="width:80%;" border="0.5";>
		<b>TOTAL:</b> 
		</td>

		<td style="width:20%;" border="0.5";>
			$ $total
		</td>

	</tr>

	<tr>
	
		<td style="width:100%;">
		
		<br><br>
			Muchas gracias por su compra
		</td>

	</tr>

</table>



EOF;

$pdf->writeHTML($bloque3, false, false, false, false, '');

// ---------------------------------------------------------
//SALIDA DEL ARCHIVO 

//$pdf->Output('factura.pdf', 'D');
$pdf->Output('factura.pdf');

}

}

$cotizacion = new imprimirCotizacion();
$cotizacion-> codigo = $_GET["codigo"];
$cotizacion -> traerImpresionCotizacion();

?>