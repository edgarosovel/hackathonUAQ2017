<?php
	class Usuario_Model() extends Model
	{
		function __construct()
		{
				parent::__construct();
		}

		private function crear_sesion($nombre)
		{
        	Session::setValue('nombre', $nombre);
    	}

		public function iniciar_sesion($correo, $password)
		{

			$registro = $this->db->select('*', 'Usuario', "correo='".$correo."'");
			if(is_array($registro))
			{
				if($registro['password'] == Hash::create(ALGOR,$password,KEY))
				{
						$this->crear_sesion($correo);
						return 1; //Inicio de Sesion Exitoso
				}
				else
				{
					return 2; //Fallido Inicio de Sesion
				}
			}
			else
			{
				return 3; //No se encontro registro
			}
		}

		public function registrar($correo, $nombre, $password, $cp, $fecha_nacimiento, $no_integrantes){
    		$registro = $this->db->select('correo','Usuario',"correo = ".$correo);
    		if($registro!=null)
    		{
   				return 0; //Registro Existente
    		}
    		else
    		{
	    		$pass = Hash::create(ALGOR,$password,KEY);
	    		$datos = array('correo'=>$correo, 'nombre'=>$nombre, 'password'=>$pass, 'cp'=>$cp, 'fecha_nacimiento'=>$fecha_nacimiento, 'no_integrantes'=>$no_integrantes);

	    		if($this->db->insert($datos,'Usuario'))
	    		{
	    			return 1; //Usuario Registrado
	    		}
	    		else
	    		{
	    			return 2; //Error al Registrar
	    		}
    		}
    	}
	}
?>