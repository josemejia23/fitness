<div id="registro"></div>

<div class="login-box" style="background-image: url('../img/plantilla/registro.jpg'); width: 660px; margin: -2% auto;">


  <br><br>
  <div class="registro-box-body">

    <p class="login-box-msg">Registro de usuario</p>

    <form role="form" method="post">

      <div class="row">
        <div class="col-xs-6">

          <div class="form-group has-feedback">

            <input type="text" class="form-control" placeholder="Nombres" name="nombre" required>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="text" class="form-control" placeholder="Apellidos" name="apellido" required>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="number" class="form-control" placeholder="Cédula" name="cedula" maxlength="10" required>
            <span class="glyphicon glyphicon glyphicon-list-alt form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="email" class="form-control" placeholder="Correo" name="correo" required>
            <span class="glyphicon glyphicon glyphicon-envelope form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">
            <label for="fechaNacimiento">Fecha de Nacimiento</label>
            <input type="date" class="form-control" placeholder="Fecha de Nacimiento" name="fechaNacimiento" id="fechaNacimiento" required>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="number" class="form-control" placeholder="Estatura (cm)" name="estatura" required>
            <span class="glyphicon glyphicon glyphicon-resize-full form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="number" class="form-control" placeholder="Peso (Kg)" name="peso" required>
            <span class="glyphicon glyphicon glyphicon glyphicon-filter form-control-feedback"></span>

          </div>


          <div class="form-group has-feedback">

            <label for="exampleFormControlSelect1">Enfermedades</label>
            <select class="form-control" name="enfermedades">
              <option>No</option>
              <option>Cardíacas</option>
              <option>Respiratorias</option>
              <option>Hipertensión</option>

            </select>


          </div>

          <div class="form-group has-feedback">

            <label for="exampleFormControlSelect1">Ha padecido covid?</label>
            <select class="form-control" name="padecido">
              <option>NO</option>
              <option>SÍ</option>

            </select>

          </div>

          <div class="form-group has-feedback">

            <label for="exampleFormControlSelect1">Tipo de sangre</label>
            <select class="form-control" name="sangre">
              <option>O-</option>
              <option>O+</option>
              <option>A-</option>
              <option>A+</option>
              <option>B-</option>
              <option>B+</option>
              <option>AB-</option>
              <option>AB+</option>
            </select>

          </div>


        </div>

        <div class="col-xs-6">


          <div class="form-group has-feedback">

            <input type="text" class="form-control" placeholder="Estado civil" name="civil" required>
            <span class="glyphicon glyphicon glyphicon-sort form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="number" class="form-control" placeholder="Días que practica algún deporte a la semana" name="deporte" required>
            <span class="glyphicon glyphicon glyphicon glyphicon-plus-sign form-control-feedback"></span>

          </div>
          <div class="form-group has-feedback">

            <label for="exampleFormControlSelect1">Vacunado contra el covid?</label>
            <select class="form-control" name="covid">
              <option>Sí</option>
              <option>NO</option>

            </select>


          </div>

          <div class="form-group has-feedback">

            <input type="number" class="form-control" placeholder="Número de dosis de vacuna contra covid" name="dosis" required>
            <span class="glyphicon glyphicon-baby-formula form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <label for="exampleFormControlSelect1">Presenta cirugías?</label>
            <select class="form-control" name="cirugias">
              <option>Sí</option>
              <option>NO</option>

            </select>


          </div>

          <div class="form-group has-feedback">

            <input type="number" class="form-control" placeholder="Porcentaje de discapacidad %" name="discapacidad" required>
            <span class="	glyphicon glyphicon-remove-circle form-control-feedback"></span>

          </div>

          <div class="form-group has-feedbak">

            <label for="locDiscapacidad">Localización Discapacidad</label>
            <select class="form-control" name="locDiscapacidad">
            <option>No</option>
              <option>Tren Superior</option>
              <option>Tren inferior</option>

            </select>


          </div>


          <div class="form-group has-feedback">

            <input type="text" class="form-control" placeholder="Usuario" name="usuario" required>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="password" class="form-control" placeholder="Contraseña" name="password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>

          </div>
        </div>
      </div>
      <div class="row">

        <div class="col-xs-12">

          <button type="submit" class="btn btn-primary btn-block btn-flat">Registrarse</button>

        </div>

      </div>



      <?php

      $login = new ControladorUsuarios();
      $login->ctrIngresoUsuario();

      ?>

    </form>

    <?php

    $crearCliente = new ControladorClientes();
    $crearCliente->ctrCrearCliente();

    $crearActividad = new ModeloActividad();

    $crearActividad->mdlIngresarActividad();

    ?>


  </div>

</div>