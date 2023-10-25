<%-- 
    Document   : shop
    Created on : Oct 24, 2023, 9:58:22 PM
    Author     : khuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Coffee - Free Bootstrap 4 Template by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <jsp:include page="navbar_5.jsp" />
        <!-- END nav -->

        <section class="home-slider owl-carousel">

            <div class="slider-item" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row slider-text justify-content-center align-items-center">

                        <div class="col-md-7 col-sm-12 text-center ftco-animate">
                            <h1 class="mb-3 mt-5 bread">Order Online</h1>
                            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Shop</span></p>
                        </div>

                    </div>
                </div>
            </div>
        </section>


        <section class="ftco-menu mb-5 pb-5">
            <div class="container">
                <div class="row d-md-flex">
                    <div class="col-lg-12 ftco-animate p-md-5">
                        <div class="row">
                            <div class="col-md-12 nav-link-wrap mb-5">
                                <div class="nav ftco-animate nav-pills justify-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                    <a class="nav-link active" id="v-pills-0-tab" data-toggle="pill" href="#v-pills-0" role="tab" aria-controls="v-pills-0" aria-selected="true">Coffee</a>

                                    <a class="nav-link" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="false">Main Dish</a>

                                    <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Drinks</a>

                                    <a class="nav-link" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">Desserts</a>
                                </div>
                            </div>
                            <div class="col-md-12 d-flex align-items-center">

                                <div class="tab-content ftco-animate" id="v-pills-tabContent">

                                    <div class="tab-pane fade show active" id="v-pills-0" role="tabpanel" aria-labelledby="v-pills-0-tab">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="menu-entry">
                                                    <a href="#" class="img" style="background-image: url(images/menu-1.jpg);"></a>
                                                    <div class="text text-center pt-4">
                                                        <h3><a href="productSingle.html">Coffee Capuccino</a></h3>
                                                        <p>A small river named Duden flows by their place and supplies</p>
                                                        <p class="price"><span>$5.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to Cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="menu-entry">
                                                    <a href="#" class="img" style="background-image: url(images/menu-2.jpg);"></a>
                                                    <div class="text text-center pt-4">
                                                        <h3><a href="productSingle.html">Coffee Capuccino</a></h3>
                                                        <p>A small river named Duden flows by their place and supplies</p>
                                                        <p class="price"><span>$5.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to Cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="menu-entry">
                                                    <a href="#" class="img" style="background-image: url(images/menu-3.jpg);"></a>
                                                    <div class="text text-center pt-4">
                                                        <h3><a href="productSingle.html">Coffee Capuccino</a></h3>
                                                        <p>A small river named Duden flows by their place and supplies</p>
                                                        <p class="price"><span>$5.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to Cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="menu-entry">
                                                    <a href="#" class="img" style="background-image: url(images/menu-4.jpg);"></a>
                                                    <div class="text text-center pt-4">
                                                        <h3><a href="productSingle.html">Coffee Capuccino</a></h3>
                                                        <p>A small river named Duden flows by their place and supplies</p>
                                                        <p class="price"><span>$5.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to Cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-1-tab">
                                        <div class="row">
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/dish-1.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Grilled Beef</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/dish-2.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Grilled Beef</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/dish-3.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Grilled Beef</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/dish-4.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Grilled Beef</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/dish-5.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Grilled Beef</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/dish-6.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Grilled Beef</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-2-tab">
                                        <div class="row">
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/drink-1.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Lemonade Juice</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/drink-2.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Pineapple Juice</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/drink-3.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Soda Drinks</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/drink-4.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Lemonade Juice</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/drink-5.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Pineapple Juice</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/drink-6.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Soda Drinks</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-3-tab">
                                        <div class="row">
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/dessert-1.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Hot Cake Honey</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/dessert-2.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Hot Cake Honey</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/dessert-3.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Hot Cake Honey</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/dessert-4.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Hot Cake Honey</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/dessert-5.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Hot Cake Honey</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4 text-center">
                                                <div class="menu-wrap">
                                                    <a href="#" class="menu-img img mb-4" style="background-image: url(images/dessert-6.jpg);"></a>
                                                    <div class="text">
                                                        <h3><a href="productSingle.html">Hot Cake Honey</a></h3>
                                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                                                        <p class="price"><span>$2.90</span></p>
                                                        <p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to cart</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <jsp:include page="footer.jsp" />

        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/jquery.timepicker.min.js"></script>
        <script src="js/scrollax.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>
