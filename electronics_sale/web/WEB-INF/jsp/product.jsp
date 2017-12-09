<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                            <!--                            <div class="w3ls_mobiles_grid_left_grid">
                                                            <h3>Color</h3>
                                                            <div class="w3ls_mobiles_grid_left_grid_sub">
                                                                <div class="ecommerce_color">
                                                                    <ul>
                                                                        <li><a href="#"><i></i> Red(5)</a></li>
                                                                        <li><a href="#"><i></i> Brown(2)</a></li>
                                                                        <li><a href="#"><i></i> Yellow(3)</a></li>
                                                                        <li><a href="#"><i></i> Violet(6)</a></li>
                                                                        <li><a href="#"><i></i> Orange(2)</a></li>
                                                                        <li><a href="#"><i></i> Blue(1)</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>-->
                            <div class="w3ls_mobiles_grid_left_grid">
                                <h3>Price</h3>
                                <div class="w3ls_mobiles_grid_left_grid_sub">
                                    <div class="ecommerce_color ecommerce_size">
                                        <ul>
                                            <li><a href="#">Below $ 100</a></li>
                                            <li><a href="#">$ 100-500</a></li>
                                            <li><a href="#">$ 1k-10k</a></li>
                                            <li><a href="#">$ 10k-20k</a></li>
                                            <li><a href="#">$ Above 20k</a></li>
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
                                <h3>Showing Results: 0-1</h3>
                            </div>
                            <div class="w3ls_mobiles_grid_right_grid2_right">
                                <select name="select_item" class="select_item">
                                    <option selected="selected">Default sorting</option>
                                    <option>Sort by popularity</option>
                                    <option>Sort by average rating</option>
                                    <option>Sort by newness</option>
                                    <option>Sort by price: low to high</option>
                                    <option>Sort by price: high to low</option>
                                </select>
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
            <!-- Related Products -->
            <div class="w3l_related_products">
                <div class="container">
                    <h3>Related Products</h3>
                    <ul id="flexiselDemo2">			
                        <li>
                            <div class="w3l_related_products_grid">
                                <div class="agile_ecommerce_tab_left mobiles_grid">
                                    <div class="hs-wrapper hs-wrapper3">
                                        <img src="<c:url value="/resources/images/34.jpg"/>" alt=" " class="img-responsive" />
                                    <img src="<c:url value="/resources/images/35.jpg"/>" alt=" " class="img-responsive" />
                                    <img src="<c:url value="/resources/images/27.jpg"/>" alt=" " class="img-responsive" />
                                    <img src="<c:url value="/resources/images/28.jpg"/>" alt=" " class="img-responsive" />
                                    <img src="<c:url value="/resources/images/37.jpg"/>" alt=" " class="img-responsive" /> 
                                    <div class="w3_hs_bottom">
                                        <div class="flex_ecommerce">
                                            <a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </div>
                                    </div>
                                </div>
                                <h5><a href="single.html">Kid's Toy</a></h5>
                                <div class="simpleCart_shelfItem"> 
                                    <p class="flexisel_ecommerce_cart"><span>$150</span> <i class="item_price">$100</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="w3ls_item" value="Kid's Toy"> 
                                        <input type="hidden" name="amount" value="100.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form> 
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l_related_products_grid">
                            <div class="agile_ecommerce_tab_left mobiles_grid">
                                <div class="hs-wrapper hs-wrapper3">
                                    <img src="images/36.jpg" alt=" " class="img-responsive" />
                                    <img src="images/32.jpg" alt=" " class="img-responsive" />
                                    <img src="images/33.jpg" alt=" " class="img-responsive" />
                                    <img src="images/32.jpg" alt=" " class="img-responsive" />
                                    <img src="images/36.jpg" alt=" " class="img-responsive" /> 
                                    <div class="w3_hs_bottom">
                                        <div class="flex_ecommerce">
                                            <a href="#" data-toggle="modal" data-target="#myModal5"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </div>
                                    </div>
                                </div>
                                <h5><a href="single.html">Vacuum Cleaner</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p class="flexisel_ecommerce_cart"><span>$960</span> <i class="item_price">$920</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart" />
                                        <input type="hidden" name="add" value="1" /> 
                                        <input type="hidden" name="w3ls_item" value="Vacuum Cleaner" /> 
                                        <input type="hidden" name="amount" value="920.00"/>   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l_related_products_grid">
                            <div class="agile_ecommerce_tab_left mobiles_grid">
                                <div class="hs-wrapper hs-wrapper3">
                                    <img src="images/38.jpg" alt=" " class="img-responsive" />
                                    <img src="images/37.jpg" alt=" " class="img-responsive" />
                                    <img src="images/27.jpg" alt=" " class="img-responsive" />
                                    <img src="images/28.jpg" alt=" " class="img-responsive" />
                                    <img src="images/37.jpg" alt=" " class="img-responsive" /> 
                                    <div class="w3_hs_bottom">
                                        <div class="flex_ecommerce">
                                            <a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </div>
                                    </div>
                                </div>
                                <h5><a href="single.html">Microwave Oven</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p class="flexisel_ecommerce_cart"><span>$650</span> <i class="item_price">$645</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart" />
                                        <input type="hidden" name="add" value="1" /> 
                                        <input type="hidden" name="w3ls_item" value="Microwave Oven" /> 
                                        <input type="hidden" name="amount" value="645.00"/>   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="w3l_related_products_grid">
                            <div class="agile_ecommerce_tab_left mobiles_grid">
                                <div class="hs-wrapper hs-wrapper3">
                                    <img src="images/p3.jpg" alt=" " class="img-responsive" />
                                    <img src="images/p5.jpg" alt=" " class="img-responsive" />
                                    <img src="images/p4.jpg" alt=" " class="img-responsive" />
                                    <img src="images/p2.jpg" alt=" " class="img-responsive" />
                                    <img src="images/p1.jpg" alt=" " class="img-responsive" /> 
                                    <div class="w3_hs_bottom">
                                        <div class="flex_ecommerce">
                                            <a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </div>
                                    </div>
                                </div>
                                <h5><a href="single.html">Music MP3 Player</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p><span>$60</span> <i class="item_price">$58</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart" />
                                        <input type="hidden" name="add" value="1" /> 
                                        <input type="hidden" name="w3ls_item" value="Ultra MP3 Player" /> 
                                        <input type="hidden" name="amount" value="58.00"/>   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div> 
                                <div class="mobiles_grid_pos">
                                    <h6>New</h6>
                                </div>
                            </div> 
                        </div>
                    </li>
                </ul>

                <script type="text/javascript">
                    $(window).load(function () {
                        $("#flexiselDemo2").flexisel({
                            visibleItems: 4,
                            animationSpeed: 1000,
                            autoPlay: true,
                            autoPlaySpeed: 3000,
                            pauseOnHover: true,
                            enableResponsiveBreakpoints: true,
                            responsiveBreakpoints: {
                                portrait: {
                                    changePoint: 568,
                                    visibleItems: 1
                                },
                                landscape: {
                                    changePoint: 667,
                                    visibleItems: 2
                                },
                                tablet: {
                                    changePoint: 768,
                                    visibleItems: 3
                                }
                            }
                        });

                    });
                </script>
            </div>
        </div>
        <!-- //Related Products -->
        <!-- top-brands -->
        <div >
            <!--jsp:include page="/nhacungcap">/jsp:include>-->
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
