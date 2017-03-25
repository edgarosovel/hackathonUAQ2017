<?php
header('Access-Control-Allow-Origin: *');
class Index extends Controller{
    function __construct() {
        parent::__construct();
    }
    
    public function index(){
        if(Session::exist()){
            //header("location:".URL."Usuario/");
        }else{
            echo "Hola mundo";
           //$this->view->render($this,'index'); 
        }
    }
}