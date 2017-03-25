<?php
	class Registro_model extends Model
	{
		function __construct()
		{
			parent::__construct();
		}

		public function aniadir_registro($id_usuario, $pago, $metros_cubicos)
		{
			$registro = $this->db->select('id_usuario', 'Usuario', "id_usuario='".$id_usuario."'");
			if($registro != Null)
			{
				$datos_recibo = array('id_registro'=>0, 'id_usuario'=>$id_usuario, 'pago'=>$pago, 'metros_cubicos'=>$metros_cubicos, 'fecha_registro'=>date('Y-m-d H:i:s'));

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
			$mes_actual = $this->db->query("SELECT MONTH(CURRENT_DATE);");
			if ($mes_actual['MONTH(CURRENT_DATE)'] == 1)
			{
				$promedio = $this->db->query("SELECT AVG(`metros_cubicos`) FROM Registro_mensual WHERE MONTH(`fecha_registro`) = 12 and YEAR(`fecha_registro`) = YEAR(CURRENT_DATE)- 1;");
			}
			else
			{
				$promedio = $this->db->query("SELECT AVG(`metros_cubicos`) as \"avgg\" FROM Registro_mensual WHERE MONTH(`fecha_registro`) = MONTH(CURRENT_DATE) - 1 and YEAR(`fecha_registro`) = YEAR(CURRENT_DATE);");
			}
			return $promedio['avgg'];
		}

		public function ultimo_registro($id_usuario)
		{
			$recibo = $this->db->query('select r.pago, r.metros_cubicos, r.fecha_registro, u.no_integrantes from Registro_mensual r, Usuario u where r.id_usuario='.$id_usuario.' AND r.id_usuario=u.id_usuario AND r.fecha_registro = (select MAX(fecha_registro) from Registro_mensual where id_usuario='.$id_usuario.') LIMIT 1');

			return $recibo;
		}
	}
?>