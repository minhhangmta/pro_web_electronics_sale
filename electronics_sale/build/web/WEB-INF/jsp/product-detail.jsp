<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <title>Electronic Store | Product Detail </title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <!-- banner -->
            <div class="banner banner10">
                <div class="container">
                    <h2></h2>
                </div>
            </div>
            <!-- //banner -->   
            <!-- breadcrumbs -->
            <div class="breadcrumb_dress">
                <div class="container">
                    <ul>
                        <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
                        <li>Product Detail</li>
                    </ul>
                </div>
            </div>
            <!-- //breadcrumbs -->  
            <!-- single -->
            <div class="single">
                <div class="container">
                    <div class="col-md-4 single-left">
                        <div class="flexslider">
                            <ul class="slides">
                                <li data-thumb="<c:url value="${sanPham.anh}"/>">
                                <div class="thumb-image"> <img src="<c:url value="${sanPham.anh}"/>" data-imagezoom="true" class="img-responsive" alt=""> </div>
                            </li>
                            <li data-thumb="<c:url value="${sanPham.anh}"/>">
                                <div class="thumb-image"> <img src="<c:url value="${sanPham.anh}"/>" data-imagezoom="true" class="img-responsive" alt=""> </div>
                            </li>
                            <li data-thumb="<c:url value="${sanPham.anh}"/>">
                                <div class="thumb-image"> <img src="<c:url value="${sanPham.anh}"/>" data-imagezoom="true" class="img-responsive" alt=""> </div>
                            </li> 
                        </ul>
                    </div>
                    <!-- flexslider -->
                    <script defer src="<c:url value="resources/js/jquery.flexslider.js"/>"></script>
                    <link rel="stylesheet" href="<c:url value="resources/css/flexslider.css"/>" type="text/css" media="screen" />
                    <script>
                        // Can also be used with $(document).ready()
                        $(window).load(function () {
                            $('.flexslider').flexslider({
                                animation: "slide",
                                controlNav: "thumbnails"
                            });
                        });
                    </script>
                    <!-- flexslider -->
                    <!-- zooming-effect -->
                    <script src="<c:url value="resources/js/imagezoom.js"/>"></script>
                    <!-- //zooming-effect -->
                </div>

                <div class="col-md-8 single-right">
                    <h3>${sanPham.tensanpham}</h3>
                    <div class="rating1">
                        <span class="starRating">
                            <input id="rating5" type="radio" name="rating" value="5">
                            <label for="rating5">5</label>
                            <input id="rating4" type="radio" name="rating" value="4">
                            <label for="rating4">4</label>
                            <input id="rating3" type="radio" name="rating" value="3" checked>
                            <label for="rating3">3</label>
                            <input id="rating2" type="radio" name="rating" value="2">
                            <label for="rating2">2</label>
                            <input id="rating1" type="radio" name="rating" value="1">
                            <label for="rating1">1</label>
                        </span>
                    </div>
                    <div class="description">
                        <h5><i>Description</i></h5>
                        <p>${sanPham.mota}</p>
                    </div>
                    <div class="color-quality">
                        <div class="color-quality-left">
                            <h5>Quality :</h5>
                            <div class="quantity"> 
                                <div class="quantity-select">                           
                                    <div class="entry value-minus1">&nbsp;</div>
                                    <div class="entry value1"><span>1</span></div>
                                    <div class="entry value-plus1 active">&nbsp;</div>
                                </div>
                            </div>
                            <!--quantity-->
                            <script>
                        $('.value-plus1').on('click', function () {
                            var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10) + 1;
                            divUpd.text(newVal);
                        });

                        $('.value-minus1').on('click', function () {
                            var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10) - 1;
                            if (newVal >= 1)
                                divUpd.text(newVal);
                        });
                            </script>
                            <!--quantity-->

                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="occasional">
                        <!--ram-->
                        <h5>PRICE :</h5>
                        <div class="simpleCart_shelfItem">
                            <p>
                                <c:if test="${sanPham.sale!=0}">
                                    <span>$<fmt:formatNumber value="${sanPham.gia}" minFractionDigits="0" maxFractionDigits="0"/></span>
                                </c:if>
                                <i class="item_price">
                                    $<fmt:formatNumber value="${sanPham.gia-(sanPham.gia*sanPham.sale/100)}" minFractionDigits="0" maxFractionDigits="0"/>
                                </i>
                            </p>
                            <a href="${pageContext.request.contextPath}/shopping/cart/${sanPham.maSp}">
                                <button class="w3ls-cart">Add to cart</button></a>     
                        </div> 
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div> 
        <div class="additional_info">
            <!--infor products-->
        </div>
        <!-- Related Products -->
        <!--        <div class="w3l_related_products">
                    <div class="container">
                        <h3>Related Products</h3>
                        <ul id="flexiselDemo2">	
        <c:forEach items="${listRelated}" var="list">
            <li>
                <div class="w3l_related_products_grid">
                    <div class="agile_ecommerce_tab_left mobiles_grid">
                        <div class="hs-wrapper hs-wrapper3">
                            <img src="<c:url value="${list.anh}"/>" alt=" " class="img-responsive" />
                            <img src="<c:url value="${list.anh}"/>" alt=" " class="img-responsive" />
                            <img src="<c:url value="${list.anh}"/>" alt=" " class="img-responsive" />
                            <img src="<c:url value="${list.anh}"/>" alt=" " class="img-responsive" />
                            <img src="<c:url value="${list.anh}"/>" alt=" " class="img-responsive" /> 
                            <div class="w3_hs_bottom">
                                <div class="flex_ecommerce">
                                    <a href="${pageContext.request.contextPath}/product-detail/${list.maSp}" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                </div>
                            </div>
                        </div>
                        <h5><a href="${pageContext.request.contextPath}/product-detail/${list.maSp}">${list.tensanpham}</a></h5>
                        <div class="simpleCart_shelfItem"> 
                            <p>
            <c:if test="${list.sale!=0}">
                <span>$<fmt:formatNumber value="${list.gia}" minFractionDigits="0" maxFractionDigits="0"/></span>
            </c:if>
            <i class="item_price">$<fmt:formatNumber value="${list.gia-(list.gia*list.sale/100)}" minFractionDigits="0" maxFractionDigits="0"/></i></p>
        <a href="${pageContext.request.contextPath}/shopping/cart/${list.maSp}">
            <button class="w3ls-cart">Add to cart</button></a>    
    </div>
</div>
</div>
</li>
        </c:forEach>
    </ul>
</div>
</div>-->
        <div class="new-products">
            <div class="container">
                <h3>Related Products </h3>
                <div class="agileinfo_new_products_grids">
                    <c:forEach items="${listRelated}" var="list">
                        <div class="col-md-3 agileinfo_new_products_grid">
                            <div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                                <div class="hs-wrapper hs-wrapper1">
                                    <img src="<c:url value="${list.anh}"/>" alt=" " class="img-responsive" />
                                    <img src="<c:url value="${list.anh}"/>" alt=" " class="img-responsive" />
                                    <img src="<c:url value="${list.anh}"/>" alt=" " class="img-responsive" />
                                    <img src="<c:url value="${list.anh}"/>" alt=" " class="img-responsive" />
                                    <img src="<c:url value="${list.anh}"/>" alt=" " class="img-responsive" /> 
                                    <div class="w3_hs_bottom w3_hs_bottom_sub">
                                        <ul>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/product-detail/${list.maSp}" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <h5><a href="${pageContext.request.contextPath}/product-detail/${list.maSp}">${list.tensanpham}</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p>
                                        <c:if test="${list.sale!=0}">
                                            <span>$<fmt:formatNumber value="${list.gia}" minFractionDigits="0" maxFractionDigits="0"/></span>
                                        </c:if>
                                    <a href="${pageContext.request.contextPath}/shopping/cart/${list.maSp}">
                                        <button class="w3ls-cart">Add to cart</button></a>  
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!-- //Related Products -->

        <!-- //single -->
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

