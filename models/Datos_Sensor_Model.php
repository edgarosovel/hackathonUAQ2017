<?php
	class Datos_Sensor_model extends Model
	{
		function __construct()
		{
			parent::__construct();
		}

		public function set_data($fecha, $id_usuario, $litros)
		{
			$registro = $this->db->select('id_usuario', 'Usuario', "id_usuario='".$id_usuario."'");
			if($registro != Null)
			{
				$datos_sensor = array('id_datos'=>0, 'fecha'=>$fecha, 'id_usuario'=>$id_usuario, 'litros'=>$litros);

				if($this->db->insert($datos_sensor,'Datos_sensor'));
				{
					return 1; //Datos Almacenados
				}
				else
				{
					return 2; //Error al Almacenar Datos
				}
			}
			else
			{
				return 0; //El Usuario no Existe
			}
		}

		public function convertir_a_metros_cubicos($id_datos)
		{
			$litros = $this->db->select('litros', 'Datos_sensor', "id_datos='".$id_datos."'");
			return $litros * 1000;
		}

	}
?>