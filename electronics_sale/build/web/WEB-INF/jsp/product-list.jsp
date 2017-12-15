<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <body>
        <div>
            <c:forEach var="item" items="${listSanPham}">
                <div class="w3ls_mobiles_grid_right_grid3">
                    <div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
                        <div class="agile_ecommerce_tab_left mobiles_grid">
                            <div class="hs-wrapper hs-wrapper2">
                                <img src="<c:url value="${item.anh}"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="${item.anh}"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="${item.anh}"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="${item.anh}"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="${item.anh}"/>" alt=" " class="img-responsive" />
                                <div class="w3_hs_bottom w3_hs_bottom_sub1">
                                    <ul>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/product-detail/${item.maSp}" data-toggle="modal" data-target="#myModal8"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <h5><a href="${pageContext.request.contextPath}/product-detail/${item.maSp}">${item.tensanpham}</a></h5> 
                            <div class="simpleCart_shelfItem">
                                <p>
                                    <c:if test="${item.sale!=0}">
                                        <span>$<fmt:formatNumber value="${item.gia}" minFractionDigits="0" maxFractionDigits="0"/></span>
                                    </c:if>
                                    <i class="item_price">$<fmt:formatNumber value="${item.gia-(item.gia*item.sale/100)}" minFractionDigits="0" maxFractionDigits="0"/></i></p>
                               
                                <a href="${pageContext.request.contextPath}/shopping/cart/${item.maSp}">
                                    <button class="w3ls-cart">Add to cart</button></a>               
                            </div> 
                            <div class="mobiles_grid_pos">
                                <h6>new</h6>
                            </div>
                        </div>
                        <!--                        <div class="clearfix"> </div>-->
                    </div>
                </div>
            </c:forEach>
        </div>
    </body>
</html>