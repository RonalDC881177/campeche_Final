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
        $id_categoria = $data['producto']['id_categoria'];
        $data['relacionados'] = $this->model->getAleatorios( $id_categoria, $data['producto']['id'] );
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
//VISTA CONTACTOS
    public function contactos()
    {
        $data['title'] = 'Contactos';
        $this->views->getView('principal', "contact", $data);
    }
//VISTA LISTA DE DESEOS
    public function deseo()
    {
        $data['title'] = 'Lista de deseos';
        $this->views->getView('principal', "deseo", $data);
    }
//OBTENER PRODUCTOS DE LA LIUSTA DE DESEOS
    public function listaDeseo() 
    {
        $datos = file_get_contents('php://input');
        $json = json_decode($datos, true);
        $array = array();
        foreach ($json as $producto) {
            $result= $this->model->getListaDeseo($producto['idProducto']);
            $data['id'] = $result['id'];
            $data['nombre'] = $result['nombre'];
            $data['precio'] = $result['precio'];
            $data['cantidad'] = $producto['cantidad'];
            $data['imagen'] = $result['imagen'];
            array_push($array, JSON_UNESCAPED_UNICODE);
        }
        json_encode($array);
        die();
    }

}