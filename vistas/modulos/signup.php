<div id="registro"></div>

<div class="login-box" style="background-image: url('../img/plantilla/registro.jpg'); width: 660px; margin: -2% auto;">


  <br><br>
  <div class="registro-box-body">

    <p class="login-box-msg">Registro de usuario</p>

    <form method="post">

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

            <input type="number" class="form-control" placeholder="Cédula" name="cedula" required>
            <span class="glyphicon glyphicon glyphicon-list-alt form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="email" class="form-control" placeholder="Correo" name="correo" required>
            <span class="glyphicon glyphicon glyphicon-envelope form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">
            <label for="exampleFormControlSelect1">Fecha de Nacimiento</label>
            <input type="date" class="form-control" placeholder="Fecha de Nacimiento" name="fechaNacimiento" required>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="number" class="form-control" placeholder="Estatura" name="estatura" required>
            <span class="glyphicon glyphicon glyphicon-resize-full form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="number" class="form-control" placeholder="Peso" name="peso" required>
            <span class="glyphicon glyphicon glyphicon glyphicon-filter form-control-feedback"></span>

          </div>


          <div class="form-group has-feedback">

            <label for="exampleFormControlSelect1">Enfermedades</label>
            <select class="form-control" id="exampleFormControlSelect1">
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
              <option>5</option>
            </select>
            <span class="glyphicon glyphicon glyphicon-resize-full form-control-feedback"></span>

          </div>

        </div>

        <div class="col-xs-6">

          <div class="form-group has-feedback">

            <input type="text" class="form-control" placeholder="Tipo de sangre" name="sangre" required>
            <span class="glyphicon glyphicon glyphicon-plus form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="text" class="form-control" placeholder="Estado civil" name="civil" required>
            <span class="glyphicon glyphicon glyphicon-sort form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="number" class="form-control" placeholder="Días que practica algún deporte" name="deporte" required>
            <span class="glyphicon glyphicon glyphicon glyphicon-plus-sign form-control-feedback"></span>

          </div>
          <div class="form-group has-feedback">

            <label for="exampleFormControlSelect1">Vacunado contra el covid?</label>
            <select class="form-control" id="covid">
              <option>Sí</option>
              <option>NO</option>

            </select>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="number" class="form-control" placeholder="Número de dosis diarias" name="dosis" required>
            <span class="glyphicon glyphicon-baby-formula form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <label for="exampleFormControlSelect1">Presenta cirugías?</label>
            <select class="form-control" id="cirugias">
              <option>Sí</option>
              <option>NO</option>

            </select>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="number" class="form-control" placeholder="Porcentaje de discapacidad %" name="discapacidad" required>
            <span class="	glyphicon glyphicon-remove-circle form-control-feedback"></span>

          </div>


          


          <div class="form-group has-feedback">

            <input type="text" class="form-control" placeholder="Usuario" name="usuario" required>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>

          </div>

          <div class="form-group has-feedback">

            <input type="password" class="form-control" placeholder="Contraseña" name="contrasena" required>
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

  </div>

</div>