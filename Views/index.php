<?php include_once 'Views/templates/header.php';?>


    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="<?php echo BASE_URL; ?>Assets/img/banner_img_01.png"; ?>
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <h1 class="h1 text-success"><b>Del campo a la puerta de tu casa</b></h1>
                                <h3 class="h2">Tu mercado de frutas y verduras, a un clic de distancia.</h3>
                                <p>
                                ¡Llena tu despensa de frescura! Descubre nuestra amplia variedad de frutas y verduras sin tener que salir de casa ya que todo lo que solicites sera entregado directamente a tu puerta. 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="<?php echo BASE_URL; ?>Assets/img/plaza.jpg";>
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">Súmate al Movimiento Verde</h1>
                                <h3 class="h2">Frutas y Vegetales Frescos a Tu Alcance</h3>
                                <p>
                                "Cada bocado cuenta cuando se trata de tu salud. Descubre nuestra selección de frutas y vegetales frescos en nuestra página web y empieza a cuidar de ti mismo de la manera más deliciosa."
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="<?php echo BASE_URL; ?>Assets/img/plaza7.jpg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">¿Buscas una manera conveniente de obtener tus productos frescos?</h1>
                                <h3 class="h2">!Encuentra tu Frescura Diaria Aquí¡ </h3>
                                <p>
                                Descubre una variedad de frutas y vegetales de alta calidad cultivados por nuestros grandes campesinos quienes con amor y dedicación hacen posible esta realidad. 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->


    <!-- Start Categories of The Month -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">Categorias</h1>
                <p>
                    Productos cultivados con amor,directamente del campo a tu casa.
                </p>
            </div>
        </div>
        <div class="row">
            <?php foreach ($data['categorias'] as $categoria){?>
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="<?php echo BASE_URL .'principal/categorias/'. $categoria['id'];?>"><img src="<?php echo $categoria['imagen'];?>" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3"><?php echo $categoria['categoria'];?></h5>
                <p class="text-center"><a class="btn btn-success">Ir a comprar</a></p>
            </div>
            <?php } ?>
        </div>
    </section>
    <!-- End Categories of The Month -->


    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Nuevos Productos</h1>
                    <p>
                        Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                        Excepteur sint occaecat cupidatat non proident.
                    </p>
                </div>
            </div>
            <div class="row">
                <?php foreach($data['nuevoProductos'] as $producto ) { ?>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="<?php echo BASE_URL . 'principal/details/' . $producto['id']; ?>">
                            <img src="<?php echo $producto ['imagen']; ?>" class="card-img-top" alt="<?php echo $producto ['nombre']; ?>">
                        </a>
                        <div class="card-body">
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right"><?php echo MONEDA .' '. $producto ['precio']; ?></li>
                            </ul>
                            <a href="<?php echo BASE_URL . 'principal/details/' . $producto['id']; ?>" class="h2 text-decoration-none text-dark"><?php echo $producto['nombre'];?></a>
                            <p class="card-text">
                            <?php echo $producto['descripcion'];?>
                            </p>
                            <p class="text-muted">Reviews (24)</p>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </section>
    <!-- End Featured Product -->
    <?php include_once 'Views/templates/footer.php';?>

  
</body>

</html>