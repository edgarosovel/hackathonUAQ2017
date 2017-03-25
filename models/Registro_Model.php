<?php
	class Registro_model extends Model
	{
		function __construct()
		{
			parent::__construct();
		}

		public function aniadir_registro($id_usuario, $pago, $metros_cubicos, $fecha_recibo)
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

		public function hay_registro($id_usuario){
				$registro = $this->db->select('count(*)', 'Registro_mensual', "id_usuario='".$id_usuario."'");
				if($registro != Null)
			{
				return 1; //Hay registro
			}
			else
			{
				return 0; //Sin inexistente
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

		public function ultimo_recibo($id_usuario)
		{
			$recibo = $this->db->select('r.pago, r.metros_cubicos, r.fecha_registro, u.no_integrantes', 'Registro_mensual r, Usuario u', "r.id_usuario='".$id_usuario."' AND r.id_usuario=u.id_usuario AND MAX(r.fecha_registro)");

			return $recibo;
		}

		public function convertir_a_litros($id_registro)
		{
			$metros_cubicos = $this->db->select('metros_cubicos', 'Registro_mensual', "id_registro='".$id_registro."'");
			return $metros_cubicos / 1000;
		}
	}
?>