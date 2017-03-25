<?php 
header('Access-Control-Allow-Origin: *');
class Emulador extends Controller{

    function __construct() {
        parent::__construct();
    }

    public function index(){
        
        $inicio = microtime(true);
        while(true){  
            $vuelta = microtime(true);
            $tiempo = $vuelta - $inicio;
            if ($tiempo>5) {
                $sigue=false;
                $inicio = microtime(true);
                $this->model->emular(3,rand(9,34));
            }
        }
    }
}

?>