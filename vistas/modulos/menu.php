<aside class="main-sidebar">

	<section class="sidebar">

		<ul class="sidebar-menu">

			<?php

			if ($_SESSION["perfil"] == "Administrador") {

				echo '<li class="active">

				<a href="inicio">

					<i class="fa fa-home"></i>
					<span>Inicio</span>

				</a>

			</li>

			<li>

				<a href="usuarios">

					<i class="fa fa-user"></i>
					<span>Usuarios</span>

				</a>

			</li>';
			}

			if ($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Especial") {

				echo '<li>

				<a href="categorias">

					<i class="fa fa-th"></i>
					<span>Categorías</span>

				</a>

			</li>

			<li class="treeview">

				<a href="#">

					<i class="fa fa-yoast"></i>
					<span>Ejercicios</span>

				</a>

				<ul class="treeview-menu">
					
				<li>

					<a href="aerobicos">
						
						<i class="fa fa-circle-o"></i>
						<span>Aeróbicos</span>

					</a>

				</li>

				<li>

					<a href="flexibilidad">
						
						<i class="fa fa-circle-o"></i>
						<span>Flexibilidad</span>

					</a>

				</li>';

			if ($_SESSION["perfil"] == "Administrador") {

				echo '<li>

					<a href="fuerza">
						
						<i class="fa fa-circle-o"></i>
						<span>Fuerza y Resistencia</span>

					</a>

				</li>';
			}



			echo '</ul>

		</li>';
			}

			if ($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Vendedor") {

				echo '<li>

				<a href="#">

					<i class="fa fa-users"></i>
					<span>Usuarios fitness</span>
					<span class="pull-right-container">
					
						<i class="fa fa-angle-left pull-right"></i>

					</span>
				</a>

			</li>';
			}

			if ($_SESSION["perfil"] == "Administrador" || $_SESSION["perfil"] == "Vendedor") {

				echo '<li class="treeview">

				<a href="#">

					<i class="fa fa-list-ul"></i>
					
					<span>Estadísticas</span>
					
					<span class="pull-right-container">
					
						<i class="fa fa-angle-left pull-right"></i>

					</span>

				</a>

				<ul class="treeview-menu">
					
					<li>

						<a href="#">
							
							<i class="fa fa-circle-o"></i>
							<span>Recomendaciones</span>

						</a>

					</li>

					<li>

						<a href="#">
							
							<i class="fa fa-circle-o"></i>
							<span>Verificar Estadística</span>

						</a>

					</li>';

				if ($_SESSION["perfil"] == "Administrador") {

					echo '<li>

						<a href="#">
							
							<i class="fa fa-circle-o"></i>
							<span>Reporte ejercicios</span>

						</a>

					</li>';
				}



				echo '</ul>

			</li>';

			echo '<li class="treeview">

			<a href="#">

				<i class="fa fa-apple"></i>
				
				<span>Nutrición</span>
				
				<span class="pull-right-container">
				
					<i class="fa fa-angle-left pull-right"></i>

				</span>

			</a>

			<ul class="treeview-menu">
				
				<li>

					<a href="#">
						
						<i class="fa fa-circle-o"></i>
						<span>Admin. Nutrición </span>

					</a>

				</li>

				<li>

					<a href="#">
						
						<i class="fa fa-circle-o"></i>
						<span>Verificar Nutrición</span>

					</a>

				</li>';

			if ($_SESSION["perfil"] == "Administrador") {

				echo '<li>

					<a href="#">
						
						<i class="fa fa-circle-o"></i>
						<span>Reporte Nutrición</span>

					</a>

				</li>';
			}



			echo '</ul>

		</li>';
				echo '</ul>

				</li>';
			}
			
			?>

		</ul>

	</section>

</aside>