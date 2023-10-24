<%-- 
    Document   : profileEdit
    Created on : Oct 24, 2023, 9:57:22 PM
    Author     : khuy
--%>

<%@page import="Models.accounts"%>
<%@page import="DAOs.AccountDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Bootstrap v5.1.3 CDNs -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/css/style_3.css">

        <!-- CSS File -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="">
        <script src="code.jquery.com_jquery-3.7.0.min.js"></script>

        <!--JS FILE-->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
        <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js" type="text/javascript"></script>
        <script type="text/javascript"><%@include file="/js/validationUpdate.js" %></script>

        <style>
            label.error{
                color: orange;
                padding: 0;
                margin: 0;
            }
            body{
                background-image: url(images/bg.jpg);
                background-size: cover;

            }
        </style>
    </head>
    <body>
        <%
              if (session.getAttribute("login") == null) {
                    response.sendRedirect("/");
              } else {
                    AccountDAO aD = new AccountDAO();
                    accounts acc = new accounts();
                    if (session.getAttribute("login").equals("admin")) {
                          //String account_id = (String) session.getAttribute("return");
                          String account_id = request.getParameter("Ad");
                          acc = aD.getAccount(account_id);
                    } else {
                          response.sendRedirect("/logout");
                    }

                    accounts accEdit = new accounts();
                    //String account_idEdit = (String) session.getAttribute("edited");
                    String account_idEdit = request.getParameter("St");
                    accEdit = aD.getAccount(account_idEdit);

        %>
        <section class="py-5 my-5">
            <div class="container">
                <h1 class="mb-5">Account Settings</h1>
                <div class="bg-white shadow rounded-lg d-block d-sm-flex">
                    <div class="profile-tab-nav border-right">
                        <div class="p-4">
                            <div class="img-circle text-center mb-3">
                                <img src="./images/avatar.jpg" alt="Image" class="shadow">
                            </div>
                            <h4 class="text-center"><%=accEdit.getFullname()%></h4>
                        </div>
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" id="account-tab" data-toggle="pill" href="#account" role="tab" aria-controls="account" aria-selected="true">
                                <i class="fa fa-home text-center mr-1"></i> 
                                Account
                            </a>
                            <a class="nav-link" id="password-tab" data-toggle="pill" href="#password" role="tab" aria-controls="password" aria-selected="false">
                                <i class="fa fa-key text-center mr-1"></i> 
                                Password
                            </a>
                            <%
                                  String st = "";
                                  if (acc.getRole_id().equals("Ad")) {
                                        session.setAttribute("login", "admin");
                                        st = ("/role/Ad?admin=" + String.valueOf(acc.getAccount_id()));
                                  } else if (acc.getRole_id().equals("St")) {
                                        session.setAttribute("login", "staff");
                                        st = ("/role/St?staff=" + String.valueOf(acc.getAccount_id()));
                                  } else if (acc.getRole_id().equals("Cus")) {
                                        session.setAttribute("login", "customer");
                                        st = ("/role/Cus?customer=" + String.valueOf(acc.getAccount_id()));
                                  }
                            %>
                            <a class="nav-link" id="security-tab" data-toggle="pill" href="#security" role="tab" aria-controls="security" aria-selected="false" onclick="navigateToSt()">
                                <i class="fa fa-user text-center mr-1"></i> 
                                Back
                            </a>
                        </div>
                    </div>

                    <div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
                            <h3 class="mb-4">Account Settings</h3>
                            <div class="row">
                                <form id="AccountUpdate" action="profile" method="post" >
                                    <input type="hidden" name="username" id="username" value="<%=accEdit.getUsername()%>" />
                                    <input type="hidden" name="account_id" id="account_id" value="<%=accEdit.getAccount_id()%>" />
                                    <input type="hidden" name="role_id" id="role_id" value="<%=accEdit.getRole_id()%>" />
                                    <div class="row mt-2">
                                        <div class="col-md-8"><label class="labels">Full name</label><input type="text" id="fullname" name="fullname" class="form-control" placeholder="enter full name" value="<%=accEdit.getFullname()%>"></div>
                                        <div class="col-md-4"><label class="labels">Age</label><input type="number" id="age" name="age" class="form-control" placeholder="enter phone number" value="<%=accEdit.getAge()%>"></div>
                                    </div>
                                    <div class="row mt-3">
                                        <div class="col-md-6"><label class="labels">Email</label><input type="text" id="email" name="email" class="form-control" placeholder="enter email" value="<%=accEdit.getEmail()%>"></div>
                                        <div class="col-md-6"><label class="labels">Phone</label><input type="text" id="phone" name="phone" class="form-control" placeholder="enter phone" value="<%=accEdit.getPhone()%>"></div>
                                    </div>
                                    <div class="row mt-3">
                                        <div>
                                            <label class="labels">Provine</label>
                                            <select class="form-select form-select-sm mb-12" id="city" name="city" aria-label=".form-select-sm">
                                            </select> 
                                        </div>
                                    </div>
                                    <input type="hidden" name="myCity" id="myCity" value="" />
                                    <div class="mt-5 text-center">
                                        <input type="submit" class="btn btn-primary" value="Save Profile">
                                        <a class="btn btn-light" href="/edit?Ad=<%=acc.getAccount_id() %>&St=<%=accEdit.getAccount_id() %>">Cancel</a>
                                        <!--<button class="btn btn-primary profile-button" type="button">Save Profile</button>-->
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
                            <h3 class="mb-4">Password Settings</h3>
                            <form  id="AccountChangePass" action="changepass" method="post">
                                <input type="hidden" name="username" id="username" value="<%=accEdit.getUsername()%>" />
                                <input type="hidden" name="account_id" id="account_id" value="<%=accEdit.getAccount_id()%>" />
                                <input type="hidden" name="role_id" id="role_id" value="<%=accEdit.getRole_id()%>" />
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Old password</label>
                                            <input type="password" id="oldPass" name="oldPass" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>New password</label>
                                            <input type="password" id="newPass" name="newPass" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Confirm new password</label>
                                            <input type="password" id="reNewPass" name="reNewPass" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <input class="btn btn-primary" type="submit" value="Update">
                                    <button class="btn btn-light" >Cancel</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
        <script>
                                var citySelect = document.getElementById("city");

                                function navigateToSt() {
                                    var st = "<%= st%>";
                                    window.location.href = st;
                                }
                                ;

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

                                    var initialCity = "<%=accEdit.getAddress()%>"; // Giá trị tỉnh ban đầu
                                    var CitySelected = "";
                                    // Thiết lập giá trị ban đầu cho phần tử select
                                    for (var i = 0; i < citySelect.options.length; i++) {
                                        //console.log(citySelect.options[i].text);
                                        if (citySelect.options[i].text.includes(initialCity)) {
                                            citySelect.selectedIndex = i;
                                            CitySelected = citySelect.options[i].text;
                                            document.getElementById('myCity').value = CitySelected;
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
        </script>
        <%
              }
        %>
    </body>
</html>
