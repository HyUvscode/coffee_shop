<%-- 
    Document   : menu
    Created on : Nov 1, 2022, 10:04:30 AM
    Author     : thaiq
--%>

<%@page import="com.DAOs.ProductDAO"%>
<%@page import="com.Models.products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.DAOs.CategoryDAO"%>
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
        <jsp:include page="navbar_1.jsp" />
        <!-- END nav -->

        <section class="home-slider owl-carousel">

            <div class="slider-item" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row slider-text justify-content-center align-items-center">

                        <div class="col-md-7 col-sm-12 text-center ftco-animate">
                            <h1 class="mb-3 mt-5 bread">Our Menu</h1>
                            <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Menu</span></p>
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
                                    <h3>000 (123) 456 7890</h3>
                                    <p>A small river named Duden flows by their place and supplies.</p>
                                </div>
                            </div>
                            <div class="col-md-4 d-flex ftco-animate">
                                <div class="icon"><span class="icon-my_location"></span></div>
                                <div class="text">
                                    <h3>198 West 21th Street</h3>
                                    <p>	203 Fake St. Mountain View, San Francisco, California, USA</p>
                                </div>
                            </div>
                            <div class="col-md-4 d-flex ftco-animate">
                                <div class="icon"><span class="icon-clock-o"></span></div>
                                <div class="text">
                                    <h3>Open Monday-Friday</h3>
                                    <p>8:00am - 9:00pm</p>
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

        <section class="ftco-section" style="padding-bottom: 0">
            <div class="container">
                <%
                      ProductDAO pD = new ProductDAO();
                      CategoryDAO cD = new CategoryDAO();
                      ResultSet rsCate = cD.getAllCategories();
                      ArrayList<ArrayList<products>> list2s = new ArrayList<>();
                      while (rsCate.next()) {
                            ArrayList<products> listemp = new ArrayList<>();
                            ResultSet temp = pD.getTopCoffee(5, rsCate.getString("category_id"));
                            while (temp.next()) {
                                  listemp.add(new products(temp.getInt("product_id"), temp.getString("product_name"),
                                          temp.getString("product_img"), temp.getDouble("price"), temp.getString("category_id"), temp.getString("product_description")));
                            }
                            list2s.add(listemp);
                      }
                %>
                <div class="row" id="render">

                </div>
            </div>
        </section>

        <section class="ftco-menu mb-5 pb-5">
            <div class="container">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading">Discover</span>
                        <h2 class="mb-4">Our Products</h2>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    </div>
                </div>
                <div class="row d-md-flex">
                    <%
                          rsCate = cD.getAllCategories();
                          ArrayList<ArrayList<products>> list2ss = new ArrayList<>();
                          while (rsCate.next()) {
                                ArrayList<products> listemp = new ArrayList<>();
                                ResultSet temp = pD.getTopCoffee(cD.getNumberOfProductByCategory(rsCate.getString("category_id")), rsCate.getString("category_id"));
                                while (temp.next()) {
                                      listemp.add(new products(temp.getInt("product_id"), temp.getString("product_name"),
                                              temp.getString("product_img"), temp.getDouble("price"), temp.getString("category_id"), temp.getString("product_description")));
                                }
                                list2ss.add(listemp);
                          }
                    %>
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

        <jsp:include page="footer.jsp" />


        <script>
            var renderNumber = 5;
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

            var jsList2ss = [];

            <%                  for (ArrayList<products> sublist : list2ss) {
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

            jsList2ss.push(subArray);
            <% }%>
        </script>

        <script type="text/javascript" src="./js/renderFood/renderMenu.js"></script>

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
