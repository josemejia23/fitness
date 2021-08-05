<?php

require_once "conexion.php";

class ModeloActividad
{

	/*=============================================
	CREAR CLIENTE
	=============================================*/

	static public function mdlIngresarActividad()
	{

		if (isset($_POST["peso"])) {
			$peso = $_POST["peso"];



			$stmt1 = Conexion::conectar()->prepare("SELECT max(id) FROM usuarios");

			$stmt1->execute();

			$respuesta = $stmt1->fetch();

			
			
			$uid = max($respuesta);


			$stmt = Conexion::conectar()->prepare("INSERT INTO tbl_reservations(uid, rdate, status, comments) VALUES (:uid, :rdate, :status, :comments)");
			$null = '';

			if ($peso <= 160) {

				$status = 'PENDING';

				for ($i = 1; $i <= 18; $i++) {

					if ($i == 1) {
						$rdate = '2021-08-02 06:45';
						$comments = "CALENTAMIENTO (10’)
									Calentamiento activo (Ejercicios dirigidos
									";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 2) {
						$rdate = '2021-08-02 07:00';

						$comments = "PARTE ESPECÍFICA (40’)
						Trote continuo 5 km
						Flex. codo (04x25/30´´r)
						Abdominales  (4x25/30´´r)
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 3) {
						$rdate = '2021-08-02 07:30';

						$comments = "ESTIRAMIENTO (10’)
						10 Ejercicios (Individual)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 4) {
						$rdate = '2021-08-03 06:45';

						$comments = "CALENTAMIENTO (10’)
						Calentamiento activo (Ejercicios dirigidos)
						
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 5) {
						$rdate = '2021-08-03 07:00';

						$comments = "PARTE ESPECÍFICA (40’)
						Fartlek 15x (1’ al 85% + 1’ al 85%)
						Trote regenerativo 2 km al 60%
						Burpees (03x10/40`r)
						Abdominales (4x25/45´´r)
						Barras 3x5
			
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 6) {
						$rdate = '2021-08-03 07:30';

						$comments = "ESTIRAMIENTO (10’)
						10 Ejercicios (Individual)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 7) {
						$rdate = '2021-08-04 06:45';

						$comments = "CALENTAMIENTO (10’)
						Calentamiento activo (Ejercicios dirigidos)
						
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 8) {
						$rdate = '2021-08-04 07:00';

						$comments = "PARTE ESPECÍFICA (40’)
						Circuito Fuerza 4X(1´CADA ESTACIÓN)
						EST.1 – Flex. Codo Diamante
						EST.2 – Plancha
						EST.3 – Flexión codo (Topando el Hombro)
						EST.4 – Sentadillas 
						EST. 5 – Mointain Climber
						EST. 6 - Burpees
						
						Carrera 800m (Después de terminar las 6 estaciones)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 9) {
						$rdate = '2021-08-04 07:30';

						$comments = "ESTIRAMIENTO (10’)
						10 Ejercicios (Individual)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 10) {
						$rdate = '2021-08-05 06:45';

						$comments = "CALENTAMIENTO (10’)
						Calentamiento activo (Ejercicios dirigidos)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 11) {
						$rdate = '2021-08-05 07:00';

						$comments = "PARTE ESPECÍFICA (40’)
						2x(4 x 800  al 85-90% /1’ r)4´R
						Trote regenerativo 800 m al 60%
						Flex. codo (04x25/30´´r)
						Abdominales  (4x25/30´´r)
						
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 12) {
						$rdate = '2021-08-05 07:30';

						$comments = "ESTIRAMIENTO (10’)
						10 Ejercicios (Individual
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 13) {
						$rdate = '2021-08-06 06:45';

						$comments = "CALENTAMIENTO (10’)
						Calentamiento activo (Ejercicios dirigidos)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 14) {
						$rdate = '2021-08-06 07:00';

						$comments = "PARTE ESPECÍFICA (40’)
						DEPORTES
						Ecuavoley
						Fútbol
						Baloncesto
						Gimnasio						
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 15) {
						$rdate = '2021-08-06 07:30';

						$comments = "ESTIRAMIENTO (10’)
						10 Ejercicios (Individual)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 16) {
						$rdate = '2021-08-07 06:45';

						$comments = "CALENTAMIENTO (10’)
						Calentamiento activo (Ejercicios dirigidos)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 17) {
						$rdate = '2021-08-07 07:00';

						$comments = "PARTE ESPECÍFICA (40’)
						CIRCUITO CROSSFIT
						TABATA
						4X(8X1´/30´´r)/3´R
						EJER. 1 Burpees
						EJER. 2 Flexiones de Codo topando un hombro (Izq-Der)
						EJER. 3 Chase de Rabit
						EJER. 4 Plancha (Moviendo cadera de izq. A der.)
						EJER. 5 Step topando codo contario
						EJER. 6 Mountain Climbers
						EJER. 7 Sentadilla con salto
						EJERC. Salto a la grada
						
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 18) {
						$rdate = '2021-08-07 07:30';

						$comments = "ESTIRAMIENTO (10’)
						10 Ejercicios (Individual)
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					}
					$stmt->execute();
				}
			}

			if ($peso > 160) {

				$status = 'PENDING';

				for ($i = 1; $i <= 18; $i++) {

					if ($i == 1) {
						$rdate = '2021-08-02 06:45';
						$comments = "CALENTAMIENTO (10’)
						Calentamiento activo (Ejercicios dirigidos)
						
									";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 2) {
						$rdate = '2021-08-02 07:00';

						$comments = "PARTE ESPECÍFICA (40’)
						PARTE ESPECÍFICA (40’)
						Flex. codo (04x25/30´´r)
						Abdominales  (4x25/30´´r)
						Trote continuo 5 km
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 3) {
						$rdate = '2021-08-02 07:30';

						$comments = "ESTIRAMIENTO (10’)
						10 ejercicios (Individual)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 4) {
						$rdate = '2021-08-03 06:45';

						$comments = "CALENTAMIENTO (10’)
						Calentamiento activo (Ejercicios dirigidos)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 5) {
						$rdate = '2021-08-03 07:00';

						$comments = "PARTE ESPECÍFICA (40’)
						4x(400m/40´´r + 800m/1’r)/4´R
						Flex. Codo 4x25/30`r
						Abdominales 4x25x30`r
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 6) {
						$rdate = '2021-08-03 07:30';

						$comments = "ESTIRAMIENTO (10’)
						10 ejercicios (Individual)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 7) {
						$rdate = '2021-08-04 06:45';

						$comments = "CALENTAMIENTO (10’)
						Calentamiento activo (Ejercicios dirigidos)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 8) {
						$rdate = '2021-08-04 07:00';

						$comments = "PARTE ESPECÍFICA (40’)
						Trote continuo 7 km
						Flex. codo (04x25/30´´r)
						Abdominales  (4x25/30´´r)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 9) {
						$rdate = '2021-08-04 07:30';

						$comments = "ESTIRAMIENTO (10’)
						10 ejercicios (Individual)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 10) {
						$rdate = '2021-08-05 06:45';

						$comments = "CALENTAMIENTO (10’)
						Calentamiento activo (Ejercicios dirigidos)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 11) {
						$rdate = '2021-08-05 07:00';

						$comments = "PARTE ESPECÍFICA (40’)
						2x(4x1´ Carreras en subida 95%/ 1´30´´r)/3´
						10´ Trote aeróbico
						Flex. codo (04x25/30´´r)
						Abdominales  (4x25/30´´r)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 12) {
						$rdate = '2021-08-05 07:30';

						$comments = "ESTIRAMIENTO (10’)
						10 ejercicios (Individual)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 13) {
						$rdate = '2021-08-06 06:45';

						$comments = "CALENTAMIENTO (10’)
						Calentamiento activo (Ejercicios dirigidos)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 14) {
						$rdate = '2021-08-06 07:00';

						$comments = "PARTE ESPECÍFICA (40’)
						DEPORTES
						Ecuavoley
						Fútbol
						Baloncesto
						Gimnasio
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 15) {
						$rdate = '2021-08-06 07:30';

						$comments = "ESTIRAMIENTO (10’)
						10 ejercicios (Individual)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 16) {
						$rdate = '2021-08-07 06:45';

						$comments = "CALENTAMIENTO (10’)
						Calentamiento activo (Ejercicios dirigidos)
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 17) {
						$rdate = '2021-08-07 07:00';

						$comments = "PARTE ESPECÍFICA (40’)
						CIRCUITO CROSSFIT
						TABATA
						4X(8X1´/30´´r)/3´R
						EJER. 1 sentadillas con cambio de lado
						EJER. 2 Flexiones de codo y giro de tronco
						EJER. 3 Flexiones Tigre
						EJER. 4 20 m Caminata cangrejo
						EJER. 5 Chase de rabit
						EJER. 6 Triceps en gradas
						EJER. 7 Lounges
						EJER. 8 Burpees
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					} elseif ($i == 18) {
						$rdate = '2021-08-07 07:30';

						$comments = "ESTIRAMIENTO (10’)
						10 ejercicios (Individual
						
						";
						$stmt->bindParam(":uid", $uid, PDO::PARAM_STR);
						$stmt->bindParam(":rdate", $rdate, PDO::PARAM_STR);
						$stmt->bindParam(":status", $status, PDO::PARAM_STR);
						$stmt->bindParam(":comments", $comments, PDO::PARAM_STR);
					}
					$stmt->execute();
				}
			}


			
		}
	}

	/*=============================================
	MOSTRAR CLIENTES
	=============================================*/

	static public function mdlMostrarClientes($tabla, $item, $valor)
	{

		if ($item != null) {

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");

			$stmt->bindParam(":" . $item, $valor, PDO::PARAM_STR);

			$stmt->execute();

			return $stmt->fetch();
		} else {

			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

			$stmt->execute();

			return $stmt->fetchAll();
		}

		$stmt->close();

		$stmt = null;
	}

	/*=============================================
	EDITAR CLIENTE
	=============================================*/

	static public function mdlEditarCliente($tabla, $datos)
	{

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET nombre = :nombre, documento = :documento, email = :email, telefono = :telefono, direccion = :direccion, fecha_nacimiento = :fecha_nacimiento WHERE id = :id");

		$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
		$stmt->bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
		$stmt->bindParam(":documento", $datos["documento"], PDO::PARAM_INT);
		$stmt->bindParam(":email", $datos["email"], PDO::PARAM_STR);
		$stmt->bindParam(":telefono", $datos["telefono"], PDO::PARAM_STR);
		$stmt->bindParam(":direccion", $datos["direccion"], PDO::PARAM_STR);
		$stmt->bindParam(":fecha_nacimiento", $datos["fecha_nacimiento"], PDO::PARAM_STR);

		if ($stmt->execute()) {

			return "ok";
		} else {

			return "error";
		}

		$stmt->close();
		$stmt = null;
	}

	/*=============================================
	ELIMINAR CLIENTE
	=============================================*/

	static public function mdlEliminarCliente($tabla, $datos)
	{

		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

		$stmt->bindParam(":id", $datos, PDO::PARAM_INT);

		if ($stmt->execute()) {

			return "ok";
		} else {

			return "error";
		}

		$stmt->close();

		$stmt = null;
	}

	/*=============================================
	ACTUALIZAR CLIENTE
	=============================================*/

	static public function mdlActualizarCliente($tabla, $item1, $valor1, $valor)
	{

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET $item1 = :$item1 WHERE id = :id");

		$stmt->bindParam(":" . $item1, $valor1, PDO::PARAM_STR);
		$stmt->bindParam(":id", $valor, PDO::PARAM_STR);

		if ($stmt->execute()) {

			return "ok";
		} else {

			return "error";
		}

		$stmt->close();

		$stmt = null;
	}
}
