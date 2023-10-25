<%-- 
   Document   : insertDist
   Created on : Jul 13, 2023, 10:15:08 AM
   Author     : Dao Thien Hieu Loi - CE171675
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.DAOs.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Bootstrap v5.1.3 CDNs -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

        <!-- CSS File -->
        <link rel="stylesheet" href="">
        <script src="code.jquery.com_jquery-3.7.0.min.js"></script>
        <link rel="stylesheet" href="/css/styleForm.css"/>
    </head>
    <body>
        <div class="login">
            <h1 class="text-center">ADD PRODUCT</h1>

            <form class=" formAddProduct" action="product" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label class="form-label" for="product_name">Product Name</label>
                    <input class="form-control" type="text" name="product_name" id="product_name">
                    <p></p>
                </div>
                <div class="form-group">
                    <label class="form-label" for="product_img">Product Picture</label>
                    <input class="form-control" type="file" name="product_img" id="product_img">
                    <p></p>
                </div>
                <div class="form-group">
                    <label class="form-label" for="product_price">Product Price</label>
                    <input class="form-control" type="text" name="product_price" id="product_price">
                    <p></p>
                </div>
                <label class="form-label">Product category</label>
                <div style="display: flex; align-content: space-between; margin: 7px 0;">
                    <%
                          CategoryDAO aC = new CategoryDAO();
                          ResultSet rs = aC.getAllCategories();
                          if (rs != null) {
                                while (rs.next()) {
                    %>
                    <div class="form-check form-check-inline" style="display: inline; margin-right: 20px">
                        <input class="form-check-input" type="radio" id="category_id" name="category_id"  value="<%=rs.getString("category_id")%>">
                        <label class="form-check-label" for="category_id"><%=rs.getString("category_name")%></label>
                        <p></p>
                    </div>
                    <%
                                }
                          }
                    %>
                </div>

                <input name="btnInsert" class="btn btn-success w-100" type="submit" value="SUBMIT">
            </form>
        </div>
    </div>
    <script src="/jsStorage/jquery-3.7.0.js"></script>
    <script src="/jsStorage/valid.js"></script>
</body>
</html>
