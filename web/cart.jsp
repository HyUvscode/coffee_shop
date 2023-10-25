<%-- 
    Document   : cart
    Created on : Oct 26, 2023, 1:41:02 AM
    Author     : khuy
--%>

<%@page import="DAOs.ProductDAO"%>
<%@page import="Models.products"%>
<%@page import="Models.cart_items"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Models.cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

        <style>
            .ap {
                overflow-x: hidden;
                overflow-y: auto;
            }
            .ap table {
                width: 100%;
            }
        </style>

    </head>
    <body onload="updateCart()">
        <%@include file="navbar_5.jsp" %>

        <section class="home-slider owl-carousel">

            <div class="slider-item" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row slider-text justify-content-center align-items-center">

                        <div class="col-md-7 col-sm-12 text-center ftco-animate">
                            <h1 class="mb-3 mt-5 bread">Cart</h1>
                            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Cart</span></p>
                        </div>

                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-cart">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 ftco-animate">
                        <div class="cart-list ap">
                            <div class="table-responsive">
                                <table id="myTable" class="table">
                                    <thead class="thead-primary">
                                        <tr class="text-center">
                                            <th>#</th>
                                            <th>Product Name</th>
                                            <th>Product Image</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                              if (session.getAttribute("cart") != null) {
                                                    cart c = (cart) session.getAttribute("cart");
                                                    ProductDAO pD = new ProductDAO();
                                                    int count = 1;
                                                    ArrayList<cart_items> list = c.getItems();
                                                    for (cart_items item : list) {
                                                          products p = pD.getProductByID(item.getProduct_id() + "");
                                        %>
                                        <tr class="text-center">
                                            <td style="color: white"><%=count++%></td>

                                            <td class="product-name">
                                                <h3><%=p.getProduct_name()%></h3>
                                            </td>

                                            <td class="image-prod"><div class="img" style="background-image:url(imageDist/<%=p.getProduct_img()%>);"></div></td>

                                            <td id="price" class="price"><%=item.getPrice()%></td>

                                            <td class="quantity">
                                                <div class="input-group mb-3">
                                                    <input value="<%=item.getQuantity()%>" type="number" name="quantity" id="quantity" class="quantity form-control input-number" value="1" min="1" max="100" oninput="updateCart()">
                                                </div>
                                            </td>

                                            <td id="total" class="total"></td>
                                            <%
                                                        }
                                                  }
                                            %>
                                        </tr><!-- END TR-->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-end">
                    <div class="col col-lg-3 col-md-6 mt-5 cart-wrap ftco-animate">
                        <div class="cart-total mb-3">
                            <h3>Cart Totals</h3>
                            <p class="d-flex">
                                <span>Subtotal</span>
                                <span id="subSpan"></span>
                            </p>
                            <p class="d-flex">
                                <span>Delivery</span>
                                <span id="deliverySpan"></span>
                            </p>
                            <p class="d-flex">
                                <span>Discount</span>
                                <span id="discountSpan"></span>
                            </p>
                            <hr>
                            <p class="d-flex total-price">
                                <span>Total</span>
                                <span id="totalSpans"></span>
                            </p>
                        </div>
                        <p class="text-center"><a href="checkout.jsp" class="btn btn-primary py-3 px-4">Proceed to Checkout</a></p>
                    </div>
                </div>
            </div>
        </section>

        <script type="text/javascript" src="./js/renderFood/renderCart.js"></script>

        <%@include file="footer.jsp" %>




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
