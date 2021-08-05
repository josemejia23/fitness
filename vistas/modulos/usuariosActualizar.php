<?php



?>
<div class="content-wrapper">

  <section class="content-header">

    <h1>

      Actualizar Usuario

    </h1>

    <ol class="breadcrumb">

      <li><a href="inicio"><i class="fa fa-dashboard"></i> Inicio</a></li>

      <li class="active">Administrar usuarios</li>

    </ol>

  </section>

  <section class="content">

    <div class="box">



      <div class="box-body">

        <table class="table table-bordered table-striped dt-responsive tablas" width="100%">

          <thead>

            <tr>


              <th>Nombre</th>
              <th>Usuario</th>
              <th>Foto</th>
              <th>Perfil</th>
              <th>Estado</th>
              <th>Último login</th>
              <th>Acciones</th>

            </tr>

          </thead>

          <tbody>

            <?php

            $item = "usuario";
            $valor = $_SESSION["usuario"];


            $usuarios = ControladorUsuarios::ctrMostrarUsuarios($item, $valor);



            echo ' <tr>
                 
                  <td>' . $usuarios["nombre"] . '</td>
                  <td>' . $usuarios["usuario"] . '</td>';

            if ($usuarios["foto"] != "") {

              echo '<td><img src="' . $usuarios["foto"] . '" class="img-thumbnail" width="40px"></td>';
            } else {

              echo '<td><img src="vistas/img/usuarios/default/anonymous.png" class="img-thumbnail" width="40px"></td>';
            }

            echo '<td>' . $usuarios["perfil"] . '</td>';

            if ($usuarios["estado"] != 0) {

              echo '<td><button class="btn btn-success btn-xs btnActivar" idUsuario="' . $usuarios["id"] . '" estadoUsuario="0">Activado</button></td>';
            } else {

              echo '<td><button class="btn btn-danger btn-xs btnActivar" idUsuario="' . $usuarios["id"] . '" estadoUsuario="1">Desactivado</button></td>';
            }

            echo '<td>' . $usuarios["ultimo_login"] . '</td>
                  <td>

                    <div class="btn-group">
                        
                      <button class="btn btn-warning btnEditarUsuario" idUsuario="' . $usuarios["id"] . '" data-toggle="modal" data-target="#modalEditarUsuario"><i class="fa fa-pencil"></i></button>

                      <button class="btn btn-danger btnEliminarUsuario" idUsuario="' . $usuarios["id"] . '" fotoUsuario="' . $usuarios["foto"] . '" usuario="' . $usuarios["usuario"] . '"><i class="fa fa-times"></i></button>

                    </div>  

                  </td>

                </tr>';




            ?>

          </tbody>

        </table>

      </div>

    </div>

  </section>

</div>

<!--=====================================
MODAL AGREGAR USUARIO
======================================-->

<div id="modalAgregarUsuario" class="modal fade" role="dialog">

  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Agregar usuario</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTRADA PARA EL NOMBRE -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-user"></i></span>

                <input type="text" class="form-control input-lg" name="nuevoNombre" placeholder="Ingresar nombre" required>

              </div>

            </div>

            <!-- ENTRADA PARA EL USUARIO -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-key"></i></span>

                <input type="text" class="form-control input-lg" name="nuevoUsuario" placeholder="Ingresar usuario" id="nuevoUsuario" required>

              </div>

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-lock"></i></span>

                <input type="password" class="form-control input-lg" name="nuevoPassword" placeholder="Ingresar contraseña" required>

              </div>

            </div>

            <!-- ENTRADA PARA SELECCIONAR SU PERFIL -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-users"></i></span>

                <select class="form-control input-lg" name="nuevoPerfil">

                  <option value="">Selecionar perfil</option>

                  <option value="Administrador">Administrador</option>

                  <option value="Especial">Especial</option>


                </select>

              </div>

            </div>

            <!-- ENTRADA PARA SUBIR FOTO -->

            <div class="form-group">

              <div class="panel">SUBIR FOTO</div>

              <input type="file" class="nuevaFoto" name="nuevaFoto">

              <p class="help-block">Peso máximo de la foto 2MB</p>

              <img src="vistas/img/usuarios/default/anonymous.png" class="img-thumbnail previsualizar" width="100px">

            </div>

          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Guardar usuario</button>

        </div>

        <?php

        $crearUsuario = new ControladorUsuarios();
        $crearUsuario->ctrCrearUsuario();

        ?>

      </form>

    </div>

  </div>

</div>

<!--=====================================
MODAL EDITAR USUARIO
======================================-->

<div id="modalEditarUsuario" class="modal fade" role="dialog">

  <div class="modal-dialog">

    <div class="modal-content">

      <form role="form" method="post" enctype="multipart/form-data">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header" style="background:#3c8dbc; color:white">

          <button type="button" class="close" data-dismiss="modal">&times;</button>

          <h4 class="modal-title">Editar usuario</h4>

        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

          <div class="box-body">

            <!-- ENTRADA PARA EL NOMBRE -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-user"></i></span>

                <input type="text" class="form-control input-lg" id="editarNombre" name="editarNombre" value="" required>

              </div>

            </div>

            <!-- ENTRADA PARA EL USUARIO -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-key"></i></span>

                <input type="text" class="form-control input-lg" id="editarUsuario" name="editarUsuario" value="" readonly>

              </div>

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-lock"></i></span>

                <input type="password" class="form-control input-lg" name="editarPassword" placeholder="Escriba la nueva contraseña">

                <input type="hidden" id="passwordActual" name="passwordActual">

              </div>

            </div>

            <!-- ENTRADA PARA SELECCIONAR SU PERFIL -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-users"></i></span>

                <select class="form-control input-lg" name="editarPerfil">

                  <option value="" id="editarPerfil"></option>

                  <option value="Administrador">Administrador</option>

                  <option value="Especial">Especial</option>

                  <option value="Vendedor">Vendedor</option>

                </select>

              </div>

            </div>

            <!-- ENTRADA PARA SUBIR FOTO -->

            <div class="form-group">

              <div class="panel">SUBIR FOTO</div>

              <input type="file" class="nuevaFoto" name="editarFoto">

              <p class="help-block">Peso máximo de la foto 2MB</p>

              <img src="vistas/img/usuarios/default/anonymous.png" class="img-thumbnail previsualizarEditar" width="100px">

              <input type="hidden" name="fotoActual" id="fotoActual">

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-user"></i></span>

                <input type="text" class="form-control input-lg" placeholder="Nombres" name="editarNombre" required>



              </div>

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-user"></i></span>

                <input type="text" class="form-control input-lg" name="editarApellido" placeholder="Apellidos">


              </div>

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-list"></i></span>

                <input type="text" class="form-control input-lg" name="editarCedula" placeholder="Cédula">



              </div>

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-envelope-square"></i></span>

                <input type="text" class="form-control input-lg" name="editarCorreo" placeholder="Escriba el nuevo correo">


              </div>

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-calendar"></i></span>

                <input type="date" class="form-control input-lg" name="editarFechaNacimiento" placeholder="Escriba la nueva fecha">


              </div>

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-list-ol"></i></span>

                <input type="number" class="form-control input-lg" name="editarEstatura" placeholder="Escriba la nueva estatura">

              </div>

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-balance-scale"></i></span>

                <input type="number" class="form-control input-lg" name="editarPeso" placeholder="Escriba el nuevo peso">



              </div>

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"></span>

                <label for="exampleFormControlSelect1">Enfermedades</label>
                <select class="form-control" name="editarEnfermedades">
                  <option>0</option>
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                </select>


              </div>

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-plus"></i></span>

                <input type="text" class="form-control input-lg" name="editarSangre" placeholder="Escriba el tipo de sangre">


              </div>

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa "></i></span>

                <input type="text" class="form-control input-lg" name="editarCivil" placeholder="Escriba el estado civil">


              </div>

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-futbol-o"></i></span>

                <input type="number" class="form-control input-lg" name="editarDeporte" placeholder="Días que practica algún deporte a la semana">


              </div>

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <label for="exampleFormControlSelect1">Vacunado contra el covid?</label>
                <select class="form-control" name="editarCovid">
                  <option>Sí</option>
                  <option>NO</option>

                </select>


              </div>

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-sort-numeric-asc"></i></span>

                <input type="number" class="form-control input-lg" name="editarDosis" placeholder="Número de dosis de vacuna contra covid">

              </div>

            </div>


            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <label for="exampleFormControlSelect1">Presenta cirugías?</label>
                <select class="form-control" name="editarCirugias">
                  <option>Sí</option>
                  <option>NO</option>

                </select>

              </div>

            </div>

            <!-- ENTRADA PARA LA CONTRASEÑA -->

            <div class="form-group">

              <div class="input-group">

                <span class="input-group-addon"><i class="fa fa-"></i></span>

                <input type="number" class="form-control input-lg" name="editarDiscapacidad" placeholder="Porcentaje de discapacidad %">

              </div>

            </div>

            


          </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer">

          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Salir</button>

          <button type="submit" class="btn btn-primary">Modificar usuario</button>

        </div>

        <?php

        $editarUsuario = new ControladorUsuarios();
        $editarUsuario->ctrEditarUsuario();

        ?>

      </form>

    </div>

  </div>

</div>

<?php

$borrarUsuario = new ControladorUsuarios();
$borrarUsuario->ctrBorrarUsuario();

?>