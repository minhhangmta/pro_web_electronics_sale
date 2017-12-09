<%-- 
    Document   : Checkout
    Created on : Dec 8, 2017, 1:59:12 PM
    Author     : tranv
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <!-- breadcrumbs -->
            <div class="breadcrumb_dress">
                <div class="container">
                    <ul>
                        <li><a href="Home/index"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Checkout</a> <i>/</i></li>

                    </ul>
                </div>
            </div>
            <div class="container">
                <div class="col-md-1"></div>
<!--                // Nội dung phần checkout-->
                <div class="col-md-10">
                    <table>
                        
                    </table>   
                </div>
                <div class="col-md-1"></div>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
