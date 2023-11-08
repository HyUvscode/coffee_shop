<%-- 
    Document   : index
    Created on : Oct 26, 2023, 1:41:02 AM
    Author     : khuy
--%>

<%@page import="DAOs.CategoryDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.products"%>
<%@page import="java.sql.Array"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DAOs.ProductDAO"%>
<%@ page import="com.google.gson.Gson" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Antoinétee Coffee </title>
        <link rel="icon" href="./images/logo2.png" type="image/x-icon">
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

        <link rel="stCylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">

        <script src="./js/loading.js"></script>
    </head>
    <script>
        let loginForm = document.querySelector('.login-form');

        document.querySelector('#login-btn').onclick = () => {
            loginForm.classList.add('active');
        };

        document.querySelector('#close-login-form').onclick = () => {
            loginForm.classList.remove('active');
        };

        let menu = document.querySelector('#menu-btn');
        let navbar = document.querySelector('.header .nav');

        menu.onclick = () => {
            menu.classList.toggle('fa-times');
            navbar.classList.toggle('active');
        };

        window.onscroll = () => {
            loginForm.classList.remove('active');
            menu.classList.remove('fa-times');
            navbar.classList.remove('active');

            if (window.scrollY > 0) {
                document.querySelector('.header').classList.add('active');
            } else {
                document.querySelector('.header').classList.remove('active');
            }
        };
    </script>
    <body>
        <jsp:include page="navbar.jsp" />
        <!-- END nav -->

        <section class="home-slider owl-carousel">
            <div class="slider-item" style="background-image: url(images/bg_1.jpg);">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

                        <div class="col-md-8 col-sm-12 text-center ftco-animate">
                            <span class="subheading">Welcome</span>
                            <h1 class="mb-4">The Best Coffee Testing Experience</h1>
                            <p class="mb-4 mb-md-5">Savor the richness and complexity of our meticulously crafted coffee.</p>
                            <p><a href="order.jsp" class="btn btn-primary p-3 px-xl-4 py-xl-3">Order Now</a> <a href="menu.jsp" class="btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3">View Menu</a></p>
                        </div>

                    </div>
                </div>
            </div>


            <div class="slider-item" style="background-image: url(images/bg_2.jpg);">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

                        <div class="col-md-8 col-sm-12 text-center ftco-animate">
                            <span class="subheading">Welcome</span>
                            <h1 class="mb-4">Amazing Taste &amp; Beautiful Place</h1>
                            <p class="mb-4 mb-md-5">Delight in the exquisite flavors of our coffee while enjoying the charming ambiance.</p>
                            <p><a href="#" class="btn btn-primary p-3 px-xl-4 py-xl-3">Order Now</a> <a href="menu.jsp" class="btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3">View Menu</a></p>
                        </div>

                    </div>
                </div>
            </div>

            <div class="slider-item" style="background-image: url(images/bg_3.jpg);">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">

                        <div class="col-md-8 col-sm-12 text-center ftco-animate">
                            <span class="subheading">Welcome</span>
                            <h1 class="mb-4">Creamy Hot and Ready to Serve</h1>
                            <p class="mb-4 mb-md-5">Indulge in the smooth, rich flavors of our coffee, prepared with care for your enjoyment.</p>
                            <p><a href="shop.jsp" class="btn btn-primary p-3 px-xl-4 py-xl-3">Order Now</a> <a href="menu.jsp" class="btn btn-white btn-outline-white p-3 px-xl-4 py-xl-3">View Menu</a></p>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-intro">
            <div class="container-wrap">
                <div class="wrap d-md-flex align-items-xl-end">
                    <div class="info">
                        <div class="row no-gutters">
                            <div class="col-md-4 d-flex ftco-animate">
                                <div class="icon"><span class="icon-phone"></span></div>
                                <div class="text">
                                    <h3>+84 96 868 68 68</h3>
                                    <p>A small river named Duden flows by their place and supplies.</p>
                                </div>
                            </div>
                            <div class="col-md-4 d-flex ftco-animate">
                                <div class="icon"><span class="icon-my_location"></span></div>
                                <div class="text">
                                    <h3>600 Nguyen Van Cu</h3>
                                    <p>	600 Nguyen Van Cu, An Binh, Ninh Kieu, Can Tho 900000, Vietnam</p>
                                </div>
                            </div>
                            <div class="col-md-4 d-flex ftco-animate">
                                <div class="icon"><span class="icon-clock-o"></span></div>
                                <div class="text">
                                    <h3>Open Monday-Saturday</h3>
                                    <p>8:00am - 11:00pm</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="book p-4">
                        <h3>Book a Table</h3>
                        <form action="#" class="appointment-form">
                            <div class="d-md-flex">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="First Name">
                                </div>
                                <div class="form-group ml-md-4">
                                    <input type="text" class="form-control" placeholder="Last Name">
                                </div>
                            </div>
                            <div class="d-md-flex">
                                <div class="form-group">
                                    <div class="input-wrap">
                                        <div class="icon"><span class="ion-md-calendar"></span></div>
                                        <input type="text" class="form-control appointment_date" placeholder="Date">
                                    </div>
                                </div>
                                <div class="form-group ml-md-4">
                                    <div class="input-wrap">
                                        <div class="icon"><span class="ion-ios-clock"></span></div>
                                        <input type="text" class="form-control appointment_time" placeholder="Time">
                                    </div>
                                </div>
                                <div class="form-group ml-md-4">
                                    <input type="text" class="form-control" placeholder="Phone">
                                </div>
                            </div>
                            <div class="d-md-flex">
                                <div class="form-group">
                                    <textarea name="" id="" cols="30" rows="2" class="form-control" placeholder="Message"></textarea>
                                </div>
                                <div class="form-group ml-md-4">
                                    <input type="submit" value="Appointment" class="btn btn-white py-3 px-4">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-about d-md-flex">
            <div class="one-half img" style="background-image: url(images/about.jpg);"></div>
            <div class="one-half ftco-animate">
                <div class="overlap">
                    <div class="heading-section ftco-animate ">
                        <span class="subheading">Discover</span>
                        <h2 class="mb-4">Our Story</h2>
                    </div>
                    <div>
                        <p>We have created an impressive brand name from Antoinetee logo to cool, imbued with inspiration, freedom, history, dreams about coffe shop. Besides serving quality drinks, delicious cakes, with style and friendly attitude to the customer community. Vietnam is a country famous for coffee and tea, preserving and honoring the value of Vietnamese tea and coffee is to bring quality products satisfied customers in Can Tho.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-services">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 ftco-animate">
                        <div class="media d-block text-center block-6 services">
                            <div class="icon d-flex justify-content-center align-items-center mb-5">
                                <span class="flaticon-choices"></span>
                            </div>
                            <div class="media-body">
                                <h3 class="heading">Easy to Order</h3>
                                <p>With just a few clicks, you can place your order right away.</p>
                            </div>
                        </div>      
                    </div>
                    <div class="col-md-4 ftco-animate">
                        <div class="media d-block text-center block-6 services">
                            <div class="icon d-flex justify-content-center align-items-center mb-5">
                                <span class="flaticon-delivery-truck"></span>
                            </div>
                            <div class="media-body">
                                <h3 class="heading">Fastest Delivery</h3>
                                <p>Enjoy lightning-fast delivery for a seamless shopping experience.</p>
                            </div>
                        </div>      
                    </div>
                    <div class="col-md-4 ftco-animate">
                        <div class="media d-block text-center block-6 services">
                            <div class="icon d-flex justify-content-center align-items-center mb-5">
                                <span class="flaticon-coffee-bean"></span></div>
                            <div class="media-body">
                                <h3 class="heading">Quality Coffee</h3>
                                <p>Experience the finest quality coffee for a rich and satisfying taste.</p>
                            </div>
                        </div>    
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-6 pr-md-5">
                        <div class="heading-section text-md-right ftco-animate">
                            <span class="subheading">Discover</span>
                            <h2 class="mb-4">Our Menu</h2>
                            <p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                            <p><a href="menu.jsp" class="btn btn-primary btn-outline-primary px-4 py-3">View Full Menu</a></p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="menu-entry">
                                    <a href="#" class="img" style="background-image: url(images/menu-1.jpg);"></a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="menu-entry mt-lg-4">
                                    <a href="#" class="img" style="background-image: url(images/menu-2.jpg);"></a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="menu-entry">
                                    <a href="#" class="img" style="background-image: url(images/menu-3.jpg);"></a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="menu-entry mt-lg-4">
                                    <a href="#" class="img" style="background-image: url(images/menu-4.jpg);"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-counter ftco-bg-dark img" id="section-counter" style="background-image: url(images/bg_2.jpg);" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-10">
                        <div class="row">
                            <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18 text-center">
                                    <div class="text">
                                        <div class="icon"><span class="flaticon-coffee-cup"></span></div>
                                        <strong class="number" data-number="1">0</strong>
                                        <span>Coffee Branches</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18 text-center">
                                    <div class="text">
                                        <div class="icon"><span class="flaticon-coffee-cup"></span></div>
                                        <strong class="number" data-number="85">0</strong>
                                        <span>Number of Awards</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18 text-center">
                                    <div class="text">
                                        <div class="icon"><span class="flaticon-coffee-cup"></span></div>
                                        <strong class="number" data-number="963">0</strong>
                                        <span>Happy Customer</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
                                <div class="block-18 text-center">
                                    <div class="text">
                                        <div class="icon"><span class="flaticon-coffee-cup"></span></div>
                                        <strong class="number" data-number="5">0</strong>
                                        <span>Staff</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center mb-5 pb-3">
                    <div class="col-md-7 heading-section ftco-animate text-center">
                        <span class="subheading">Discover</span>
                        <h2 class="mb-4">Best Coffee Sellers</h2>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    </div>
                </div>
                <div class="row">
                    <%
                        ProductDAO pD = new ProductDAO();
                        ResultSet rs = pD.getTopCoffee(4, "Cf");
                        ArrayList<products> list = new ArrayList<>();
                        while (rs.next()) {
                            list.add(new products(rs.getInt("product_id"), rs.getString("product_name"),
                                    rs.getString("product_img"), rs.getDouble("price"), rs.getString("category_id"), rs.getString("product_description")));
                        }
        
                        for (products product : list) {
                    %>
                    <div class="col-md-3">
                        <div class="menu-entry">
                            <a href="#" class="img" style="background-image: url(imageDist/<%=product.getProduct_img()%>);"></a>
                            <div class="text text-center pt-4">
                                <h3><a href="#"><%=product.getProduct_name()%></a></h3>
                                <p><%=product.getProduct_description()%></p>
                                <p class="price"><span><%=product.getPrice()%>₫</span></p>
                                <p><a href="cart/add?product_id=<%=product.getProduct_id()%>" class="btn btn-primary btn-outline-primary">Add to Cart</a></p>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </section>

        <section class="ftco-gallery">
            <div class="container-wrap">
                <div class="row no-gutters">
                    <div class="col-md-3 ftco-animate">
                        <a href="gallery.html" class="gallery img d-flex align-items-center" style="background-image: url(images/gallery-1.jpg);">
                            <div class="icon mb-4 d-flex align-items-center justify-content-center">
                                <span class="icon-search"></span>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-3 ftco-animate">
                        <a href="gallery.html" class="gallery img d-flex align-items-center" style="background-image: url(images/gallery-2.jpg);">
                            <div class="icon mb-4 d-flex align-items-center justify-content-center">
                                <span class="icon-search"></span>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-3 ftco-animate">
                        <a href="gallery.html" class="gallery img d-flex align-items-center" style="background-image: url(images/gallery-3.jpg);">
                            <div class="icon mb-4 d-flex align-items-center justify-content-center">
                                <span class="icon-search"></span>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-3 ftco-animate">
                        <a href="gallery.html" class="gallery img d-flex align-items-center" style="background-image: url(images/gallery-4.jpg);">
                            <div class="icon mb-4 d-flex align-items-center justify-content-center">
                                <span class="icon-search"></span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-menu">
            <div class="container">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading">Discover</span>
                        <h2 class="mb-4">Our Products</h2>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    </div>
                </div>
                <%
                      CategoryDAO cD = new CategoryDAO();
                      ResultSet rsCate = cD.getAllCategories();
                      ArrayList<ArrayList<products>> list2s = new ArrayList<>();
                      while (rsCate.next()) {
                            ArrayList<products> listemp = new ArrayList<>();
                            ResultSet temp = pD.getTopCoffee(3, rsCate.getString("category_id"));
                            while (temp.next()) {
                                  listemp.add(new products(temp.getInt("product_id"), temp.getString("product_name"),
                                          temp.getString("product_img"), temp.getDouble("price"), temp.getString("category_id"), temp.getString("product_description")));
                            }
                            list2s.add(listemp);
                            Gson gson = new Gson();
                            String json = gson.toJson(list2s);
                      }
                %>
                <div class="row d-md-flex">
                    <div class="col-lg-12 ftco-animate p-md-5">
                        <div class="row">
                            <div class="col-md-12 nav-link-wrap mb-5">
                                <div class="nav ftco-animate nav-pills justify-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                </div>
                            </div>
                            <div class="col-md-12 d-flex align-items-center">

                                <div class="tab-content ftco-animate" id="v-pills-tabContent">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section img" id="ftco-testimony" style="background-image: url(images/bg_1.jpg);"  data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading">Testimony</span>
                        <h2 class="mb-4">Customers Says</h2>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    </div>
                </div>
            </div>
            <div class="container-wrap">
                <div class="row d-flex no-gutters">
                    <div class="col-lg align-self-sm-end ftco-animate">
                        <div class="testimony">
                            <blockquote>
                                <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small.&rdquo;</p>
                            </blockquote>
                            <div class="author d-flex mt-4">
                                <div class="image mr-3 align-self-center">
                                    <img src="images/person_3.jpg" alt="">
                                </div>  
                                <div class="name align-self-center">Louise Kelly <span class="position">Illustrator Designer</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg align-self-sm-end">
                        <div class="testimony overlay">
                            <blockquote>
                                <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
                            </blockquote>
                            <div class="author d-flex mt-4">
                                <div class="image mr-3 align-self-center">
                                    <img src="images/person_2.jpg" alt="">
                                </div>
                                <div class="name align-self-center">Louise Kelly <span class="position">Illustrator Designer</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg align-self-sm-end ftco-animate">
                        <div class="testimony">
                            <blockquote>
                                <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small  line of blind text by the name. &rdquo;</p>
                            </blockquote>
                            <div class="author d-flex mt-4">
                                <div class="image mr-3 align-self-center">
                                    <img src="images/person_3.jpg" alt="">
                                </div>
                                <div class="name align-self-center">Louise Kelly <span class="position">Illustrator Designer</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg align-self-sm-end">
                        <div class="testimony overlay">
                            <blockquote>
                                <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however.&rdquo;</p>
                            </blockquote>
                            <div class="author d-flex mt-4">
                                <div class="image mr-3 align-self-center">
                                    <img src="images/person_2.jpg" alt="">
                                </div>
                                <div class="name align-self-center">Louise Kelly <span class="position">Illustrator Designer</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg align-self-sm-end ftco-animate">
                        <div class="testimony">
                            <blockquote>
                                <p>&ldquo;Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small  line of blind text by the name. &rdquo;</p>
                            </blockquote>
                            <div class="author d-flex mt-4">
                                <div class="image mr-3 align-self-center">
                                    <img src="images/person_3.jpg" alt="">
                                </div>
                                <div class="name align-self-center">Louise Kelly <span class="position">Illustrator Designer</span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center mb-5 pb-3">
                    <div class="col-md-7 heading-section ftco-animate text-center">
                        <h2 class="mb-4">Recent from blog</h2>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    </div>
                </div>
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
                </div>
            </div>
        </section>


        <section class="ftco-appointment">
            <div class="overlay"></div>
            <div class="container-wrap">
                <div class="row no-gutters d-md-flex align-items-center">
                    <div class="col-md-6 d-flex align-self-stretch">
                        <div class="container">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3929.0527789007538!2d105.7304681941158!3d10.012499312690098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0882139720a77%3A0x3916a227d0b95a64!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBGUFQgQ-G6p24gVGjGoQ!5e0!3m2!1svi!2s!4v1689425446353!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                    <div class="col-md-6 appointment ftco-animate">
                        <h3 class="mb-3">Book a Table</h3>
                        <form action="#" class="appointment-form">
                            <div class="d-md-flex">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="First Name">
                                </div>
                                <div class="form-group ml-md-4">
                                    <input type="text" class="form-control" placeholder="Last Name">
                                </div>
                            </div>
                            <div class="d-md-flex">
                                <div class="form-group">
                                    <div class="input-wrap">
                                        <div class="icon"><span class="ion-md-calendar"></span></div>
                                        <input type="text" class="form-control appointment_date" placeholder="Date">
                                    </div>
                                </div>
                                <div class="form-group ml-md-4">
                                    <div class="input-wrap">
                                        <div class="icon"><span class="ion-ios-clock"></span></div>
                                        <input type="text" class="form-control appointment_time" placeholder="Time">
                                    </div>
                                </div>
                                <div class="form-group ml-md-4">
                                    <input type="text" class="form-control" placeholder="Phone">
                                </div>
                            </div>
                            <div class="d-md-flex">
                                <div class="form-group">
                                    <textarea name="" id="" cols="30" rows="2" class="form-control" placeholder="Message"></textarea>
                                </div>
                                <div class="form-group ml-md-4">
                                    <input type="submit" value="Appointment" class="btn btn-primary py-3 px-4">
                                </div>
                            </div>
                        </form>
                    </div>    			
                </div>
            </div>
        </section>

        <script>
            var category = <%=cD.getNumberOfCategories()%>

            var jsCategory = [];
            <%
                  ResultSet rsCa = cD.getAllCategories();
                  while (rsCa.next()) {
            %>
            var p = {
                category_name: '<%=rsCa.getString("category_name")%>'
            }
            jsCategory.push(p);
            <%
                  }
            %>

            console.log(jsCategory);

            var jsList2s = [];

            <%                  for (ArrayList<products> sublist : list2s) {
            %>
            var subArray = [];

            <%
                  for (products product : sublist) {
            %>
            var productObject = {
                product_id: '<%= product.getProduct_id()%>',
                product_name: '<%=product.getProduct_name()%>',
                product_img: '<%=product.getProduct_img()%>',
                price: '<%=product.getPrice()%>',
                category_id: '<%=product.getCategory_id()%>',
                product_description: '<%=product.getProduct_description()%>'
            };
            subArray.push(productObject);
            <% } %>

            jsList2s.push(subArray);
            <% }%>

        </script>
        <script type="text/javascript" src="./js/renderFood/renderIndex.js"></script>

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