<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head>
    <meta charset="UTF-8">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="<c:url value="/resources/css/style-paging.css"/>">
</head>
<html>
    <body>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,700' rel='stylesheet' type='text/css'>
        <div>
            <c:forEach var="item" items="${listSanPham}">
                <div class="w3ls_mobiles_grid_right_grid3">
                    <div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles" 
                         style="padding-top: 15px;">
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
        <div class="clearfix"></div>

        <div class="col-md-6 page_1 agileits-w3layouts" style="
             padding-left: 50px;
             margin-left: 250px;
             margin-right: 200px;
             padding-right: 50px;
             margin-top: 50px;
             ">

            <nav>
                <ul class="pagination">
                    <li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
                </ul>
            </nav>

        </div>
        <!--        <div class="zui-pager small">
                    <ol class="btn-group">
                        <li class="btn-group__item">
                            <i class="i-chevron-left"></i>
                        </li>
                        <li class="btn-group__item">
                            <div class="btn btn--action"><span>1</span><span>of</span><span>${total}</span><i class="i-caret-down"></i>
                                <select class="select-overlay">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                </select>
                            </div>
                        </li>
                        <li class="btn-group__item">
                            <i class="i-chevron-right"></i>
                        </li>
                    </ol>
                    <form class="zui-pager__input">
                        <input type="text">
                    </form>
                </div>-->
    </body>
</html>