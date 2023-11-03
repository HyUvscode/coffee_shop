<%-- 
    Document   : testList
    Created on : Nov 2, 2023, 3:08:38?AM
    Author     : khuy
--%>

<%@ page import="java.sql.*" %>
<%@ page import="DBConnection.DBConnections" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop</title>
</head>

<body>
    <div class="container">
        <div class="row">
            <%
                try {
                    OrderDAO oD = new OrderDAO();
                    PreparedStatement statement = connection.prepareStatement("SELECT * FROM ten_bang");
                    ResultSet resultSet = statement.executeQuery();

                    while (resultSet.next()) {
            %>
                        <div class='col-md-4 text-center'>
                            <div class='menu-wrap'>
                                <a href='#' class='menu-img img mb-4' style='background-image: url(<%= resultSet.getString("anh_url") %>);'></a>
                                <div class='text'>
                                    <h3><a href='#'><%= resultSet.getString("ten_mon") %></a></h3>
                                    <p><%= resultSet.getString("mo_ta") %></p>
                                    <p class='price'><span><%= resultSet.getDouble("gia") %></span></p>
                                </div>
                            </div>
                        </div>
            <%
                    }
                } catch (Exception e) {
                    out.println("Error: " + e.getMessage());
                }
            %>
        </div>
    </div>
</body>

</html>
