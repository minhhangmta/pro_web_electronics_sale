<%-- 
    Document   : sidebar-menu
    Created on : Dec 13, 2017, 10:26:58 PM
    Author     : Phong_Tung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div id="sidebar"><a href="${pageContext.request.contextPath}/adindex" class="visible-phone"><i class="icon icon-home"></i> Home </a>
            <ul>
                <c:set value="${pageContext.request.servletPath}" var="servletPath"/>
                <li class="${servletPath.contains("index") ? "active" : "" }"> <a href="${pageContext.request.contextPath}/adindex"><i class="icon icon-home"></i> <span>Home</span></a> </li>
                <li class="${servletPath.contains("products") ? "active" : "" }"> <a href="${pageContext.request.contextPath}/adproducts"><i class="icon icon-signal"></i> <span>Quản lý sản phẩm</span></a> </li>
                <li class="${servletPath.contains("category") ? "active" : "" }"> <a href="${pageContext.request.contextPath}/adcategory"><i class="icon icon-inbox"></i> <span>Quản lý danh mục</span></a> </li>
                <li class="${servletPath.contains("account") ? "active" : "" }"><a href="${pageContext.request.contextPath}/adaccount"><i class="icon icon-th"></i> <span>Quản lý tài khoản</span></a></li>
            </ul>
        </div>
    </body>
</html>
