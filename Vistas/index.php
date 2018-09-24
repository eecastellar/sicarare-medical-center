<?php
    session_start();
    if (isset($_SESSION['USUARIO']) && $_SESSION['USUARIO'] == 'YES') {
}?>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <title>Sicarare Medical Center | Login</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="../Recursos/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="../Recursos/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="../Recursos/vendors/css/vendor.bundle.addons.css">
  <link rel="stylesheet" href="../Recursos/css/style.css">
  <link rel="shortcut icon" href="../Recursos/images/favicon.png" />
</head>
<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper auth-page">
      <div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
        <div class="row w-100">
          <div class="col-lg-4 mx-auto">
            <div class="auto-form-wrapper">

            	<!-- FORMULARIO PRINCIPAL-->
                
                	<!-- DIV USUARIO -->
	                <div class="form-group">
	                  <label class="label">Usuario</label>
	                  <div class="input-group">
	                    <input type="text" class="form-control" placeholder="Username" id="usuario" name="usuario">
	                    <div class="input-group-append">
	                      <span class="input-group-text">
	                        <i class="mdi mdi-check-circle-outline"></i>
	                      </span>
	                    </div>
	                  </div>
	                </div>
	                <!-- DIV CONTRASEÑA -->
	                <div class="form-group">
	                  <label class="label">Contraseña</label>
	                  <div class="input-group">
	                    <input type="password" class="form-control" id="contrasena"  name="contrasena" placeholder="*********">
	                    <div class="input-group-append">
	                      <span class="input-group-text">
	                        <i class="mdi mdi-check-circle-outline"></i>
	                      </span>
	                    </div>
	                  </div>
	                </div>
	                <!-- BOTON INGRESAR -->
	                <div class="form-group">
                            <button type="button" class="btn btn-primary submit-btn btn-block" onclick="confirmar();">Login</button>
	                </div>
                        
                        <div class="form-group alert alert-danger text-center" id="error" style="display:none;">
                            <p>Usuario ó contraseña incorecta</p>
                        </div>
	                <!--
	                <div class="text-block text-center my-3">
	                  <span class="text-small font-weight-semibold">Not a member ?</span>
	                  <a href="#" class="text-black 	text-small">Create new account</a>
	                </div> 
	            	-->
             
            </div>
            <ul class="auth-footer">
              	<li>
                	<a href="#">Condiciones</a>
              	</li>
              	<li>
                	<a href="#">Ayuda</a>
              	</li>
              	<li>
                	<a href="#">Terminos</a>
              	</li>
            </ul>
            <p class="footer-text text-center">copyright © 2018 Sicarare Medical Center. Todos los derechos reservados.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="../Recursos/js/login.js">	</script>
  <script src="../Recursos/js/jquery-1.11.2.js"></script>
  <!-- endinject -->
</body>

</html>