<%-- 
    Document   : register
    Created on : Oct 30, 2023, 4:01:00 AM
    Author     : khuy
--%>

<%@page import="Models.accounts" %>
<%@page import="DAOs.AccountDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!-- Bootstrap v5.1.3 CDNs -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- CSS File -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="">
    <script src="code.jquery.com_jquery-3.7.0.min.js"></script>

    <!--JS FILE-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
    <script type="text/javascript"><%@include file="/js/validationInsertAcc.js" %></script>

    <style>
        label.error{
            color: orange;
        }
        body {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background-image: url("/images/bg_6.jpg");
            background-size: cover;
            background-position: center;
        }

        .login {
            margin: 20px;
            height: min-content;
            padding: 20px;
            border-radius: 12px;
            background: #ffffff;
        }
    </style>
</head>
<body>
    <div class="login">
        <div class="container">
            <form id="SignUp" action="insert" method="post">
                <div class="container rounded bg-white mt-5 mb-5">
                    <div class="row">
                        <div class="col-md-4 border-right">
                            <div class="d-flex flex-column align-items-center text-center p-4 py-4"><img class="rounded-circle mt-5" width="200px" height="200px" src="https://img.meta.com.vn/Data/image/2021/09/21/hinh-anh-cho-con-3.jpg">
                                <span class="font-weight-bold"></span><span class="text-black-50"></span><span> </span></div>
                        </div>
                        <div class="col-md-8 border-right">
                            <div class="p-3 py-5">
                                <div class="d-flex justify-content-between align-items-center mb-3">
                                    <h4 class="text-right">Sign Up Form</h4>
                                </div>
<!--                                <input type="hidden" name="admin_id" id="admin_id" value />-->
                                <div class="row mt-2">
                                    <div class="col-md-7"><label class="labels">Full name</label><input id="fullname" name="fullname" type="text" class="form-control" value=""></div>
                                    <div class="col-md-5"><label class="labels">Age</label><input id="age" name="age" type="number" class="form-control" value="" min="15" max="50"></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-7"><label class="labels">Email</label><input id="email" name="email" type="text" class="form-control" value=""></div>
                                    <div class="col-md-5"><label class="labels">Phone</label><input id="phone" name="phone" type="text" class="form-control" value=""></div>
                                </div>
                                <div class="row mt-3">
                                    <div>
                                        <label class="labels">Select Province</label>
                                        <input type="hidden" name="myCity" id="myCity" value="" />
                                        <select class="form-select mb-12" id="city" name="city" aria-label=".form-select-sm">
                                            <option value="" selected></option>           
                                        </select>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div>
                                        <div class="col-md-12"><label class="labels">Username</label><input id="username" name="username" type="text" class="form-control" value=""></div>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div>
                                        <div class="col-md-12"><label class="labels">Password</label><input id="password" name="password" type="password" class="form-control" value=""></div>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div>
                                        <div class="col-md-12"><label class="labels">Repeat password</label><input id="repassword" name="repassword" type="password" class="form-control" value=""></div>
                                    </div>
                                </div>

                                <div class="row mt-3">
                                    <div class="form-group">
                                        <input type="checkbox" name="agree-term" id="myCheckbox" class="agree-term" />
                                        <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service" style="color: black">Terms of service</a></label>
                                    </div>
                                </div>

                                <div class="mt-5 text-center">
                                    <input type="submit" id="submitButton" class="btn btn-primary" value="Register" disabled>
                                    <a href="login" class="btn btn-light">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
                <script>
                    var citySelect = document.getElementById("city");

                    // Lấy danh sách các tỉnh từ dữ liệu JSON
                    var Parameter = {
                        url: "https://raw.githubusercontent.com/kenzouno1/DiaGioiHanhChinhVN/master/data.json",
                        method: "GET",
                        responseType: "application/json",
                    };

                    var promise = axios(Parameter);
                    promise.then(function (result) {
                        renderCity(result.data);
                    });

                    function renderCity(data) {
                        for (const x of data) {
                            citySelect.options[citySelect.options.length] = new Option(x.Name, x.Id);
                        }

                        var initialCity = ""; // Giá trị tỉnh ban đầu
                        var CitySelected = "";
                        // Thiết lập giá trị ban đầu cho phần tử select
                        for (var i = 0; i < citySelect.options.length; i++) {
                            //console.log(citySelect.options[i].text);
                            if (citySelect.options[i].text.includes(initialCity)) {
                                citySelect.selectedIndex = i;
                                //                            CitySelected = citySelect.options[i].text;
                                //                            document.getElementById('myCity').value = CitySelected;
                                //                        sessionStorage.setItem("CitySelected", CitySelected);
                                break;
                            }
                        }
                        citySelect.onchange = function () {
                            // Code xử lý khi lựa chọn tỉnh thay đổi
                            var selectedCity1 = citySelect.options[citySelect.selectedIndex].text;
                            CitySelected = citySelect.options[citySelect.selectedIndex].text;
                            document.getElementById('myCity').value = CitySelected;
                            //                    sessionStorage.setItem("CitySelected", CitySelected);
                            //console.log(CitySelected);
                            console.log(CitySelected);
                        };


                        //                function saveCity() {
                        //                    sessionStorage.setItem("CitySelected", CitySelected);
                        //                    alert("Xin chào, đây là câu lệnh JavaScript!");
                        //                }
                    }

                    const checkbox = document.getElementById('myCheckbox');
                    const submitButton = document.getElementById('submitButton');
                    checkbox.addEventListener('click', function () {
                        if (checkbox.checked) {
                            submitButton.disabled = false;
                        } else {
                            submitButton.disabled = true;
                        }
                    });

                </script>
                <%
                                }
                          }
                    %>
            </form>
        </div>

    </div>
</body>
</html>
