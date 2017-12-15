<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <title>Electronic Store | Home </title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <!-- banner -->
            <div class="banner">
                <div class="container">
                    <h3>Electronic Store, <span>Special Offers</span></h3>
                </div>
            </div>
            <!-- //banner --> 
            <!-- banner-bottom -->
            <div class="banner-bottom">
                <div class="container">
                    <div class="col-md-5 wthree_banner_bottom_left">
                        <div class="video-img">
                            <a class="play-icon popup-with-zoom-anim" href="#small-dialog">
                                <span class="glyphicon glyphicon-expand" aria-hidden="true"></span>
                            </a>
                        </div> 
                        <!-- pop-up-box --> 
                        <script src="<c:url value="/resources/js/jquery.magnific-popup.js"/>" type="text/javascripts"></script>
                    <!--//pop-up-box -->
                    <div id="small-dialog" class="mfp-hide">
                        <iframe src="https://www.youtube.com/embed/ZQa6GUVnbNM"></iframe>
                    </div>
                    <script>
                        $(document).ready(function () {
                            $('.popup-with-zoom-anim').magnificPopup({
                                type: 'inline',
                                fixedContentPos: false,
                                fixedBgPos: true,
                                overflowY: 'auto',
                                closeBtnInside: true,
                                preloader: false,
                                midClick: true,
                                removalDelay: 300,
                                mainClass: 'my-mfp-zoom-in'
                            });

                        });
                    </script>
                </div>
                <div class="col-md-7 wthree_banner_bottom_right">
                    <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                        <ul id="myTab" class="nav nav-tabs" role="tablist">
                            <!--<input id="idLi" type="hidden" value="" name="idLi" />-->
                            <c:forEach items="${listDanhMucCha}" var="listCha">
<!--                                <li id="li-dm-${listCha.maDm}" value="${listCha.maDm}" role="presentation" class=""><a href="#" onclick="return clickDanhMucCha(${listCha.maDm},${oldId});" role="tab" data-toggle="tab">${listCha.tendanhmuc}</a></li>-->
                                <li id="li-dm" role="presentation" class=""><a href="#" role="tab"  onclick="return clickDanhMuc(${listCha.maDm});" data-toggle="tab">${listCha.tendanhmuc}</a></li>
                                </c:forEach>
                        </ul>

                        <input name="test" id="test" type="hidden" value="3"/>
                        <form:hidden path="demo" value="4" method="get"/>
                        <input name="idDM" id="idDM" type="hidden" value="-1"/>
                        <div id="myTabContent" class="tab-content">
                            <div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
                                <c:if test="${idDM > 0}">
                                    <c:forEach items="${listHotPro}" var="listHot">
                                        <div class="agile_ecommerce_tabs">
                                            <div class="col-md-4 agile_ecommerce_tab_left">
                                                <div class="hs-wrapper">
                                                    <img src="<c:url value="${listHot.anh}"/>" alt=" " class="img-responsive" />
                                                    <img src="<c:url value="${listHot.anh}"/>" alt=" " class="img-responsive" />
                                                    <img src="<c:url value="${listHot.anh}"/>" alt=" " class="img-responsive" />
                                                    <img src="<c:url value="${listHot.anh}"/>" alt=" " class="img-responsive" />
                                                    <img src="<c:url value="${listHot.anh}"/>" alt=" " class="img-responsive" />
                                                    <img src="<c:url value="${listHot.anh}"/>" alt=" " class="img-responsive" />
                                                    <img src="<c:url value="${listHot.anh}"/>" alt=" " class="img-responsive" />
                                                    <img src="<c:url value="${listHot.anh}"/>" alt=" " class="img-responsive" />
                                                    <div class="w3_hs_bottom">
                                                        <ul>
                                                            <li>
                                                                <a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div> 
                                                <h5><a href="#">${listHot.tensanpham}</a></h5> 
                                                <div class="simpleCart_shelfItem">

                                                    <p>
                                                        <c:if test="${list.sale!=0}">
                                                            <span>$<fmt:formatNumber value="${listHot.gia}" minFractionDigits="0" maxFractionDigits="0"/></span>
                                                        </c:if>
                                                        <i class="item_price">$<fmt:formatNumber value="${listHot.gia-(listHot.gia*listHot.sale/100)}" minFractionDigits="0" maxFractionDigits="0"/></i></p>
                                                    <a href="${pageContext.request.contextPath}/shopping/cart/$listHotitem.maSp}">
                                                        <button class="w3ls-cart">Add to cart</button></a>     
                                                </div>
                                            </div>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </c:forEach>
                                </c:if>
                            </div>
                        </div>
                    </div> 
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- //banner-bottom --> 
        <!-- modal-video -->
        <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="<c:url value="/resources/images/3.jpg"/>" alt=" " class="img-responsive" />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>The Best Mobile Phone 3GB</h4>
                                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
                                    commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$380</span> <i class="item_price">$350</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="w3ls_item" value="Mobile Phone1"> 
                                        <input type="hidden" name="amount" value="350.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                                <h5>Color</h5>
                                <div class="color-quality">
                                    <ul>
                                        <li><a href="#"><span></span></a></li>
                                        <li><a href="#" class="brown"><span></span></a></li>
                                        <li><a href="#" class="purple"><span></span></a></li>
                                        <li><a href="#" class="gray"><span></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="<c:url value="/resources/images/9.jpg"/>" alt=" " class="img-responsive" />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>Multimedia Home Accessories</h4>
                                <p>Ut enim ad minim veniam, quis nostrud 
                                    exercitation ullamco laboris nisi ut aliquip ex ea 
                                    commodo consequat.Duis aute irure dolor in 
                                    reprehenderit in voluptate velit esse cillum dolore 
                                    eu fugiat nulla pariatur. Excepteur sint occaecat 
                                    cupidatat non proident, sunt in culpa qui officia 
                                    deserunt mollit anim id est laborum.</p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$180</span> <i class="item_price">$150</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="w3ls_item" value="Headphones"> 
                                        <input type="hidden" name="amount" value="150.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                                <h5>Color</h5>
                                <div class="color-quality">
                                    <ul>
                                        <li><a href="#"><span></span></a></li>
                                        <li><a href="#" class="brown"><span></span></a></li>
                                        <li><a href="#" class="purple"><span></span></a></li>
                                        <li><a href="#" class="gray"><span></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <div class="modal video-modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModal2">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="<c:url value="/resources/images/11.jpg"/>" alt=" " class="img-responsive" />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>Quad Core Colorful Laptop</h4>
                                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in 
                                    reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia  deserunt.</p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$880</span> <i class="item_price">$850</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="w3ls_item" value="Laptop"> 
                                        <input type="hidden" name="amount" value="850.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                                <h5>Color</h5>
                                <div class="color-quality">
                                    <ul>
                                        <li><a href="#"><span></span></a></li>
                                        <li><a href="#" class="brown"><span></span></a></li>
                                        <li><a href="#" class="purple"><span></span></a></li>
                                        <li><a href="#" class="gray"><span></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <div class="modal video-modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModal3">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="<c:url value="/resources/images/14.jpg"/>" alt=" " class="img-responsive" />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>Cool Single Door Refrigerator </h4>
                                <p>Duis aute irure dolor inreprehenderit in voluptate velit esse cillum dolore 
                                    eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$950</span> <i class="item_price">$820</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="w3ls_item" value="Mobile Phone1"> 
                                        <input type="hidden" name="amount" value="820.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                                <h5>Color</h5>
                                <div class="color-quality">
                                    <ul>
                                        <li><a href="#"><span></span></a></li>
                                        <li><a href="#" class="brown"><span></span></a></li>
                                        <li><a href="#" class="purple"><span></span></a></li>
                                        <li><a href="#" class="gray"><span></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <div class="modal video-modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModal4">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="<c:url value="/resources/images/17.jpg"/>" alt=" " class="img-responsive" />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>New Model Mixer Grinder</h4>
                                <p>Excepteur sint occaecat laboris nisi ut aliquip ex ea 
                                    commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore 
                                    eu fugiat nulla pariatur cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$460</span> <i class="item_price">$450</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="w3ls_item" value="Mobile Phone1"> 
                                        <input type="hidden" name="amount" value="450.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                                <h5>Color</h5>
                                <div class="color-quality">
                                    <ul>
                                        <li><a href="#"><span></span></a></li>
                                        <li><a href="#" class="brown"><span></span></a></li>
                                        <li><a href="#" class="purple"><span></span></a></li>
                                        <li><a href="#" class="gray"><span></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <div class="modal video-modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModal5">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="<c:url value="/resources/images/36.jpg"/>" alt=" " class="img-responsive" />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>Dry Vacuum Cleaner</h4>
                                <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea 
                                    commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
                                    cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$960</span> <i class="item_price">$920</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="w3ls_item" value="Vacuum Cleaner"> 
                                        <input type="hidden" name="amount" value="920.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                                <h5>Color</h5>
                                <div class="color-quality">
                                    <ul>
                                        <li><a href="#"><span></span></a></li>
                                        <li><a href="#" class="brown"><span></span></a></li>
                                        <li><a href="#" class="purple"><span></span></a></li>
                                        <li><a href="#" class="gray"><span></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <div class="modal video-modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModal6">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <section>
                        <div class="modal-body">
                            <div class="col-md-5 modal_body_left">
                                <img src="<c:url value="/resources/images/37.jpg"/>" alt=" " class="img-responsive" />
                            </div>
                            <div class="col-md-7 modal_body_right">
                                <h4>Kitchen & Dining Accessories</h4>
                                <p>Ut enim ad minim veniam, quis nostrud 
                                    exercitation ullamco laboris nisi ut aliquip ex ea 
                                    commodo consequat.Duis aute irure dolor in 
                                    reprehenderit in voluptate velit esse cillum dolore 
                                    eu fugiat nulla pariatur. Excepteur sint occaecat 
                                    cupidatat non proident, sunt in culpa qui officia 
                                    deserunt mollit anim id est laborum.</p>
                                <div class="rating">
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star-.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="rating-left">
                                        <img src="<c:url value="/resources/images/star.png"/>" alt=" " class="img-responsive" />
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="modal_body_right_cart simpleCart_shelfItem">
                                    <p><span>$280</span> <i class="item_price">$250</i></p>
                                    <form action="#" method="post">
                                        <input type="hidden" name="cmd" value="_cart">
                                        <input type="hidden" name="add" value="1"> 
                                        <input type="hidden" name="w3ls_item" value="Induction Stove"> 
                                        <input type="hidden" name="amount" value="250.00">   
                                        <button type="submit" class="w3ls-cart">Add to cart</button>
                                    </form>
                                </div>
                                <h5>Color</h5>
                                <div class="color-quality">
                                    <ul>
                                        <li><a href="#"><span></span></a></li>
                                        <li><a href="#" class="brown"><span></span></a></li>
                                        <li><a href="#" class="purple"><span></span></a></li>
                                        <li><a href="#" class="gray"><span></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <!-- //modal-video -->
        <!-- new-products -->
        <div class="new-products">
            <div class="container">
                <h3>New Products</h3>
                <div class="agileinfo_new_products_grids">
                    <c:forEach items="${listNewPro}" var="list">
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
                                                <a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <h5><a href="#">${list.tensanpham}</a></h5>
                                <div class="simpleCart_shelfItem">
                                    <p>
                                        <c:if test="${list.sale!=0}">
                                            <span>$<fmt:formatNumber value="${list.gia}" minFractionDigits="0" maxFractionDigits="0"/></span>
                                        </c:if>
                                        <i class="item_price">$<fmt:formatNumber value="${list.gia-(list.gia*list.sale/100)}" minFractionDigits="0" maxFractionDigits="0"/></i></p>
                                    <!--                                    <form action="#" method="post">
                                                                            <input type="hidden" name="cmd" value="_cart">
                                                                            <input type="hidden" name="add" value="1"> 
                                                                            <input type="hidden" name="w3ls_item" value="Red Laptop"> 
                                                                            <input type="hidden" name="amount" value="500.00">   
                                                                            <button type="submit" class="w3ls-cart">Add to cart</button>
                                                                        </form>-->
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
        <!-- //new-products -->
        <!-- special-deals -->
        <div class="special-deals">
            <div class="container">
                <h2>Special Deals</h2>
                <div class="w3agile_special_deals_grids">
                    <div class="col-md-7 w3agile_special_deals_grid_left">
                        <div class="w3agile_special_deals_grid_left_grid">
                            <img src="<c:url value="/resources/images/21.jpg"/>" alt=" " class="img-responsive" />
                            <div class="w3agile_special_deals_grid_left_grid_pos1">
                                <h5>30%<span>Off/-</span></h5>
                            </div>
                            <div class="w3agile_special_deals_grid_left_grid_pos">
                                <h4>We Offer <span>Best Products</span></h4>
                            </div>
                        </div>
                        <div class="wmuSlider example1">
                            <div class="wmuSliderWrapper">
                                <article style="position: absolute; width: 100%; opacity: 0;"> 
                                    <div class="banner-wrap">
                                        <div class="w3agile_special_deals_grid_left_grid1">
                                            <img src="<c:url value="/resources/images/t1.png"/>" alt=" " class="img-responsive" />
                                            <p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
                                                velit esse quam nihil molestiae consequatur, vel illum qui dolorem 
                                                eum fugiat quo voluptas nulla pariatur</p>
                                            <h4>Laura</h4>
                                        </div>
                                    </div>
                                </article>
                                <article style="position: absolute; width: 100%; opacity: 0;"> 
                                    <div class="banner-wrap">
                                        <div class="w3agile_special_deals_grid_left_grid1">
                                            <img src="<c:url value="/resources/images/t2.png"/>" alt=" " class="img-responsive" />
                                            <p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
                                                velit esse quam nihil molestiae consequatur, vel illum qui dolorem 
                                                eum fugiat quo voluptas nulla pariatur</p>
                                            <h4>Michael</h4>
                                        </div>
                                    </div>
                                </article>
                                <article style="position: absolute; width: 100%; opacity: 0;"> 
                                    <div class="banner-wrap">
                                        <div class="w3agile_special_deals_grid_left_grid1">
                                            <img src="<c:url value="/resources/images/t3.png"/>" alt=" " class="img-responsive" />
                                            <p>Quis autem vel eum iure reprehenderit qui in ea voluptate 
                                                velit esse quam nihil molestiae consequatur, vel illum qui dolorem 
                                                eum fugiat quo voluptas nulla pariatur</p>
                                            <h4>Rosy</h4>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </div>
                        <script src="<c:url value="/resources/js/jquery.wmuSlider.js"/>" type="text/javascripts"></script>
                        <script>
                                    $('.example1').wmuSlider();
                        </script> 
                    </div>
                    <div class="col-md-5 w3agile_special_deals_grid_right">
                        <img src="<c:url value="/resources/images/20.jpg"/>" alt=" " class="img-responsive" />
                        <div class="w3agile_special_deals_grid_right_pos">
                            <h4>Women's <span>Special</span></h4>
                            <h5>save up <span>to</span> 30%</h5>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!-- //special-deals -->
        <!-- top-brands -->
        <div >
            <!--jsp:include page="/nhacungcap">jsp:include>-->
        </div>

        <!-- //top-brands --> 
        <jsp:include page="footer.jsp"></jsp:include>
            <!-- cart-js -->

            <script src="<c:url value="/resources/js/minicart.js"/>" type="text/javascripts"></script>
        <script>
                                    w3ls.render();

                                    w3ls.cart.on('w3sb_checkout', function (evt) {
                                        var items, len, i;

                                        if (this.subtotal() > 0) {
                                            items = this.items();

                                            for (i = 0, len = items.length; i < len; i++) {
                                            }
                                        }
                                    });
        </script>  
        <!-- //cart-js --> 
    </body>
</html>
