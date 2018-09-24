<?php 
	/**
	 * 
	 */
	class conexion 
	{
		private $servidor;
		private $usuario;
		private $contraseña;
		private $basededatos;
		public $conexion;
		
		function __construct()
		{
			$this->servidor = "localhost";
			$this->usuario = "root";
			$this->contraseña = "";
			$this->basededatos = "ipsSMC";
		}

		function conectar(){
			$this->conexion = new mysqli($this->servidor,$this->usuario,$this->contraseña,$this->basededatos);
		}

		function cerrar(){
			$this->conexion->close();
		}
	}


 ?>