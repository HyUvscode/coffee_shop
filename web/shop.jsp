<%-- 
    Document   : shop
    Created on : Oct 26, 2023, 1:41:02 AM
    Author     : khuy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Antoinétee Coffee </title>
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
                            <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Home</a></span> <span>Shop</span></p>
                        </div>

                    </div>
                </div>
            </div>
        </section>


        <section class="ftco-menu mb-5 pb-5">
            <div class="container">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-7 heading-section text-center ftco-animate fadeInUp ftco-animated">
                        <span class="subheading">Discover</span>
                        <h2 class="mb-4">Our Products</h2>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    </div>
                </div>
                <div class="row d-md-flex">

                    <div class="col-lg-12 ftco-animate p-md-5 fadeInUp ftco-animated">
                        <div class="row">
                            <div class="col-md-12 nav-link-wrap mb-5">
                                <div class="nav ftco-animate nav-pills justify-content-center fadeInUp ftco-animated" id="v-pills-tab" role="tablist" aria-orientation="vertical">

                                    <a class="nav-link active show" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1" role="tab" aria-controls="v-pills-1" aria-selected="true">Coffee</a><a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab" aria-controls="v-pills-2" aria-selected="false">Drink</a><a class="nav-link" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab" aria-controls="v-pills-3" aria-selected="false">Food</a></div>
                            </div>
                            <div class="col-md-12 d-flex align-items-center">

                                <div class="tab-content ftco-animate fadeInUp ftco-animated" id="v-pills-tabContent">


                                    <div class="tab-pane fade active show" id="v-pills-1" role="tabpanel" aria-labelledby="v-pills-1-tab"><div class="row"><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//Cf3.jpg&quot;);"></a><div class="text"><h3><a href="#">Cà Phê Muối</a></h3><p>Sự kết hợp độc đáo giữa vị đắng của cà phê và một chút muối nhẹ nhàng, tạo nên một trải nghiệm độc đáo và thú vị cho vị giác.</p><p class="price"><span>49000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//Cf5.jpg&quot;);"></a><div class="text"><h3><a href="#">Cappuccino</a></h3><p>Một sự kết hợp độc đáo giữa đường đen thơm ngon và sữa tươi mát lạnh, khi được pha trên đá tạo nên một món đồ uống ngọt ngào, đậm đà và sảng khoái.</p><p class="price"><span>49000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//Cf4.jpg&quot;);"></a><div class="text"><h3><a href="#">Cà Phê Sữa Đá</a></h3><p>Sự hòa quyện hoàn hảo giữa cà phê đậm đà và sữa ngọt mát, khi được pha trên đá tạo nên một món đồ uống thơm ngon, mát lạnh và sảng khoái.</p><p class="price"><span>39000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//Cf2.jpg&quot;);"></a><div class="text"><h3><a href="#">Cà Phê Đen Đá</a></h3><p>Hương thơm đậm đà, cảm giác sảng khoái của cà phê nguyên chất trên đá, giúp bạn tỉnh táo và hứng khởi trong ngày mới.</p><p class="price"><span>29000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//Cf1.jpg&quot;);"></a><div class="text"><h3><a href="#">Bạc Sỉu</a></h3><p>Một món đồ uống truyền thống của Hà Nội, kết hợp giữa cà phê đậm đà và sữa đặc, tạo nên hương vị đặc biệt và thú vị.</p><p class="price"><span>29000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div></div></div><div class="tab-pane fade" id="v-pills-2" role="tabpanel" aria-labelledby="v-pills-2-tab"><div class="row"><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//DN10.jpg&quot;);"></a><div class="text"><h3><a href="#">Frosty Xoài Nhiệt Đới</a></h3><p>Đồ uống thú vị và mát lạnh, kết hợp giữa xoài tươi, kem và đá, mang đến cảm giác sảng khoái và hứng khởi trong những ngày nóng.</p><p class="price"><span>59000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//DN9.jpg&quot;);"></a><div class="text"><h3><a href="#">Frosty Phúc Bồn Tử</a></h3><p>Đồ uống độc đáo và bổ dưỡng, kết hợp giữa trái Phúc Bồn Tử tươi, kem và đá, mang đến cảm giác sảng khoái và hứng khởi khi thưởng thức.</p><p class="price"><span>59000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//DN8.jpg&quot;);"></a><div class="text"><h3><a href="#">Frosty Macca Choco Chip</a></h3><p>Đồ uống thơm ngon và độc đáo, kết hợp giữa hạt macca, viên chocolate chip và đá, mang lại cảm giác thư giãn và ngọt ngào khi thưởng thức.</p><p class="price"><span>59000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//DN7.jpg&quot;);"></a><div class="text"><h3><a href="#">Frosty Dâu</a></h3><p>Đồ uống mát lạnh và thú vị, kết hợp giữa dâu tươi, kem và đá, mang đến cảm giác sảng khoái và hứng khởi khi thưởng thức.</p><p class="price"><span>59000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//DN6.jpg&quot;);"></a><div class="text"><h3><a href="#">Frosty Caramel</a></h3><p>Đồ uống đặc biệt và mát lạnh, kết hợp giữa kem, caramel và đá, kem mịn và hấp dẫn, mang lại cảm giác mát lạnh và sảng khoái trong ngày nóng.</p><p class="price"><span>59000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//DN2.jpg&quot;);"></a><div class="text"><h3><a href="#">Trà Đào Kombucha</a></h3><p>Sự kết hợp tuyệt vời giữa trà đào tươi mát và Kombucha tự nhiên lên men, kích thích sự cân bằng và sức khỏe tổng thể.</p><p class="price"><span>59000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//DN4.jpg&quot;);"></a><div class="text"><h3><a href="#">Trà Lài Hạt Sen</a></h3><p>Một loại trà truyền thống của Việt Nam, kết hợp giữa lái (một loại lá trà) và hạt sen tươi, mang lại cảm giác thư thái và sảng khoái khi thưởng thức.</p><p class="price"><span>49000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//DN3.jpg&quot;);"></a><div class="text"><h3><a href="#">Trà Đen</a></h3><p>Loại trà được chế biến từ lá trà Camellia sinensis, có màu đen đặc trưng và hương vị đậm đà, thường được thưởng thức nóng hoặc đá, mang đến sự sảng khoái và thư giãn cho người uống.</p><p class="price"><span>49000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//DN1.jpg&quot;);"></a><div class="text"><h3><a href="#">Trà Đào</a></h3><p>Một loại đồ uống trà trái cây phổ biến, có hương vị tươi mát của trà pha chế kết hợp với vị ngọt tự nhiên và mùi thơm của đào, tạo nên một món uống trái cây thơm ngon và sảng khoái.</p><p class="price"><span>49000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//DN5.jpg&quot;);"></a><div class="text"><h3><a href="#">Trà Vải</a></h3><p>Một loại trà trái cây phổ biến, được làm từ lá trà kết hợp với vải tươi, mang đến cảm giác sảng khoái và thỏa mái khi thưởng thức.</p><p class="price"><span>39000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div></div></div><div class="tab-pane fade" id="v-pills-3" role="tabpanel" aria-labelledby="v-pills-3-tab"><div class="row"><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//FD15.jpg&quot;);"></a><div class="text"><h3><a href="#">Elfie</a></h3><p>Món tráng miệng đáng yêu và phá cách, với lớp kem mousse nhẹ và lớp vỏ bánh mềm mịn, được trang trí với hình ảnh và họa tiết đáng yêu của các nhân vật huyền thoại, mang đến trải nghiệm thần tiên và ngọt ngào.</p><p class="price"><span>69000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//FD14.jpg&quot;);"></a><div class="text"><h3><a href="#">Meraki</a></h3><p>Tác phẩm nghệ thuật bằng kem, kết hợp giữa hương vị tinh tế và thiết kế độc đáo, tạo nên một trải nghiệm trực quan và ngọt ngào cho thực khách.</p><p class="price"><span>69000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//FD13.jpg&quot;);"></a><div class="text"><h3><a href="#">Versaille</a></h3><p>Sự kết hợp tinh tế giữa kem hạt tiêu và lớp kem mousse nhẹ nhàng, tạo nên một trải nghiệm thượng lưu và sang trọng cho những người yêu thích hương vị độc đáo.</p><p class="price"><span>69000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//FD12.jpg&quot;);"></a><div class="text"><h3><a href="#">Manjari</a></h3><p>Sự hòa quyện tuyệt vời giữa kem sô-cô-la cao cấp Manjari và lớp kem mịn, tạo nên một trải nghiệm độc đáo và ngọt ngào cho những tín đồ sô-cô-la.</p><p class="price"><span>69000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//FD11.jpg&quot;);"></a><div class="text"><h3><a href="#">CloudBurst</a></h3><p>Sự kết hợp tuyệt vời giữa lớp kem mịn và hương vị trái cây đa dạng, tạo nên một trải nghiệm ngọt ngào và mát lạnh như những đám mây tràn đầy hương vị.</p><p class="price"><span>69000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//FD2.jpg&quot;);"></a><div class="text"><h3><a href="#">Bánh Mì Gậy Cá Ngừ Mayo</a></h3><p>Món ăn độc đáo và ngon lành, với lớp bánh mì mềm mịn, kết hợp với miếng cá ngừ thơm ngon, được phủ lớp mayo kem mịn và các loại rau sống tươi ngon, mang đến trải nghiệm ẩm thực ngon miệng và bổ dưỡng.</p><p class="price"><span>29000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//FD1.jpg&quot;);"></a><div class="text"><h3><a href="#">Bánh Mì Chà Bông Phô Mai</a></h3><p>Món ăn độc đáo và ngon miệng, với lớp bánh mì giòn tan, kết hợp hài hòa giữa chà bông thơm ngon và lớp phô mai béo ngậy, mang đến trải nghiệm ẩm thực đặc biệt và hấp dẫn.</p><p class="price"><span>29000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//FD5.jpg&quot;);"></a><div class="text"><h3><a href="#">Croissant Trứng Muối</a></h3><p>Món ăn sáng ngon lành và độc đáo, với lớp bánh croissant giòn tan, bên trong là trứng muối mềm mịn và hấp dẫn, mang đến trải nghiệm ẩm thực đặc biệt và ngon miệng.</p><p class="price"><span>29000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//FD4.jpg&quot;);"></a><div class="text"><h3><a href="#">Bánh Mì Việt Nam Thịt Nguội</a></h3><p>Món ăn truyền thống và phổ biến, với lớp bánh mì giòn tan, kết hợp với thịt nguội thơm ngon, pho mát, rau sống và gia vị truyền thống như hành, ngò, mang đến trải nghiệm ẩm thực đặc trưng và ngon miệng.</p><p class="price"><span>29000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//FD3.jpg&quot;);"></a><div class="text"><h3><a href="#">Bánh Mì Que Pate</a></h3><p>Món ăn truyền thống và phổ biến, với lớp bánh mì giòn tan, bên trong là phần nhân pate thơm ngon, tạo nên hương vị độc đáo và sự kết hợp hấp dẫn của các thành phần, mang đến trải nghiệm ẩm thực đặc biệt và ngon miệng.</p><p class="price"><span>19000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//FD10.jpg&quot;);"></a><div class="text"><h3><a href="#">Mousse Red Velvet</a></h3><p>Món tráng miệng đặc biệt và hấp dẫn, với lớp kem mousse màu đỏ đặc trưng của bánh Red Velvet, mềm mịn và thơm ngon, mang đến trải nghiệm ẩm thực ngọt ngào và thú vị cho người thưởng thức.</p><p class="price"><span>19000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//FD9.jpg&quot;);"></a><div class="text"><h3><a href="#">Mousse Gấu Chocolate</a></h3><p>Món tráng miệng ngọt ngào và đáng yêu, với lớp kem mousse chocolate nhẹ nhàng và mịn màng, hình dáng như một chú gấu đáng yêu, mang đến trải nghiệm ẩm thực ngon miệng và thú vị.</p><p class="price"><span>19000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//FD8.jpg&quot;);"></a><div class="text"><h3><a href="#">Mochi Kem Xoài</a></h3><p>Bánh mochi truyền thống, có nhân kem xoài thơm ngon và mịn màng, được bọc trong lớp vỏ mochi mềm dai, mang đến trải nghiệm ẩm thực ngon lành và thú vị với hương vị trái cây đặc trưng của xoài.</p><p class="price"><span>19000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//FD7.jpg&quot;);"></a><div class="text"><h3><a href="#">Mochi Kem Việt Quất</a></h3><p>Bánh mochi truyền thống có nguồn gốc từ Nhật Bản, với nhân kem việt quất mềm mịn và hương vị ngọt thanh, được bọc trong lớp vỏ mochi mềm dai, mang lại trải nghiệm ẩm thực đặc biệt và ngon miệng.</p><p class="price"><span>19000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div><div class="col-md-4 text-center"><div class="menu-wrap"><a href="#" class="menu-img img mb-4" style="background-image: url(&quot;imageDist//FD6.jpg&quot;);"></a><div class="text"><h3><a href="#">Mochi Kem Matcha</a></h3><p>Bánh mochi truyền thống của Nhật Bản, có nhân kem matcha thơm ngon và mịn màng, được bọc bởi lớp vỏ mochi mềm dai, mang đến trải nghiệm ẩm thực ngon lành và đặc biệt.</p><p class="price"><span>19000.0</span></p><p><a href="#" class="btn btn-primary btn-outline-primary">Add to cart</a></p></div></div></div></div></div></div>
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
