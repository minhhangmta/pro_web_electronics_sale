<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <title>Electronic Store | Product </title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <!-- banner -->
            <div class="banner banner2">
                <div class="container">
                    <h2>Top Selling <span>Gadgets</span> Flat <i>25% Discount</i></h2> 
                </div>
            </div> 
            <!-- breadcrumbs -->
            <div class="breadcrumb_dress">
                <div class="container">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/index"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
                    <li>Products</li>
                </ul>
            </div>
        </div>
        <!-- //breadcrumbs --> 
        <!-- mobiles -->
        <div class="mobiles">
            <div class="container">
                <div class="w3ls_mobiles_grids">
                    <div class="col-md-4 w3ls_mobiles_grid_left">
                        <div class="w3ls_mobiles_grid_left_grid">
                            <h3>Categories</h3>
                            <div class="w3ls_mobiles_grid_left_grid_sub">
                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                    <jsp:include page="category.jsp"></jsp:include> 
                                    </div>
                                </div>
                            </div>

                            <div class="w3ls_mobiles_grid_left_grid">
                                <h3>Price</h3>
                                <div class="w3ls_mobiles_grid_left_grid_sub">
                                    <div class="ecommerce_color ecommerce_size">
                                        <ul>
                                            <li><a href="${pageContext.request.contextPath}/product?search=0">All</a></li>
                                        <li><a href="${pageContext.request.contextPath}/product?search=1">Below $ 100</a></li>
                                        <li><a href="${pageContext.request.contextPath}/product?search=2">$ 100-500</a></li>
                                        <li><a href="${pageContext.request.contextPath}/product?search=3">$ 500-1k</a></li>
                                        <li><a href="${pageContext.request.contextPath}/product?search=4">$ 1k-10k</a></li>
                                        <li><a href="${pageContext.request.contextPath}/product?search=5">$ Above 10k</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 w3ls_mobiles_grid_right">
                        <div class="row">
                            <div class="col-md-6 w3ls_mobiles_grid_right_left">
                                <div class="w3ls_mobiles_grid_right_grid1">
                                    <img src="<c:url value="/resources/images/48.jpg"/>"class="img-responsive"/>
                                    <div class="w3ls_mobiles_grid_right_grid1_pos1">
                                        <h3>Attractive<span> New</span> Wrist Watches</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 w3ls_mobiles_grid_right_left">
                                <div class="w3ls_mobiles_grid_right_grid1">
                                    <img src="<c:url value="/resources/images/49.jpg"/>" alt=" " class="img-responsive" />
                                    <div class="w3ls_mobiles_grid_right_grid1_pos"> 
                                        <h3>Best Prices On<span> Laptop</span>Upto 50% Off</h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="w3ls_mobiles_grid_right_grid2">
                            <div class="w3ls_mobiles_grid_right_grid2_left">
                                <h3>Showing Results: ${total}</h3>
                            </div>

                            <div class="w3ls_mobiles_grid_right_grid2_right" style="padding-top: 20px;">
                                <table>
                                    <tr>
                                        <td>Sort by name: 
                                            <a href="${pageContext.request.contextPath}/product?sortType=1&sort=${sortByName=='asc' ? 'desc' : 'asc'}">
                                                <c:if
                                                    test="${sortByName != 'desc'}">
                                                    ▲▽ 
                                                </c:if> <c:if test="${sortByName == 'desc'}">
                                                    △▼
                                                </c:if>
                                            </a>
                                        </td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td>Sort by price: 
                                            <a href="${pageContext.request.contextPath}/product?sortType=2&sort=ASC">▲▽</a> 
                                        </td>
                                    </tr>
                                </table>
                                <!--                                <select name="sortType" class="select_item">
                                                                    <option value="0">Default sorting</option>
                                                                    <option value="1" ${sortType == sortValue ? 'selected':''}>Sort by product name: a-z</option>
                                                                    <option value="2" ${sortType == sortValue ? 'selected':''}>Sort by product name: z-a</option>
                                                                    <option value="3" ${sortType == sortValue ? 'selected':''}>Sort by price: low to high</option>
                                                                    <option value="4" ${sortType == sortValue ? 'selected':''}>Sort by price: high to low</option>
                                                                </select>-->
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="w3ls_mobiles_grid_right_grid3">
                            <jsp:include page="product-list.jsp"></jsp:include>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>  
            <!-- top-brands -->
            <div >
                <!--jsp:include page="/nhacungcap">/jsp:include>-->
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
