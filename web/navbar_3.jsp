<%-- 
    Document   : navbar
    Created on : Oct 26, 2023, 1:41:02 AM
    Author     : khuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <!-- bootstrap cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.1/css/bootstrap.min.css">

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

        <style>
            .navbar .nav-item .nav-link.active {
                color: red;
                /* Màu chữ cho nav-link khi được nhấn */
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">Antoinétee<small>Coffee</small></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>
                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a href="index.jsp" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="menu.jsp" class="nav-link">Menu</a></li>
                        <li class="nav-item"><a href="services.jsp" class="nav-link">Services</a></li>
                        <li class="nav-item active"><a href="blog.jsp" class="nav-link">Blog</a></li>
                        <li class="nav-item"><a href="about.jsp" class="nav-link">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="room.html" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Shop</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown04">
                                <a class="dropdown-item" href="shop.jsp">Shop</a>
                                <a class="dropdown-item" href="cart.jsp">Cart</a>
                                <a class="dropdown-item" href="checkout.jsp">Checkout</a>
                            </div>
                        </li>
                        <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact</a></li>
                        <li class="nav-item cart"><a href="/login" class="nav-link"><div class="icons">
                                    <div id="menu-btn" class="fas fa-bars"></div>
                                    <div id="login-btn" class="fas fa-user"></div>
                                </div></a>
                        </li>
                    </ul>
                </div>

            </div>
        </nav>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var navLinks = document.querySelectorAll(".navbar .nav-item .nav-link");

                navLinks.forEach(function (link) {
                    link.addEventListener("click", function () {
                        // Xóa lớp "active" khỏi tất cả các nav-link
                        navLinks.forEach(function (navLink) {
                            navLink.classList.remove("active");
                        });

                        // Thêm lớp "active" vào nav-link hiện tại
                        this.classList.add("active");
                    });
                });
            });
        </script>
    </body>
</html>
