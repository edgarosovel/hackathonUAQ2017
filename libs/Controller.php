<?php

class Controller {

    protected $view;
    protected $model;
    protected $idTipoUsuario;

    function __construct() {
        Session::init();
        $this->loadModel();
        $this->view = new View();
        $this->view->menu = (Session::existVar('menu') ) ? Session::getValue('menu') : null ;
    }

    function loadModel() {
        $model = get_class($this) . '_model';
        $path = 'models/' . $model . '.php';

        if (file_exists($path)) {
            require_once($path);
            $this->model = new $model();
        }
    }


    function loadOtherModel($model) {
        $nameModel = $model;
        $model = $model. '_model';
        $path = 'models/' . $model . '.php';

        if (file_exists($path)) {
            require_once($path);
            $this->$nameModel = new $model;
        }
    }

    protected function setTipoUsuario($tipoUsuario){
        $this->idTipoUsuario = $tipoUsuario;
    }

    protected function tipoUsuario($tipoUsuario){
        return ($this->idTipoUsuario == $tipoUsuario) ? true : false;
    }

    protected function pageNotFound(){
        $this->view->render('Default', 'pageNotFound', true); 
    }

}

?>