<?php
class Home extends Controller
{
    public function __construct() {
        parent::__construct();
        session_start();
    }

//VISTA HOME
    public function index()
    {
        $data['title'] = 'Pagina Principal';
        $data['categorias'] = $this->model->getCategorias();
        $data['nuevoProductos'] = $this->model->getNuevosProductos();
        $this->views->getView('home', "index", $data);
    }
}