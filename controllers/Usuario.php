<?php 
header('Access-Control-Allow-Origin: *');
class Usuario extends Controller{

    function __construct() {
        parent::__construct();
    }

    public function index(){
        if(Session::exist()){
            echo 1;
        }else{
            echo 2;
        }
    }

    public resultado_cuestionario(){
        $this->loadOtherModel("Registro");
        $ultimo_registro = $this->Registro->;
//
        $a = array('promedio_estado' =>  $this->promedio_estado();, 'pago'=>$ultimo_registro['pago'], 'metros_cubicos'=>$ultimo_registro['metros_cubicos'], 'no_integrantes'=>$ultimo_registro['no_integrantes']);
        $json = json_encode($a);
        echo $json;
    }

    public function iniciarSesion(){
        $respuesta = $this->model->iniciar_sesion($_POST["correo"], $_POST["pass"]);
        echo $respuesta;
    }

    public function cerrarSesion(){
        Session::destroy();
        echo "1";
    }

    public function registrar(){
        $response =  $this->model->registrar($_POST['correo'],$_POST['nombre'],$_POST['pass'], $_POST['cp'], $_POST['no_integrantes']);
        echo $response;
    }

    public function hay_registro(){
        $this->loadOtherModel("Registro");
        $response =  $this->Registro->hay_registro(Session::getValue('id_usuario'));
        echo $response;
    }

    public function aniadir_registro(){
        $this->loadOtherModel("Registro");
        $response =  $this->Registro->aniadir_registro(Session::getValue('id_usuario'),$_POST['pago'],$_POST['metros_cubicos'], $_POST['fecha_recibo']);
        echo $response;
    }

    public function promedio_estado(){
        $this->loadOtherModel("Registro");
        $response =  $this->Registro->promedio_metros_cubicos();
        return $response;
    }
}

?>