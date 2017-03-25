<?php
	class Registro_Model() extends Model
	{
		function __construct()
		{
			parent::__construct();
		}

		public function aniadir_recibo($id_usuario, $pago, $metros_cubicos, $fecha_recibo)
		{
			$registro = $this->db->select('id_usuario', 'Usuario', "id_usuario='".$id_usuario."'");
			if($registro != Null)
			{
				$datos_recibo = array('id_usuario'=>$id_usuario, 'pago'=>$pago, 'metros_cubicos'=>$metros_cubicos, 'fecha_recibo'=>$fecha_recibo);

				if($this->db->insert($datos_recibo,'Registro_mensual'))
				{
					return 1 //Recibo Registrado
				}
				else
				{
					return 2 //Error al Registrar el Recibo
				}
			}
			else
			{
				return 0 //El Usuario no Existe
			}
		}
	}
?>