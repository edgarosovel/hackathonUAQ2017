<?php
	class Emulador_model extends Model
	{
		function __construct()
		{
			parent::__construct();
		}

		public function emular($id_usuario, $litros)
		{
			$datos_sensor = array('id_datos'=>0, 'fecha'=>date('Y-m-d H:i:s'), 'id_usuario'=>$id_usuario, 'litros'=>$litros);
			$this->db->insert($datos_sensor,'Datos_sensor');
		}

	}
?>