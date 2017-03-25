<?php
	class Registro_model extends Model
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
				$datos_recibo = array('id_registro'=>0, 'id_usuario'=>$id_usuario, 'pago'=>$pago, 'metros_cubicos'=>$metros_cubicos, 'fecha_recibo'=>$fecha_recibo);

				if($this->db->insert($datos_recibo,'Registro_mensual'))
				{
					return 1; //Recibo Registrado
				}
				else
				{
					return 2; //Error al Registrar el Recibo
				}
			}
			else
			{
				return 0; //El Usuario no Existe
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

		public function promedio_metros_cubicos()
		{
			$mes_actual = $this->query("SELECT MONTH(CURRENT_DATE;");
			if ($mes_actual == 1)
			{
				$promedio = $this->query("SELECT AVG(`metros_cubicos`) FROM Registro_mensual WHERE MONTH(`fecha_registro`) = 12 and YEAR(`fecha_registro`) = YEAR(CURRENT_DATE)- 1;");
			}
			else
			{
				$promedio = $this->query("SELECT AVG(`metros_cubicos`) FROM Registro_mensual WHERE MONTH(`fecha_registro`) = MONTH(CURRENT_DATE) - 1 and YEAR(`fecha_registro`) = YEAR(CURRENT_DATE);");
			}
			return $promedio;
		}
	}
?>