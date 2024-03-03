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
    public function shop($page)
    {
        $pagina = (empty($page)) ? 1 : $page;
        $porPagina = 20;
        $desde =($pagina  - 1) * $porPagina;
        $data['title'] = 'Productos';
        $data['productos'] = $this->model->getProductos($desde, $porPagina);
        $data['pagina'] = $pagina;
        $total = $this->model->getTotalProductos();
        $data['total'] = ceil($total['total'] / $porPagina);
        $this->views->getView('principal', "shop", $data);
    }
//VISTA DETALLES
    public function details($id_producto)
    {
        $data['producto'] = $this->model->getProducto($id_producto);
        $data['title'] = $data['producto']['nombre'];
        $this->views->getView('principal', "details", $data);
    }
    //VISTA CATEGORIAS
    public function categorias($datos)
    {
        $id_categoria = 1;
        $page = 1;
        $array = explode(',', $datos);
        if (isset($array[0])) {
            if (!empty($array[0])) {
                $id_categoria = $array[0];
            }
        }
        if (isset($array[1])) {
            if (!empty($array[1])) {
                $page = $array[1];
            }
        }
        $pagina = (empty($page)) ? 1 : $page;
        $porPagina = 15;
        $desde =($pagina  - 1) * $porPagina;

        $data['pagina'] = $pagina;
        $total = $this->model->getTotalProductosCat($id_categoria);
        $data['total'] = ceil($total['total'] / $porPagina);

        $data['productos'] = $this->model->getProdCategoria($id_categoria, $desde, $porPagina);
        $data['title'] = 'Categorias';
        $data['id_categoria'] = $id_categoria;
        $this->views->getView('principal', "categorias", $data);
    }

//VISTA CONTACTO
    public function contact()
    {
        $data['title'] = 'Contacto';
        $this->views->getView('principal', "contact", $data);
    }
}