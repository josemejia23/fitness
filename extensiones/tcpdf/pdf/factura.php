<?php

require_once "../../../controladores/ventas.controlador.php";
require_once "../../../modelos/ventas.modelo.php";

require_once "../../../controladores/clientes.controlador.php";
require_once "../../../modelos/clientes.modelo.php";

require_once "../../../controladores/usuarios.controlador.php";
require_once "../../../modelos/usuarios.modelo.php";

require_once "../../../controladores/productos.controlador.php";
require_once "../../../modelos/productos.modelo.php";

class imprimirFactura{

public $codigo;

public function traerImpresionFactura(){

//TRAEMOS LA INFORMACIÓN DE LA VENTA

$itemVenta = "codigo";
$valorVenta = $this->codigo;

$respuestaVenta = ControladorVentas::ctrMostrarVentas($itemVenta, $valorVenta);

$fecha = substr($respuestaVenta["fecha"],0,-8);
$productos = json_decode($respuestaVenta["productos"], true);
$envio = number_format($respuestaVenta["envio"], 3);
$neto = number_format($respuestaVenta["neto"], 3);
$impuesto = number_format($respuestaVenta["impuesto"], 3);
$descuento = number_format($respuestaVenta["descuento"], 3);
$total = number_format($respuestaVenta["total"], 3);

//TRAEMOS LA INFORMACIÓN DEL CLIENTE

$itemCliente = "id";
$valorCliente = $respuestaVenta["id_cliente"];

$respuestaCliente = ControladorClientes::ctrMostrarClientes($itemCliente, $valorCliente);

//TRAEMOS LA INFORMACIÓN DEL VENDEDOR

$itemVendedor = "id";
$valorVendedor = $respuestaVenta["id_vendedor"];

$respuestaVendedor = ControladorUsuarios::ctrMostrarUsuarios($itemVendedor, $valorVendedor);

//REQUERIMOS LA CLASE TCPDF

require_once('tcpdf_include.php');

$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

$pdf->setPrintHeader(false);
$pdf->setPrintFooter(false);

$img = file_get_contents('./images/logoDecorpox.png');
$pdf->AddPage('P', 'A5');

$pdf->Image('@' . $img, 8, 8, 16, 0);



//---------------------------------------------------------

$bloque1 = <<<EOF

<table style="font-size:8px; text-align:center" >
	<tr>
		<td style="width:40%;" >
		</td>
		<td style="width:60%;" border="0.5";  >
	
			<div>
			
				Factura: $valorVenta

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
		<br>
			<div>	
			<b>CÓDIGO</b>
			</div>
		<br>
		</td> 	
		<td style="width:30%;" border="0.5";  >
		<br>
			<div>	
			<b>DESCRIPCIÓN</b>
			</div>
		<br>
		</td>
		<td style="width:10%;" border="0.5";  >
		<br>
	
			<div>	
			<b>CANTIDAD</b>
			</div>
		<br>	
		</td>
		<td style="width:10%;" border="0.5";  >
		<br>
			<div>	
			<b>P. UNITARIO</b>
			</div>
		<br>		
		</td>
		<td style="width:20%;" border="0.5";  >
		<br>
			<div>	
			<b>P. TOTAL</b>
			</div>
		<br>		
		</td>
	</tr>
	
</table>

EOF;

$pdf->writeHTML($bloque1, false, false, false, false, '');

// ---------------------------------------------------------


foreach ($productos as $key => $item) {

$valorUnitario = number_format($item["precio"], 3);

$precioTotal = number_format($item["total"], 3);

$bloque2 = <<<EOF

<table style="font-size:5px;">

	<tr>
		<td style="width:30%; text-align:center" border="0.5";>
		<br><br>
		$item[codigo] 
		<br>
		</td>
		<td style="width:30%; text-align:center" border="0.5";>
		<br><br>
		$item[descripcion] 
		<br>
		</td>
		<td style="width:10%; text-align:center" border="0.5";>
		<br><br>
		$item[cantidad]  
		<br>
		</td>
		<td style="width:10%; text-align:center" border="0.5";>
		<br><br>
		$valorUnitario
		<br>
		</td>
		<td style="width:20%; text-align:center" border="0.5";>
		<br><br>
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
		<br><br>
		<b> ENVÍO: </b>
		<br>
		</td>

		<td style="width:20%;" border="0.5";>
		<br><br>
			$ $envio
			<br>
		</td>

	</tr>

	<tr>
	
	<td style="width:80%;" border="0.5";>
	<br><br>
	<b> DESCUENTO: </b>
	<br>
	</td>

	<td style="width:20%;" border="0.5";>
	<br><br>
		$ $descuento
		<br>
	</td>

</tr>

	<tr>
	
		<td style="width:80%;" border="0.5"; >
		<br><br>
			<b>SUBTOTAL: </b>
			<br>
		</td>

		<td style="width:20%;" border="0.5";>
		<br><br>
			$ $neto
			<br>
		</td>

	</tr>


	<tr>
	
		<td style="width:80%;" border="0.5";>
		<br><br>
		<b> IMPUESTO: </b>
		<br>
		</td>

		<td style="width:20%;" border="0.5";>
		<br><br>
			$ $impuesto
			<br>
		</td>

	</tr>



	<tr>
	
		<td style="width:80%;" border="0.5";>
		<br><br>
		<b>TOTAL:</b> 
		<br>
		</td>

		<td style="width:20%;" border="0.5";>
		<br><br>
			$ $total
			<br>
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

$factura = new imprimirFactura();
$factura -> codigo = $_GET["codigo"];
$factura -> traerImpresionFactura();

?>