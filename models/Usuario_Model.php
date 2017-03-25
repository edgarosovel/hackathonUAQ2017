<?php
	class Usuario_model extends Model
	{
		function __construct()
		{
				parent::__construct();
		}

		private function crear_sesion($id_usuario, $correo, $nombre)
		{
			Session::setValue('correo', $correo);
			Session::setValue('id_usuario', $id_usuario);
        	Session::setValue('nombre', $nombre);
    	}

		public function iniciar_sesion($correo, $pass)
		{
			$registro = $this->db->select('*', 'Usuario', "correo='".$correo."'");
			if(is_array($registro))
			{
				if($registro['pass'] == Hash::create(ALGOR,$pass,KEY))
				{
						$this->crear_sesion($registro['id_usuario'], $registro['correo'], $registro['nombre']);
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

		public function registrar($correo, $nombre, $pass, $cp, $no_integrantes){
    		$registro = $this->db->select('correo','Usuario',"correo = ".$correo);
    		if($registro!=null)
    		{
   				return 0; //Registro Existente
    		}
    		else
    		{
	    		$pass = Hash::create(ALGOR,$pass,KEY);
	    		$datos = array('id_usuario'=>0, 'correo'=>$correo, 'nombre'=>$nombre, 'pass'=>$pass, 'cp'=>$cp, 'no_integrantes'=>$no_integrantes);

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

    	public function get_dato($id_usuario, $dato)
		{
			$registro = $this->db->select('*', 'Usuario', "id_usuario='".$id_usuario."'");
			if($registro != Null)
			{
				$datos_de_usuario = array(
					'correo' => $registro['correo'],
					'nombre' => $registro['nombre'],
					'colonia' => $registro['id_colonia'],
					'integrantes' => $registro['no_integrantes'],
					'fecha_nacimiento' => $registro['fecha_nacimiento']
					);

				return $datos_de_usuario[$dato];
			}
			else
			{
				return 0; //Usuario Inexistente
			}
		}
	}
?>