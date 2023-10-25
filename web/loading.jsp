<%-- 
    Document   : loading
    Created on : Jul 16, 2023, 10:53:34 PM
    Author     : Dao Thien Hieu Loi - CE171675
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Loading...</title>
        <style>
            #loading {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: #fff;
                z-index: 9999;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            #loading-content {
                text-align: center;
            }

            #loading h2 {
                color: #333;
            }
        </style>
    </head>
    <body>
        <div id="loading">
            <div id="loading-content">
                <h2>Loading...</h2>
                <img src="./images/loading.gif" alt="Loading">
            </div>
        </div>
    </body>
</html>
