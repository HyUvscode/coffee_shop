<%-- 
    Document   : blog
    Created on : Nov 1, 2022, 10:03:07 AM
    Author     : thaiq
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
        <jsp:include page="navbar_3.jsp" />
        <!-- END nav -->

        <section class="home-slider owl-carousel">

            <div class="slider-item" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row slider-text justify-content-center align-items-center">

                        <div class="col-md-7 col-sm-12 text-center ftco-animate">
                            <h1 class="mb-3 mt-5 bread">Blog</h1>
                            <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Blog</span></p>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row d-flex">
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single.jsp" class="block-20" style="background-image: url('images/image_1.jpg');">
                            </a>
                            <div class="text py-4 d-block">
                                <div class="meta">
                                    <div><a href="#">July 10, 2023</a></div>
                                    <div><a href="#">Lance Smith</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 4</a></div>
                                </div>
                                <h3 class="heading mt-2"><a href="blog-single.jsp">10 Tips For The Traveler</a></h3>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single_1.jsp" class="block-20" style="background-image: url('imageBlog/blog1.jpg');">
                            </a>
                            <div class="text py-4 d-block">
                                <div class="meta">
                                    <div><a href="#">Feb 28, 2023</a></div>
                                    <div><a href="#">Alex</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 2</a></div>
                                </div>
                                <h3 class="heading mt-2"><a href="blog-single_1.jsp">The Magic of Coffee</a></h3>
                                <p>Coffee, the aromatic elixir that tantalizes our senses and awakens our spirits, holds a special place in the hearts of people around the world.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single_2.jsp" class="block-20" style="background-image: url('imageBlog/blog3.jpg');">
                            </a>
                            <div class="text py-4 d-block">
                                <div class="meta">
                                    <div><a href="#">Nov 24, 2022</a></div>
                                    <div><a href="#">Miguel</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 6</a></div>
                                </div>
                                <h3 class="heading mt-2"><a href="blog-single_2.jsp">The History and Legends of Coffee</a></h3>
                                <p>Coffee, with its rich aroma and invigorating properties, has a history shrouded in legends and tales.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single_3.jsp" class="block-20" style="background-image: url('imageBlog/blog5.jpg');">
                            </a>
                            <div class="text py-4 d-block">
                                <div class="meta">
                                    <div><a href="#">Dec 10, 2022</a></div>
                                    <div><a href="#">Julia</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 7</a></div>
                                </div>
                                <h3 class="heading mt-2"><a href="blog-single_3.jsp">The Art and Science of Coffee Roasting</a></h3>
                                <p>The process of coffee roasting is a delicate balance of artistry and science.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single_4.jsp" class="block-20" style="background-image: url('imageBlog/blog7.jpg');">
                            </a>
                            <div class="text py-4 d-block">
                                <div class="meta">
                                    <div><a href="#">May 15, 2022</a></div>
                                    <div><a href="#">Antonio</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 8</a></div>
                                </div>
                                <h3 class="heading mt-2"><a href="blog-single_4.jsp">Exploring Coffee Brewing Methods</a></h3>
                                <p>The process of brewing coffee is an art in itself, with various methods and techniques to suit different preferences.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 d-flex ftco-animate">
                        <div class="blog-entry align-self-stretch">
                            <a href="blog-single_5.jsp" class="block-20" style="background-image: url('imageBlog/blog9.jpg');">
                            </a>
                            <div class="text py-4 d-block">
                                <div class="meta">
                                    <div><a href="#">Mar 04, 2022</a></div>
                                    <div><a href="#">Carlos</a></div>
                                    <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 5</a></div>
                                </div>
                                <h3 class="heading mt-2"><a href="blog-single_5.jsp">Sustainable Coffee</a></h3>
                                <p>As the demand for coffee grows, the importance of sustainability in the coffee industry becomes paramount.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col text-center">
                        <div class="block-27">
                            <ul>
                                <li><a>&lt;</a></li>
                                <li class="active"><a href="blog.jsp">1</a></li>
                                <li><a>2</a></li>
                                <li><a>3</a></li>
                                <li><a>4</a></li>
                                <li><a>5</a></li>
                                <li><a>&gt;</a></li>
                            </ul>
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