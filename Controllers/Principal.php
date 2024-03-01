<?php
class Principal extends Controller
{
    public function __construct() {
        parent::__construct();
        session_start();
    }

//VISTA HOME
    public function index()
    {
       
    }
//VISTA ABOUT
    public function about()
    {
        $data['title'] = 'Nosotros';
        $this->views->getView('principal', "about", $data);
    }
//VISTA TIENDA
    public function shop()
    {
        $data['title'] = 'Productos';
        $this->views->getView('principal', "shop", $data);
    }
//VISTA DETALLES
    public function details($id_producto)
    {
        $data['producto'] = $this->model->getProducto($id_producto);
        $data['title'] = $data['producto']['nombre'];
        $this->views->getView('principal', "details", $data);
    }
//VISTA CONTACTO
    public function contact()
    {
        $data['title'] = 'Contacto';
        $this->views->getView('principal', "contact", $data);
    }
}