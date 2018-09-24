<?php 

	/**
	 * 
	 */
	class usuario{
		private $conexion;
		function __construct()
		{
			require_once('conexion.php');
			$this->conexion = new conexion();
			$this->conexion->conectar();
		}

		function identificar($usuario,$contrasena){
			//$pass = sha1($contrasena);
			$sql = "SELECT * FROM USUARIO WHERE USUARIO = '$usuario' && CONTRASENA = '$contrasena'";
			$resultados = $this->conexion->conexion->query($sql);
			if ($resultados->num_rows > 0) {
				$r = $resultados->fetch_array();
			}
			else{
				$r[0] = 0;
			}
			return $r;
			$this->conexion->cerrar();
		}
	}

	


 ?>