<?php
	class Sensor_model extends Model
	{
		function __construct()
		{
			parent::__construct();
		}

		public function set_data($id_usuario, $litros)
		{

			$datos_sensor = array('id_datos'=>0, 'fecha'=>date('Y-m-d H:i:s'), 'id_usuario'=>$id_usuario, 'litros'=>$litros);
			if($this->db->insert($datos_sensor,'Datos_sensor'));
			{
				return 1; //Datos Almacenados
			}
			else
			{
				return 2; //Error al Almacenar Datos
			}
		}

		public function datos_del_dia($id_usuario){
			$datos = $this->db->select('*','Datos_sensor','id_usuario='.$id_usuario.'and fecha>'.date("Y-m-d"));
			return $datos;
		}
	}
?>