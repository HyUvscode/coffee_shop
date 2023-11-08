<%-- 
    Document   : checkout
    Created on : Nov 1, 2022, 10:04:10 AM
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
        <jsp:include page="navbar.jsp" />
        <!-- END nav -->
        <br>
        <section class="ftco-section">
            <div class="container">
                <div class="row">
                    <div class="col-xl-8 ftco-animate">
                        <form class="billing-form ftco-bg-dark p-3 p-md-5">
                            <h3 class="mb-4 billing-heading">Forgot Password</h3>
                            <div class="row align-items-end">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="text" id="email" class="form-control" placeholder="">
                                    </div>
                                </div>

                                <div class="col-md-6" id="form_changepass" style="display:none;">
                                    <div class="form-group">
                                        <label for="code">Enter KEY</label>
                                        <input type="text" id="key_forgot" class="form-control" placeholder="">
                                    </div>
                                </div>
                                <div class="col-md-6" id="form_changepass2" style="display:none;">
                                    <div class="form-group">
                                        <label for="newapassword">Enter New Password</label>
                                        <input type="password" id="newapassword" class="form-control" placeholder="">
                                    </div>
                                </div>
                                <script>


                                    function forgot() {
                                        var email = $('#email').val();
                                        if (!email) {
                                            alert("Please enter email");
                                            return;
                                        }
                                        $.ajax({
                                            url: 'forgot',
                                            type: 'POST',
                                            dataType: 'JSON',
                                            data: {
                                                type: "sendmail",
                                                email: email
                                            },
                                            beforeSend: function () {
                                                wait('#button_forgot', false, 'Waiting....');
                                            },
                                            complete: function () {
                                                wait('#button_forgot', true, 'Send Request');
                                            },
                                            success: (data) => {
                                                if (data.status == 'success') {
                                                    alert("Thành công vui lòng check mail!");
                                                    $('#form_changepass').fadeIn();
                                                    $('#form_changepass2').fadeIn();
                                                    $('#button_forgot_2').fadeIn();
                                                    $('#button_forgot').hide();
                                                } else {
                                                    alert(data.msg);
                                                }
                                            } // This was the missing closing parenthesis
                                        });
                                    }

                                    function changepass() {
                                        var key_forgot = $('#key_forgot').val();
                                        var password = $('#newapassword').val();
                                        if (!key_forgot) {
                                            alert("Please enter key");
                                            return;
                                        }
                                        if (!password) {
                                            alert("Please enter password")
                                            return;
                                        }
                                        $.ajax({
                                            url: 'forgot',
                                            type: 'POST',
                                            dataType: 'JSON',
                                            data: {
                                                type: "changepass",
                                                key_forgot: key_forgot,
                                                password: password
                                            },
                                            beforeSend: function () {
                                                wait('#button_forgot_2', false, 'Waiting....');
                                            },
                                            complete: function () {
                                                wait('#button_forgot_2', true, 'Change Password');
                                            },
                                            success: (data) => {
                                                if (data.status == 'success') {
                                                    alert("Success!");
                                                    setTimeout(function () {
                                                        window.location.href = '/login.jsp';
                                                    }, 1000);
                                                } else {
                                                    alert(data.msg);
                                                }
                                            }
                                        });
                                    }
                                    function wait(t, e, n) {
                                        return e ? $(t).prop("disabled", !1).html(n) : $(t).prop("disabled", !0).html(
                                                '<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Waiting...');
                                    }

                                </script>
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <button type="button" id="button_forgot" onclick="forgot();" class="btn btn-primary py-3 px-4">Send Request</button>
                                        <button type="button" id="button_forgot_2" onclick="changepass();" class="btn btn-primary py-3 px-4" style="display:none;">Change Password</button>

                                    </div>
                                </div>

                                <div class="w-100"></div>

                            </div>
                        </form><!-- END -->




                    </div> <!-- .col-md-8 -->



                </div>
            </div>
        </section> <!-- .section -->

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
