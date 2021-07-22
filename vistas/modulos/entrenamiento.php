<?php

if ($_SESSION["covid"] == "") {

    echo '<script>

    window.location = "inicio";

  </script>';

    return;
}

?>

<div class="content-wrapper">

    <section class="content-header">

        <h1>

            Entrenamiento de Artillería

        </h1>

        <ol class="breadcrumb">

            <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>

            <li class="active">Administrar clientes</li>

        </ol>

    </section>

    <section class="content">

        <div class="box">



            <div class="box-body">

                <table class="table table-bordered table-striped dt-responsive " width="100%">

                    <thead>
                        <tr>
                            <th style=" width:100%; text-align: center;" colspan="12">SEMANA 1</th>
                        </tr>
                        <tr>
                            <th>Hora</th>
                            <th>Lunes</th>
                            <th>Martes</th>
                            <th>Miércoles</th>
                            <th>Jueves</th>
                            <th>Viernes</th>
                            <th>Sábado</th>
                            <th>Resp.</th>
                            <th>Lugar</th>
                        </tr>

                        <tr>
                            <td rowspan="4">
                                <p>06H45 A 08H00</p>
                            </td>
                            <td>
                                <p>CALENTAMIENTO (10’) <br>
                                    Calentamiento activo <br>
                                    (Ejercicios dirigidos)
                                </p>
                            </td>
                            <td>
                                <p>CALENTAMIENTO (10’) <br>
                                    Calentamiento activo <br>
                                    (Ejercicios dirigidos)
                                </p>
                            </td>

                            <td>
                                <p>CALENTAMIENTO (10’) <br>
                                    Calentamiento activo <br>
                                    (Ejercicios dirigidos)
                                </p>
                            </td>

                            <td>
                                <p>CALENTAMIENTO (10’) <br>
                                    Calentamiento activo <br>
                                    (Ejercicios dirigidos)
                                </p>
                            </td>

                            <td>
                                <p>CALENTAMIENTO (10’) <br>
                                    Calentamiento activo <br>
                                    (Ejercicios dirigidos)
                                </p>
                            </td>

                            <td>
                                <p>CALENTAMIENTO (10’) <br>
                                    Calentamiento activo <br>
                                    (Ejercicios dirigidos)
                                </p>
                            </td>

                            <td rowspan="4">
                                <p>CMDTES. DE BÍA.
                                </p>
                            </td>
                            <td rowspan="4">
                                <p>Campamento
                                </p>
                            </td>
                        </tr>


                        <tr>
                            <td>
                                <?php

                                if ($_SESSION["covid"] == "Sí") {
                                    echo '  <p>PARTE ESPECÍFICA (40’) <br>
                                            Trote continuo 6 km <br>
                                            Flex. codo (04x25/30´´r) (Diferentes modalidades) <br>
                                            Abdominales (Diferentes modalidades) (4x25/30´´r) <br>
                                            </p>';
                                             }
                                else {
                                    echo '  <p>PARTE ESPECÍFICA (40’) <br>
                                    Trote continuo 7 km <br>
                                    Flex. codo (04x25/30´´r)<br>
                                    Abdominales  (4x25/30´´r) <br>
                                    </p>';
                                }
                                ?>

                            </td>
                            <td>
                                <p>PARTE ESPECÍFICA (40’) <br>
                                    Fartlek 15x (1’ al 85% + 1’ al 85%) <br>
                                    Trote regenerativo 2 km al 60% <br>
                                    Burpees (03x10/40`r) <br>
                                    Abdominales (4x25/45´´r) <br>
                                    Barras 3x5
                                </p>
                            </td>
                            <td>
                                <p>PARTE ESPECÍFICA (40’) <br>
                                    Circuito Fuerza 4X(1´CADA ESTACIÓN) <br>
                                    EST.1 – Flex. Codo Diamante <br>
                                    EST.2 – Plancha <br>
                                    EST.3 – Flexión codo (Topando el Hombro) <br>
                                    EST.4 – Sentadillas <br>
                                    EST. 5 – Mointain Climber <br>
                                    EST. 6 - Burpees <br>
                                    Carrera 800m <br>
                                    (Después de terminar las 6 estaciones)

                                </p>
                            </td>
                            <td>
                                <p>PARTE ESPECÍFICA (40’) <br>
                                    2x(4 x 800 al 85-90% /1’ r)4´R <br>
                                    Trote regenerativo 800 m al 60% <br>
                                    Flex. codo (04x25/30´´r) <br>
                                    Abdominales (4x25/30´´r) <br>

                                </p>
                            </td>
                            <td>
                                <p>PARTE ESPECÍFICA (40’)
                                    DEPORTES <br>
                                    Ecuavoley <br>
                                    Fútbol <br>
                                    Baloncesto <br>
                                    Gimnasio <br>

                                </p>
                            </td>
                            <td>
                                <p>PARTE ESPECÍFICA (40’) <br>
                                    CIRCUITO CROSSFIT <br>
                                    TABATA <br>
                                    4X(8X1´/30´´r)/3´R <br>
                                    EJER. 1 Burpees <br>
                                    EJER. 2 Flexiones de Codo topando un hombro (Izq-Der) <br>
                                    EJER. 3 Chase de Rabit <br>
                                    EJER. 4 Plancha (Moviendo cadera de izq. A der.) <br>
                                    EJER. 5 Step topando codo contario <br>
                                    EJER. 6 Mountain Climbers <br>
                                    EJER. 7 Sentadilla con salto <br>
                                    EJERC. Salto a la grada <br>
                                </p>
                            </td>


                        </tr>


                        <tr>
                            <td>
                                <p>ESTIRAMIENTO (10’) <br>
                                    10 Ejercicios (Individual)

                                </p>
                            </td>
                            <td>
                                <p>ESTIRAMIENTO (10’) <br>
                                    10 Ejercicios (Individual)
                                </p>
                            </td>
                            <td>
                                <p>ESTIRAMIENTO (10’) <br>
                                    10 Ejercicios (Individual)

                                </p>
                            </td>
                            <td>
                                <p>ESTIRAMIENTO (10’) <br>
                                    10 Ejercicios (Individual)

                                </p>
                            </td>
                            <td>
                                <p>ESTIRAMIENTO (10’) <br>
                                    10 Ejercicios (Individual)

                                </p>
                            </td>
                            <td>
                                <p>ESTIRAMIENTO (10’) <br>
                                    10 Ejercicios (Individual)

                                </p>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <li><a href="https://www.youtube.com/watch?v=ZUx3QCH4Row" target="_blank">Trote continuo</a></li>
                                <li><a href="https://www.youtube.com/watch?v=afoS9irPXTI" target="_blank">Flexiones codo</a></li>
                                <li><a href="https://www.youtube.com/watch?v=GpVdIbdrHHs" target="_blank">Abdominales</a></li>
                            </td>
                            <td>
                                <li><a href="https://www.youtube.com/watch?v=_ZwyRKRFQhU" target="_blank">Fartlek</a></li>
                                <li><a href="https://www.youtube.com/watch?v=UPTxcwDmL_A" target="_blank">Trote regenerativo</a></li>
                                <li><a href="https://www.youtube.com/watch?v=IdxB68UzSSc" target="_blank">Burpees</a></li>
                                <li><a href="https://www.youtube.com/watch?v=GpVdIbdrHHs" target="_blank">Abdominales</a></li>
                                <li><a href="https://www.youtube.com/watch?v=e27gn09JXqw" target="_blank">Barras</a></li>
                            </td>
                            <td>
                                <li><a href="https://www.youtube.com/watch?v=fDQnxCmzcLM" target="_blank">Circuito Fuerza</a></li>
                                <li><a href="https://www.youtube.com/watch?v=_aVkZLSw6sc" target="_blank">Flexiones Diamante</a></li>
                                <li><a href="https://www.youtube.com/watch?v=TP3Obt8KZvQ" target="_blank">Plancha</a></li>
                                <li><a href="https://www.youtube.com/watch?v=NIR5iKc848Y" target="_blank">Flexiones codo hombro</a></li>
                                <li><a href="https://www.youtube.com/watch?v=FC1hvUPNtPw" target="_blank">Sentadillas</a></li>
                            </td>
                            <td>
                                <li><a href="https://www.youtube.com/watch?v=UPTxcwDmL_A" target="_blank">Trote regenerativo</a></li>
                                <li><a href="https://www.youtube.com/watch?v=afoS9irPXTI" target="_blank">Flexiones codo</a></li>
                                <li><a href="https://www.youtube.com/watch?v=GpVdIbdrHHs" target="_blank">Abdominales</a></li>
                            </td>
                            <td>
                                <li><a href="https://www.youtube.com/watch?v=1bx-Ol4uGZ4" target="_blank">Ecuavoley</a></li>
                                <li><a href="https://www.youtube.com/watch?v=6yUeQeOZkAE" target="_blank">Fútbol</a></li>
                                <li><a href="https://www.youtube.com/watch?v=GpVdIbdrHHs" target="_blank">Baloncesto</a></li>
                                <li><a href="https://www.youtube.com/watch?v=0YbBlQbrtIE" target="_blank">Gimnasio</a></li>
                            </td>
                            <td>
                                <li><a href="https://www.youtube.com/watch?v=lh1UszyPHfk" target="_blank">Crossfit</a></li>
                                <li><a href="https://www.youtube.com/watch?v=UW42IbX41Ew" target="_blank">Tabata</a></li>
                                <li><a href="https://www.youtube.com/watch?v=IdxB68UzSSc" target="_blank">Burpees</a></li>
                                <li><a href="https://www.youtube.com/watch?v=NIR5iKc848Y" target="_blank">Flexiones codo hombro</a></li>
                                <li><a href="https://www.youtube.com/watch?v=naYnjVUiCfA" target="_blank">Chase de rabit</a></li>
                                <li><a href="https://www.youtube.com/watch?v=TP3Obt8KZvQ" target="_blank">Plancha</a></li>
                                <li><a href="https://www.youtube.com/watch?v=5kK10N_5M8M" target="_blank">Step codo</a></li>
                                <li><a href="https://www.youtube.com/watch?v=bW37tKjzLdM" target="_blank">Mountain Climbers</a></li>
                                <li><a href="https://www.youtube.com/watch?v=PQkr_jS84-0" target="_blank">Sentadilla con salto</a></li>
                                <li><a href="https://www.youtube.com/watch?v=pigXNMA39nY" target="_blank">Salto a la grada</a></li>
                            </td>
                        </tr>


                    </thead>

                    <tbody>

                    </tbody>

                </table>

            </div>

        </div>

    </section>

</div>



<!--=====================================
MODAL EDITAR CLIENTE
======================================-->



<?php

$eliminarCliente = new ControladorClientes();
$eliminarCliente->ctrEliminarCliente();

?>