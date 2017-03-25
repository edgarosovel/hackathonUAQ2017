<?php 
 
class Usuario extends Controller{

    function __construct() {
        parent::__construct();
    }

    public function index(){
        header('location:'.URL.Session::getValue('tipoUsuario'));
    }

    public function iniciarSesion(){
        $respuesta = $this->model->iniciarSesion($_POST["correo"], $_POST["pass"]);
        echo $respuesta;
    }

    public function cerrarSesion(){
        Session::destroy();
        echo "1";
        //header("location:".URL);
    }

    public function registrar(){
        $response =  $this->model->registrar($_POST['correo'],$_POST['nombre'],$_POST['pass'], $_POST['cp'], $_POST['fecha_nacimiento'], $_POST['no_integrantes']);
        echo $response;
    }
}

?>