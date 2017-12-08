<%-- 
    Document   : Cart
    Created on : Dec 7, 2017, 4:43:19 PM
    Author     : tranv
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart </title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            
            <!-- breadcrumbs -->
            <div class="breadcrumb_dress">
                <div class="container">
                    <ul>
                        <li><a href="Home/index"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Cart</a> <i>/</i></li>
                       
                    </ul>
                </div>
            </div>
            <!--        ////-->
            <div class="container">
                <form method="post" action="${pageContext.request.contextPath}/shopping/update">
                    <table class="table table-bordered" ${ i=0}>
                    <tr>
                        <th>STT</th>
                        <th>Ảnh</th>
                        <th>Tên sản phẩm</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Tổng tiền</th>
                        <th></th>
                    </tr>
                    <c:set var="s" value="0"></c:set>
                    <c:forEach var="item" items="${sessionScope.cart}">
                        <c:set var="s" value="${s+(item.sanpham.gia-(item.sanpham.gia*item.sanpham.sale/100))*item.quantity}"></c:set>
                            <tr>
                                <td>${i=i+1}</td>                       
                            <td><img src="<c:url value="${item.sanpham.anh}"/>" alt=" " class="img-responsive" style="width: 50px;height: 80px;"/></td>
                            <td>${item.sanpham.tensanpham}</td>
                            <td><div class="simpleCart_shelfItem"><p><span>${item.sanpham.gia}</span><i class="item_price">${item.sanpham.gia-(item.sanpham.gia*item.sanpham.sale/100)}</i></p></div></td>
                            <td>
                                <input type="number" name="quantity" style="width: 60px;right:0px;" value="${item.quantity}" min="1">
                            </td>
                            <td><div class="simpleCart_shelfItem"><p><i class="item_price">${(item.sanpham.gia-(item.sanpham.gia*item.sanpham.sale/100))*item.quantity}</i></p></div></td>
                            <td><a href="${pageContext.request.contextPath}/shopping/delete/${item.sanpham.maSp}" ><button class="w3ls-cart" style="background: #f44336">Xóa</button></a></td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td>Thành tiền:</td>
                        <td>${s}</td>
                    <td><input type="submit" value="Update"></td>
                    </tr>
                </table>
            </form>
            <a href="${pageContext.request.contextPath}/product">Tiếp tục mua hàng</a>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
