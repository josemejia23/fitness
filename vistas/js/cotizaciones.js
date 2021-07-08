/*=============================================
CARGAR LA TABLA DINÁMICA DE VENTAS
=============================================*/

// $.ajax({

// 	url: "ajax/datatable-ventas.ajax.php",
// 	success:function(respuesta){

// 		console.log("respuesta", respuesta);

// 	}

// })// 

$('.tablaCotizaciones').DataTable({
	"ajax": "ajax/datatable-cotizaciones.ajax.php",
	"deferRender": true,
	"retrieve": true,
	"processing": true,
	"language": {

		"sProcessing": "Procesando...",
		"sLengthMenu": "Mostrar _MENU_ registros",
		"sZeroRecords": "No se encontraron resultados",
		"sEmptyTable": "Ningún dato disponible en esta tabla",
		"sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_",
		"sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0",
		"sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
		"sInfoPostFix": "",
		"sSearch": "Buscar:",
		"sUrl": "",
		"sInfoThousands": ",",
		"sLoadingRecords": "Cargando...",
		"oPaginate": {
			"sFirst": "Primero",
			"sLast": "Último",
			"sNext": "Siguiente",
			"sPrevious": "Anterior"
		},
		"oAria": {
			"sSortAscending": ": Activar para ordenar la columna de manera ascendente",
			"sSortDescending": ": Activar para ordenar la columna de manera descendente"
		}

	}

});

/*=============================================
AGREGANDO PRODUCTOS A LA COTIZACIÓN DESDE LA TABLA
=============================================*/

$(".tablaCotizaciones tbody").on("click", "button.agregarProducto1", function () {

	var idProducto = $(this).attr("idProducto");

	$(this).removeClass("btn-primary agregarProducto1");

	$(this).addClass("btn-default");

	var datos = new FormData();
	datos.append("idProducto", idProducto);

	$.ajax({

		url: "ajax/productos.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function (respuesta) {

			var descripcion = respuesta["descripcion"];
			var codigo = respuesta["codigo"];
			var stock = respuesta["stock"];
			var precio = respuesta["precio_venta"];

			/*=============================================
			EVITAR AGREGAR PRODUTO CUANDO EL STOCK ESTÁ EN CERO
			=============================================*/

			if (stock == 0) {

				swal({
					title: "No hay stock disponible",
					type: "error",
					confirmButtonText: "¡Cerrar!"
				});

				$("button[idProducto='" + idProducto + "']").addClass("btn-primary agregarProducto1");

				return;

			}

			$(".nuevoProductoC").append(

				'<div class="row" style="padding:5px 15px">' +

				'<!-- Descripción del producto -->' +

				'<div class="col-xs-6" style="padding-right:0px">' +

				'<div class="input-group">' +

				'<span class="input-group-addon"><button type="button" class="btn btn-danger btn-xs quitarProductoC" idProducto="' + idProducto + '"><i class="fa fa-times"></i></button></span>' +

				'<input type="text" class="form-control nuevaDescripcionProductoC" idProducto="' + idProducto + '" name="agregarProducto1" value="' + descripcion + '" readonly required>' +
				'<input type="text" class="form-control nuevoCodigoProductoC" idProducto="' + idProducto + '" name="agregarProducto1" value="' + codigo + '" readonly required>' +

				'</div>' +

				'</div>' +

				'<!-- Cantidad del producto -->' +

				'<div class="col-xs-3">' +

				'<input type="number" class="form-control nuevaCantidadProductoC" name="nuevaCantidadProductoC" min="1" value="1" stock="' + stock + '" nuevoStock="' + Number(stock) + '" required>' +

				'</div>' +

				'<!-- Precio del producto -->' +

				'<div class="col-xs-3 ingresoPrecio" style="padding-left:0px">' +

				'<div class="input-group">' +

				'<span class="input-group-addon"><i class="ion ion-social-usd"></i></span>' +

				'<input type="text" class="form-control nuevoPrecioProductoC" precioReal="' + precio + '" name="nuevoPrecioProductoC" value="' + precio + '" readonly required>' +

				'</div>' +

				'</div>' +

				'</div>')

			// SUMAR TOTAL DE PRECIOS

			sumarTotalPreciosC()

			// AGREGAR IMPUESTO

			agregarImpuestoC()

			// AGREGAR ENVÍO

			agregarEnvioC()

			// AGREGAR DESCUENTO

			agregarDescuentoC()

			// AGRUPAR PRODUCTOS EN FORMATO JSON

			listarProductosC()

			// PONER FORMATO AL PRECIO DE LOS PRODUCTOS

			$(".nuevoPrecioProducto").number(true, 2);


			localStorage.removeItem("quitarProductoC");

		}

	})

});

/*=============================================
CUANDO CARGUE LA TABLA CADA VEZ QUE NAVEGUE EN ELLA
=============================================*/

$(".tablaCotizaciones").on("draw.dt", function () {

	if (localStorage.getItem("quitarProductoC") != null) {

		var listaIdProductos = JSON.parse(localStorage.getItem("quitarProductoC"));

		for (var i = 0; i < listaIdProductos.length; i++) {

			$("button.recuperarBoton[idProducto='" + listaIdProductos[i]["idProducto"] + "']").removeClass('btn-default');
			$("button.recuperarBoton[idProducto='" + listaIdProductos[i]["idProducto"] + "']").addClass('btn-primary agregarProducto1');

		}
	}
})


/*=============================================
QUITAR PRODUCTOS DE LA VENTA Y RECUPERAR BOTÓN
=============================================*/

var idQuitarProducto = [];

localStorage.removeItem("quitarProductoC");

$(".formularioCotizacion").on("click", "button.quitarProductoC", function () {

	$(this).parent().parent().parent().parent().remove();

	var idProducto = $(this).attr("idProducto");

	/*=============================================
	ALMACENAR EN EL LOCALSTORAGE EL ID DEL PRODUCTO A QUITAR
	=============================================*/

	if (localStorage.getItem("quitarProductoC") == null) {

		idQuitarProducto = [];

	} else {

		idQuitarProducto.concat(localStorage.getItem("quitarProductoC"))

	}

	idQuitarProducto.push({ "idProducto": idProducto });

	localStorage.setItem("quitarProductoC", JSON.stringify(idQuitarProducto));

	$("button.recuperarBoton[idProducto='" + idProducto + "']").removeClass('btn-default');

	$("button.recuperarBoton[idProducto='" + idProducto + "']").addClass('btn-primary agregarProducto1');

	if ($(".nuevoProductoC").children().length == 0) {

		$("#nuevoImpuestoCotizacionC").val(0);
		$("#nuevoTotalCotizacionC").val(0);
		$("#totalCotizacionC").val(0);
		$("#nuevoTotalCotizacionC").attr("total", 0);

		//$("#nuevoDescuento").val(0);
		$("#nuevoEnvioC").val(0);
		$("#nuevoTotalCotizacionC").val(0);
		$("#totalCotizacionC").val(0);
		$("#nuevoTotalCotizacionC").attr("total", 0);

	} else {

		// SUMAR TOTAL DE PRECIOS

		sumarTotalPreciosC()

		// AGREGAR IMPUESTO

		agregarImpuestoC()

			// AGREGAR ENVÍO

		agregarEnvioC();

			// AGREGAR DESCUENTO

		agregarDescuentoC()

		// AGRUPAR PRODUCTOS EN FORMATO JSON

		listarProductosC()
	}
})

/*=============================================
AGREGANDO PRODUCTOS DESDE EL BOTÓN PARA DISPOSITIVOS
=============================================*/

var numProducto = 0;

$(".btnAgregarProducto1").click(function () {

	numProducto++;

	var datos = new FormData();
	datos.append("traerProductos", "ok");

	$.ajax({

		url: "ajax/productos.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function (respuesta) {

			$(".nuevoProductoC").append(

				'<div class="row" style="padding:5px 15px">' +

				'<!-- Descripción del producto -->' +

				'<div class="col-xs-6" style="padding-right:0px">' +

				'<div class="input-group">' +

				'<span class="input-group-addon"><button type="button" class="btn btn-danger btn-xs quitarProducto" idProducto><i class="fa fa-times"></i></button></span>' +

				'<select class="form-control nuevaDescripcionProducto" id="producto' + numProducto + '" idProducto name="nuevaDescripcionProducto" required>' +
				//'<input type="text" class="form-control nuevoCodigoProducto" idProducto="' + idProducto + '" name="agregarProducto" value="' + codigo + '" readonly required>' +
				'<option>Seleccione el producto</option>' +

				'</select>' +

				'</div>' +

				'</div>' +

				'<!-- Cantidad del producto -->' +

				'<div class="col-xs-3 ingresoCantidad">' +

				'<input type="number" class="form-control nuevaCantidadProducto" name="nuevaCantidadProducto" min="1" value="0" stock nuevoStock required>' +

				'</div>' +

				'<!-- Precio del producto -->' +

				'<div class="col-xs-3 ingresoPrecio" style="padding-left:0px">' +

				'<div class="input-group">' +

				'<span class="input-group-addon"><i class="ion ion-social-usd"></i></span>' +

				'<input type="text" class="form-control nuevoPrecioProducto" precioReal="" name="nuevoPrecioProducto" readonly required>' +

				'</div>' +

				'</div>' +

				'</div>');


			// AGREGAR LOS PRODUCTOS AL SELECT 

			respuesta.forEach(funcionForEach);

			function funcionForEach(item, index) {

				if (item.stock != 0) {

					$("#producto" + numProducto).append(

						'<option idProducto="' + item.id + '" value="' + item.descripcion + '">' + item.descripcion + '</option>'
					)
				}
			}

			// SUMAR TOTAL DE PRECIOS

			sumarTotalPreciosC()

			// AGREGAR IMPUESTO

			agregarImpuestoC()

			// AGREGAR ENVÍO

			agregarEnvioC()

			// AGREGAR DESCUENTO

			agregarDescuentoC()

			// PONER FORMATO AL PRECIO DE LOS PRODUCTOS

			$(".nuevoPrecioProducto").number(true, 2);


		}

	})

})

/*=============================================
SELECCIONAR PRODUCTO
=============================================*/

$(".formularioCotizacion").on("change", "select.nuevaDescripcionProducto", function () {

	var nombreProducto = $(this).val();

	var nuevaDescripcionProducto = $(this).parent().parent().parent().children().children().children(".nuevaDescripcionProducto");

	var nuevoPrecioProducto = $(this).parent().parent().parent().children(".ingresoPrecio").children().children(".nuevoPrecioProducto");

	var nuevaCantidadProducto = $(this).parent().parent().parent().children(".ingresoCantidad").children(".nuevaCantidadProducto");

	var datos = new FormData();
	datos.append("nombreProducto", nombreProducto);


	$.ajax({

		url: "ajax/productos.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function (respuesta) {

			$(nuevaDescripcionProducto).attr("idProducto", respuesta["id"]);
			$(nuevaCantidadProducto).attr("stock", respuesta["stock"]);
			$(nuevaCantidadProducto).attr("nuevoStock", Number(respuesta["stock"]));
			$(nuevoPrecioProducto).val(respuesta["precio_venta"]);
			$(nuevoPrecioProducto).attr("precioReal", respuesta["precio_venta"]);

			// AGRUPAR PRODUCTOS EN FORMATO JSON

			listarProductos1()

		}

	})
})

/*=============================================
MODIFICAR LA CANTIDAD
=============================================*/

$(".formularioCotizacion").on("change", "input.nuevaCantidadProducto", function () {

	var precio = $(this).parent().parent().children(".ingresoPrecio").children().children(".nuevoPrecioProducto");

	var precioFinal = $(this).val() * precio.attr("precioReal");

	precio.val(precioFinal);

	var nuevoStock = Number($(this).attr("stock"));// - $(this).val();

	$(this).attr("nuevoStock", nuevoStock);

	if (Number($(this).val()) > Number($(this).attr("stock"))) {

		/*=============================================
		SI LA CANTIDAD ES SUPERIOR AL STOCK REGRESAR VALORES INICIALES
		=============================================*/

		$(this).val(0);

		$(this).attr("nuevoStock", $(this).attr("stock"));

		var precioFinal = $(this).val() * precio.attr("precioReal");

		precio.val(precioFinal);

		sumarTotalPrecios1();

		swal({
			title: "La cantidad supera el Stock",
			text: "¡Sólo hay " + $(this).attr("stock") + " unidades!",
			type: "error",
			confirmButtonText: "¡Cerrar!"
		});

		return;

	}

	// SUMAR TOTAL DE PRECIOS

	sumarTotalPreciosC()

	// AGREGAR IMPUESTO

	agregarImpuestoC()

		// AGREGAR ENVÍO

	agregarEnvioC()

		// AGREGAR DESCUENTO

	agregarDescuentoC()

	// AGRUPAR PRODUCTOS EN FORMATO JSON

	listarProductosC()

})

/*=============================================
SUMAR TODOS LOS PRECIOS
=============================================*/

function sumarTotalPrecios1() {

	var precioItem = $(".nuevoPrecioProducto");

	var arraySumaPrecio = [];

	for (var i = 0; i < precioItem.length; i++) {

		arraySumaPrecio.push(Number($(precioItem[i]).val()));


	}

	function sumaArrayPrecios(total, numero) {

		return total + numero;

	}

	var sumaTotalPrecio = arraySumaPrecio.reduce(sumaArrayPrecios);

	$("#nuevoTotalCotizacion").val(sumaTotalPrecio);
	$("#totalCotizacion").val(sumaTotalPrecio);
	$("#nuevoTotalCotizacion").attr("total", sumaTotalPrecio);

}

/*=============================================
FUNCIÓN AGREGAR IMPUESTO
=============================================*/

function agregarImpuestoC() {

	var impuesto = $("#nuevoImpuestoCotizacionC").val();
	var descuento = $("#nuevoDescuentoC").val();
	var precioTotal = $("#nuevoTotalCotizacionC").attr("total");
	var envio = $("#nuevoEnvioC").val();
	var NuevoEnvio = Number(envio);
	precioTotal = Number(precioTotal) + Number(NuevoEnvio);
	var precioDescuento = Number(precioTotal * descuento / 100);
	precioTotal = Number(precioTotal) - Number(precioDescuento);
	var precioImpuesto = Number(precioTotal * impuesto / 100);
	var totalConImpuesto = Number(precioImpuesto) + Number(precioTotal);

	$("#nuevoTotalCotizacionC").val(totalConImpuesto);

	$("#totalCotizacionC").val(totalConImpuesto);

	$("#nuevoPrecioImpuestoC").val(precioImpuesto);

	//$("#nuevoPrecioDescuento").val(precioDescuento);

	$("#nuevoPrecioNetoC").val(precioTotal);

}

/*=============================================
FUNCIÓN AGREGAR ENVÍO
=============================================*/

function agregarEnvioC() {

	var impuesto = $("#nuevoImpuestoCotizacionC").val();
	var descuento = $("#nuevoDescuentoC").val();
	var precioTotal = $("#nuevoTotalCotizacionC").attr("total");
	var envio = $("#nuevoEnvioC").val();
	var NuevoEnvio = Number(envio);
	precioTotal = Number(precioTotal) + Number(NuevoEnvio);
	var precioDescuento = Number(precioTotal * descuento / 100);
	precioTotal = Number(precioTotal) - Number(precioDescuento);
	var precioImpuesto = Number(precioTotal * impuesto / 100);
	var totalConImpuesto = Number(precioImpuesto) + Number(precioTotal);

	$("#nuevoTotalCotizacionC").val(totalConImpuesto)

	$("#nuevoPrecioEnvioC").val(envio);
}

function agregarDescuentoC() {

	var impuesto = $("#nuevoImpuestoCotizacionC").val();
	var descuento = $("#nuevoDescuentoC").val();
	var precioTotal = $("#nuevoTotalCotizacionC").attr("total");
	var envio = $("#nuevoEnvioC").val();
	var NuevoEnvio = Number(envio);
	precioTotal = Number(precioTotal) + Number(NuevoEnvio);
	var precioDescuento = Number(precioTotal * descuento / 100);
	precioTotal = Number(precioTotal) - Number(precioDescuento);
	var precioImpuesto = Number(precioTotal * impuesto / 100);
	var totalConImpuesto = Number(precioImpuesto) + Number(precioTotal);

	$("#nuevoTotalCotizacionC").val(totalConImpuesto);

	$("#totalCotizacionC").val(totalConImpuesto);

	$("#nuevoPrecioImpuestoC").val(precioImpuesto);

	$("#nuevoPrecioDescuentoC").val(precioDescuento);

	$("#nuevoPrecioNetoC").val(precioTotal);
}

/*=============================================
CUANDO CAMBIA EL IMPUESTO
=============================================*/

$("#nuevoImpuestoCotizacionC").change(function () {

	agregarImpuestoC();

});

$("#nuevoDescuentoC").change(function () {

	agregarDescuentoC();

});

$("#nuevoEnvioC").change(function () {

	agregarEnvioC();

});


/*=============================================
FORMATO AL PRECIO FINAL
=============================================*/

$("#nuevoTotalCotizacion").number(true, 2);

/*=============================================
SELECCIONAR MÉTODO DE PAGO
=============================================*/

$("#nuevoMetodoPago").change(function () {

	var metodo = $(this).val();

	if (metodo == "Efectivo") {

		$(this).parent().parent().removeClass("col-xs-6");

		$(this).parent().parent().addClass("col-xs-4");

		$(this).parent().parent().parent().children(".cajasMetodoPago").html(

			'<div class="col-xs-4">' +

			'<div class="input-group">' +

			'<span class="input-group-addon"><i class="ion ion-social-usd"></i></span>' +

			'<input type="text" class="form-control" id="nuevoValorEfectivo" placeholder="000000" required>' +

			'</div>' +

			'</div>' +

			'<div class="col-xs-4" id="capturarCambioEfectivo" style="padding-left:0px">' +

			'<div class="input-group">' +

			'<span class="input-group-addon"><i class="ion ion-social-usd"></i></span>' +

			'<input type="text" class="form-control" id="nuevoCambioEfectivo" placeholder="000000" readonly required>' +

			'</div>' +

			'</div>'

		)

		// Agregar formato al precio

		$('#nuevoValorEfectivo').number(true, 2);
		$('#nuevoCambioEfectivo').number(true, 2);


		// Listar método en la entrada
		listarMetodos()

	} else {

		$(this).parent().parent().removeClass('col-xs-4');

		$(this).parent().parent().addClass('col-xs-6');

		$(this).parent().parent().parent().children('.cajasMetodoPago').html(

			'<div class="col-xs-6" style="padding-left:0px">' +

			'<div class="input-group">' +

			'<input type="number" min="0" class="form-control" id="nuevoCodigoTransaccion" placeholder="Código transacción"  required>' +

			'<span class="input-group-addon"><i class="fa fa-lock"></i></span>' +

			'</div>' +

			'</div>')
	}
})

/*=============================================
CAMBIO EN EFECTIVO
=============================================*/
$(".formularioCotizacion").on("change", "input#nuevoValorEfectivo", function () {

	var efectivo = $(this).val();

	var cambio = Number(efectivo) - Number($('#nuevoTotalCotizacion').val());

	var nuevoCambioEfectivo = $(this).parent().parent().parent().children('#capturarCambioEfectivo').children().children('#nuevoCambioEfectivo');

	nuevoCambioEfectivo.val(cambio);

})

/*=============================================
CAMBIO TRANSACCIÓN
=============================================*/
$(".formularioCotizacion").on("change", "input#nuevoCodigoTransaccion", function () {

	// Listar método en la entrada
	listarMetodos()

})


/*=============================================
LISTAR TODOS LOS PRODUCTOS
=============================================*/

function listarProductos1() {

	var listaProductos = [];

	var descripcion = $(".nuevaDescripcionProducto");

	var cantidad = $(".nuevaCantidadProducto");

	var precio = $(".nuevoPrecioProducto");

	var codigo = $(".nuevoCodigoProducto");
	for (var i = 0; i < descripcion.length; i++) {

		listaProductos.push({
			"id": $(descripcion[i]).attr("idProducto"),
			"descripcion": $(descripcion[i]).val(),
			"codigo": $(codigo[i]).val(),
			"cantidad": $(cantidad[i]).val(),
			"stock": $(cantidad[i]).attr("nuevoStock"),
			"precio": $(precio[i]).attr("precioReal"),
			"total": $(precio[i]).val()
		})

	}

	$("#listaProductosC").val(JSON.stringify(listaProductos));

}

/*=============================================
LISTAR MÉTODO DE PAGO
=============================================*/

function listarMetodos() {

	var listaMetodos = "";

	if ($("#nuevoMetodoPago").val() == "Efectivo") {

		$("#listaMetodoPago").val("Efectivo");

	} else {

		$("#listaMetodoPago").val($("#nuevoMetodoPago").val() + "-" + $("#nuevoCodigoTransaccion").val());

	}

}

/*=============================================
BOTON EDITAR VENTA
=============================================*/
$(".tablas").on("click", ".btnEditarCotizacion", function () {

	var idCotizacion = $(this).attr("idCotizacion");

	window.location = "index.php?ruta=editar-cotizacion&idCotizacion=" + idCotizacion;


})

/*=============================================
FUNCIÓN PARA DESACTIVAR LOS BOTONES AGREGAR CUANDO EL PRODUCTO YA HABÍA SIDO SELECCIONADO EN LA CARPETA
=============================================*/

function quitarAgregarProductoC() {

	//Capturamos todos los id de productos que fueron elegidos en la venta
	var idProductos = $(".quitarProductoC");

	//Capturamos todos los botones de agregar que aparecen en la tabla
	var botonesTabla = $(".tablaCotizaciones tbody button.agregarProducto1");

	//Recorremos en un ciclo para obtener los diferentes idProductos que fueron agregados a la venta
	for (var i = 0; i < idProductos.length; i++) {

		//Capturamos los Id de los productos agregados a la venta
		var boton = $(idProductos[i]).attr("idProducto");

		//Hacemos un recorrido por la tabla que aparece para desactivar los botones de agregar
		for (var j = 0; j < botonesTabla.length; j++) {

			if ($(botonesTabla[j]).attr("idProducto") == boton) {

				$(botonesTabla[j]).removeClass("btn-primary agregarProducto1");
				$(botonesTabla[j]).addClass("btn-default");

			}
		}

	}

}

/*=============================================
CADA VEZ QUE CARGUE LA TABLA CUANDO NAVEGAMOS EN ELLA EJECUTAR LA FUNCIÓN:
=============================================*/

$('.tablaCotizaciones').on('draw.dt', function () {

	quitarAgregarProductoC();

})


/*=============================================
BORRAR VENTA
=============================================*/
$(".tablas").on("click", ".btnEliminarCotizacion", function () {

	var idCotizacion = $(this).attr("idCotizacion");

	swal({
		title: '¿Está seguro de borrar la cotización?',
		text: "¡Si no lo está puede cancelar la accíón!",
		type: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		cancelButtonText: 'Cancelar',
		confirmButtonText: 'Si, borrar cotización!'
	}).then(function (result) {
		if (result.value) {

			window.location = "index.php?ruta=cotizaciones&idCotizacion=" + idCotizacion;
		}

	})

})

/*=============================================
IMPRIMIR FACTURA
=============================================*/

$(".tablas").on("click", ".btnImprimirCotizacion", function () {

	var codigoCotizacion = $(this).attr("codigoCotizacion");

	window.open("extensiones/tcpdf/pdf/cotizacion.php?codigo=" + codigoCotizacion, "_blank");

})

/*=============================================
RANGO DE FECHAS
=============================================*/

$('#daterange-btn').daterangepicker(
	{
		ranges: {
			'Hoy': [moment(), moment()],
			'Ayer': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
			'Últimos 7 días': [moment().subtract(6, 'days'), moment()],
			'Últimos 30 días': [moment().subtract(29, 'days'), moment()],
			'Este mes': [moment().startOf('month'), moment().endOf('month')],
			'Último mes': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
		},
		startDate: moment(),
		endDate: moment()
	},
	function (start, end) {
		$('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));

		var fechaInicial = start.format('YYYY-MM-DD');

		var fechaFinal = end.format('YYYY-MM-DD');

		var capturarRango = $("#daterange-btn span").html();

		localStorage.setItem("capturarRango", capturarRango);

		window.location = "index.php?ruta=cotizaciones&fechaInicial=" + fechaInicial + "&fechaFinal=" + fechaFinal;

	}

)

/*=============================================
CANCELAR RANGO DE FECHAS
=============================================*/

$(".daterangepicker.opensleft .range_inputs .cancelBtn").on("click", function () {

	localStorage.removeItem("capturarRango");
	localStorage.clear();
	window.location = "cotizaciones";
})

/*=============================================
CAPTURAR HOY
=============================================*/

$(".daterangepicker.opensleft .ranges li").on("click", function () {

	var textoHoy = $(this).attr("data-range-key");

	if (textoHoy == "Hoy") {

		var d = new Date();

		var dia = d.getDate();
		var mes = d.getMonth() + 1;
		var año = d.getFullYear();

		// if(mes < 10){

		// 	var fechaInicial = año+"-0"+mes+"-"+dia;
		// 	var fechaFinal = año+"-0"+mes+"-"+dia;

		// }else if(dia < 10){

		// 	var fechaInicial = año+"-"+mes+"-0"+dia;
		// 	var fechaFinal = año+"-"+mes+"-0"+dia;

		// }else if(mes < 10 && dia < 10){

		// 	var fechaInicial = año+"-0"+mes+"-0"+dia;
		// 	var fechaFinal = año+"-0"+mes+"-0"+dia;

		// }else{

		// 	var fechaInicial = año+"-"+mes+"-"+dia;
		//    	var fechaFinal = año+"-"+mes+"-"+dia;

		// }

		dia = ("0" + dia).slice(-2);
		mes = ("0" + mes).slice(-2);

		var fechaInicial = año + "-" + mes + "-" + dia;
		var fechaFinal = año + "-" + mes + "-" + dia;

		localStorage.setItem("capturarRango", "Hoy");

		window.location = "index.php?ruta=cotizaciones&fechaInicial=" + fechaInicial + "&fechaFinal=" + fechaFinal;

	}

})

/*=============================================
ABRIR ARCHIVO XML EN NUEVA PESTAÑA
=============================================*/

$(".abrirXML").click(function () {

	var archivo = $(this).attr("archivo");
	window.open(archivo, "_blank");


})


