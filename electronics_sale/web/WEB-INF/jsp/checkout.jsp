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
               
                <!--                // Nội dung phần checkout-->
                <div class="">
                    <form method="POST" action="${pageContext.request.contextPath}/shopping/seveOrder">
                        <table class="table table-bordered table-condensed">
                            <tr>
                            <input name="nameCustomer" placeholder="Họ và tên"/>
                            </tr>
                            <tr>
                            <input name="phoneCustomer" placeholder="Số điện thoại"/>
                            </tr>
                            <tr>
                            <input name="emailCustomer" placeholder="Email"/>
                            </tr>
                            <tr>
                            <input name="addressCustomer" placeholder="Địa chỉ"/>
                            </tr>
                        </table>  
                        <input type="submit" value="Gửi">
                    </form>
                </div>
                
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
