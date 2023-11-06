<%-- 
    Document   : order
    Created on : Oct 26, 2023, 1:41:02 AM
    Author     : khuy
--%>

<%@page import="DAOs.CategoryDAO"%>
<%@page import="DAOs.ProductDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
        <style>
            h1 {
                text-align: center;
                margin-top: 20px;
                margin-bottom:  50px;
            }
        </style>
        <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
    </head>

    <body>
        <%
              ProductDAO aP = new ProductDAO();
              CategoryDAO aC = new CategoryDAO();
              String check = "";
              String staff_id = "";
              if (request.getAttribute("check") != null) {
                    check = request.getAttribute("check").toString();
                    staff_id = request.getAttribute("staff").toString();
              } else {
                    staff_id = request.getParameter("staff");
              }
        %>


        <h1>Welcome Staff</h1>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-4">
                    <div class="col-xs-4 link pb-4">
                        <a href="/staff?staff=<%=staff_id %>" class="btn btn-success centered-link" data-toggle="modal">
                            <i class="fa-solid text-center fa-backward mr-1"></i>
                            Back</a>
                    </div>
                    <form action="#" method="post">

                        <label for="">ID Staff <input type="text" name="staff_id" value="<%=staff_id%>" readonly ></label>
                        <div style="margin: 10px 0;">
                        </div>
                        <label for=""> Choose you want to find:
                            <select name="optCategory" id="">
                                <%
                                      ResultSet rs = aC.getAllCategories();
                                      while (rs.next()) {
                                %>
                                <option value="<%= rs.getString("category_id")%>"><%= rs.getString("category_name")%></option>
                                <%
                                      }
                                %>
                            </select>
                        </label>
                        <div style="margin: 10px 0;">
                        </div>   
                        <input type="submit" name="btnChoose" value="Choose">
                    </form>


                </div>
                <div class="col-sm-8">
                    <form method="POST" action="order">
                        <table id="example" class="table table-striped" style="width:100%">
                            <thead>
                                <tr>
                                    <th scope="col" width="50">#</th>
                                    <th scope="col">Product</th>
                                    <th scope="col">Price</th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                      if (check.equals("done")) {
                                            String category_id = request.getAttribute("category_id").toString();
                                            ResultSet set = aP.getAllProductbyCategory(category_id);
                                            int count = 0;
                                            while (set.next()) {
                                                  count++;
                                %>
                                <tr>
                                    <th scope="row"><%= count%></th>
                                    <td><%= set.getString("product_name")%></td>
                                    <td><%= set.getString("price")%>VND</td>
                                    <td><input type="checkbox" name="box_product"  value="<%= set.getString("product_id")%>" id=""></td>
                                </tr>
                                <%
                                            }
                                      }
                                %>    
                            </tbody>
                        </table>
                        <div style="margin: 20px 0;">
                        </div>
                        <label>Quantity: <input type="number" name="quantity"  id=""></label>
                        <div style="margin: 10px 0;">
                        </div>
                        <label for="">Customer Information: <input name="phone" required style="width: 100%;" type="text" placeholder="Please enter customer phone number "></label>
                        <div style="margin: 10px 0;">
                        </div>
                        <label for="">ID Staff <input type="text" name="staff_id" value="<%= staff_id%>" readonly ></label>
                        <div style="margin: 20px 0;">
                        </div>
                        <input type="submit" name="btnOrder" value="Order">
                    </form>
                    <%
                          if (!check.equals("done")) {
                    %>
                    <div style="margin: 30px 0;">
                    </div>
                    <p class="text-bg-danger">${check}</p>
                    <%
                          }
                    %>       
                </div>
            </div>
        </div>
    </body>

</html>
