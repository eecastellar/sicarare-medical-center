<?php 
        require_once('../Modelos/usuario.php');
        $boton = $_POST['button'];
        if ($boton == 'salir') {
            session_start();
            session_destroy();
        }else{
            $usuario = $_POST['usuario'];
            $contrasena = $_POST['contrasena'];

            $ins = new usuario();
            $array = $ins->identificar($usuario,$contrasena);
            if ($array[0] == 0) {
                echo '0';
            }else{
                session_start();
                $_SESSION['USUARIO'] = 'YES';
                $_SESSION['NOMBRE'] = $array[1];
            } 
        }
	




 ?>