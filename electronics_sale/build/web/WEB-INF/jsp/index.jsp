<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

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
                            <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home">Mobiles</a></li>
                            <li role="presentation"><a href="#audio" role="tab" id="audio-tab" data-toggle="tab" aria-controls="audio">Audio</a></li>
                            <li role="presentation"><a href="#video" role="tab" id="video-tab" data-toggle="tab" aria-controls="video">Computer</a></li>
                            <li role="presentation"><a href="#tv" role="tab" id="tv-tab" data-toggle="tab" aria-controls="tv">Household</a></li>
                            <li role="presentation"><a href="#kitchen" role="tab" id="kitchen-tab" data-toggle="tab" aria-controls="kitchen">Kitchen</a></li>
                        </ul>
                        <div id="myTabContent" class="tab-content">
                            <div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
                                <div class="agile_ecommerce_tabs">
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="<c:url value="/resources/images/3.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/4.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/5.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/6.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/7.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/3.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/4.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/5.jpg"/>" alt=" " class="img-responsive" />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div> 
                                        <h5><a href="single.html">Mobile Phone1</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$380</span> <i class="item_price">$350</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="w3ls_item" value="Mobile Phone1" /> 
                                                <input type="hidden" name="amount" value="350.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>  
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="<c:url value="/resources/images/4.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/5.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/6.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/7.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/3.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/4.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/5.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/6.jpg"/>" alt=" " class="img-responsive" />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.html">Mobile Phone2</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$330</span> <i class="item_price">$302</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="w3ls_item" value="Mobile Phone2" /> 
                                                <input type="hidden" name="amount" value="302.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="<c:url value="/resources/images/7.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/6.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/4.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/3.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/5.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/7.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/4.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/6.jpg"/>" alt=" " class="img-responsive" />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.html">Mobile Phone3</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$250</span> <i class="item_price">$245</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="w3ls_item" value="Mobile Phone3" /> 
                                                <input type="hidden" name="amount" value="245.00"/>   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="audio" aria-labelledby="audio-tab">
                                <div class="agile_ecommerce_tabs">
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="<c:url value="/resources/images/8.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/9.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/10.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/8.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/9.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/10.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/8.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/9.jpg"/>" alt=" " class="img-responsive" />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.html">Speakers</a></h5>
                                        <p><span>$320</span> <i class="item_price">$250</i></p>
                                        <div class="simpleCart_shelfItem">
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="w3ls_item" value="Speakers" /> 
                                                <input type="hidden" name="amount" value="250.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="<c:url value="/resources/images/9.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/8.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/10.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/8.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/9.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/10.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/8.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/9.jpg"/>" alt=" " class="img-responsive" />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.html">Headphones</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$180</span> <i class="item_price">$150</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="w3ls_item" value="Headphones" /> 
                                                <input type="hidden" name="amount" value="150.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="<c:url value="/resources/images/10.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/8.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/9.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/8.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/9.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/10.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/8.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/9.jpg"/>" alt=" " class="img-responsive" />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal1"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.html">Audio Player</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$220</span> <i class="item_price">$180</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="w3ls_item" value="Audio Player" /> 
                                                <input type="hidden" name="amount" value="180.00"/>   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="video" aria-labelledby="video-tab">
                                <div class="agile_ecommerce_tabs">
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="<c:url value="/resources/images/11.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/12.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/13.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/11.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/12.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/13.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/11.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/12.jpg"/>" alt=" " class="img-responsive" />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.html">Laptop</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$880</span> <i class="item_price">$850</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="w3ls_item" value="Laptop" /> 
                                                <input type="hidden" name="amount" value="850.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="<c:url value="/resources/images/12.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/11.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/13.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/11.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/12.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/13.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/11.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/12.jpg"/>" alt=" " class="img-responsive" />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.html">Notebook</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$290</span> <i class="item_price">$280</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="w3ls_item" value="Notebook" /> 
                                                <input type="hidden" name="amount" value="280.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="<c:url value="/resources/images/13.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/11.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/12.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/11.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/12.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/13.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/11.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/12.jpg"/>" alt=" " class="img-responsive" />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.html">Kid's Toy</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$120</span> <i class="item_price">$80</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="w3ls_item" value="Kid's Toy" /> 
                                                <input type="hidden" name="amount" value="80.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tv" aria-labelledby="tv-tab">
                                <div class="agile_ecommerce_tabs">
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="<c:url value="/resources/images/14.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/15.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/16.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/14.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/15.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/16.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/14.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/15.jpg"/>" alt=" " class="img-responsive" />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.html">Refrigerator</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$950</span> <i class="item_price">$820</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="w3ls_item" value="Refrigerator" /> 
                                                <input type="hidden" name="amount" value="820.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="<c:url value="/resources/images/15.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/14.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/16.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/14.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/15.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/16.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/14.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/15.jpg"/>" alt=" " class="img-responsive" />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.html">LED Tv</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$700</span> <i class="item_price">$680</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="w3ls_item" value="LED Tv"/> 
                                                <input type="hidden" name="amount" value="680.00"/>   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="<c:url value="/resources/images/16.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/14.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/15.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/14.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/15.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/16.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/14.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/15.jpg"/>" alt=" " class="img-responsive" />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal3"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.html">Washing Machine</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$520</span> <i class="item_price">$510</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="w3ls_item" value="Washing Machine" /> 
                                                <input type="hidden" name="amount" value="510.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="kitchen" aria-labelledby="kitchen-tab">
                                <div class="agile_ecommerce_tabs">
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="<c:url value="/resources/images/17.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/18.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/19.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/17.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/18.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/19.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/17.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/18.jpg"/>" alt=" " class="img-responsive" />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.html">Grinder</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$460</span> <i class="item_price">$450</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="w3ls_item" value="Grinder" /> 
                                                <input type="hidden" name="amount" value="450.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="<c:url value="/resources/images/18.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/17.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/19.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/17.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/18.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/19.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/17.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/18.jpg"/>" alt=" " class="img-responsive" />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.html">Water Purifier</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$390</span> <i class="item_price">$350</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="w3ls_item" value="Water Purifier" /> 
                                                <input type="hidden" name="amount" value="350.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="col-md-4 agile_ecommerce_tab_left">
                                        <div class="hs-wrapper">
                                            <img src="<c:url value="/resources/images/19.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/17.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/18.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/17.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/18.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/19.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/17.jpg"/>" alt=" " class="img-responsive" />
                                            <img src="<c:url value="/resources/images/18.jpg"/>" alt=" " class="img-responsive" />
                                            <div class="w3_hs_bottom">
                                                <ul>
                                                    <li>
                                                        <a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <h5><a href="single.html">Coffee Maker</a></h5>
                                        <div class="simpleCart_shelfItem">
                                            <p><span>$250</span> <i class="item_price">$220</i></p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" /> 
                                                <input type="hidden" name="w3ls_item" value="Coffee Maker" /> 
                                                <input type="hidden" name="amount" value="220.00" />   
                                                <button type="submit" class="w3ls-cart">Add to cart</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
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
                    <div class="col-md-3 agileinfo_new_products_grid">
                        <div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                            <div class="hs-wrapper hs-wrapper1">
                                <img src="<c:url value="/resources/images/25.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/23.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/24.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/22.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/26.jpg"/>" alt=" " class="img-responsive" /> 
                                <div class="w3_hs_bottom w3_hs_bottom_sub">
                                    <ul>
                                        <li>
                                            <a href="#" data-toggle="modal" data-target="#myModal2"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <h5><a href="single.html">Laptops</a></h5>
                            <div class="simpleCart_shelfItem">
                                <p><span>$520</span> <i class="item_price">$500</i></p>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="add" value="1"> 
                                    <input type="hidden" name="w3ls_item" value="Red Laptop"> 
                                    <input type="hidden" name="amount" value="500.00">   
                                    <button type="submit" class="w3ls-cart">Add to cart</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 agileinfo_new_products_grid">
                        <div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                            <div class="hs-wrapper hs-wrapper1">
                                <img src="<c:url value="/resources/images/27.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/28.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/29.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/30.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/31.jpg"/>" alt=" " class="img-responsive" /> 
                                <div class="w3_hs_bottom w3_hs_bottom_sub">
                                    <ul>
                                        <li>
                                            <a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <h5><a href="single.html">Black Phone</a></h5>
                            <div class="simpleCart_shelfItem">
                                <p><span>$380</span> <i class="item_price">$370</i></p>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="add" value="1"> 
                                    <input type="hidden" name="w3ls_item" value="Black Phone"> 
                                    <input type="hidden" name="amount" value="370.00">   
                                    <button type="submit" class="w3ls-cart">Add to cart</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 agileinfo_new_products_grid">
                        <div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                            <div class="hs-wrapper hs-wrapper1">
                                <img src="<c:url value="/resources/images/34.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/33.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/32.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/35.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/36.jpg"/>" alt=" " class="img-responsive" /> 
                                <div class="w3_hs_bottom w3_hs_bottom_sub">
                                    <ul>
                                        <li>
                                            <a href="#" data-toggle="modal" data-target="#myModal5"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <h5><a href="single.html">Kids Toy</a></h5>
                            <div class="simpleCart_shelfItem">
                                <p><span>$150</span> <i class="item_price">$100</i></p>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="add" value="1"> 
                                    <input type="hidden" name="w3ls_item" value="Kids Toy"> 
                                    <input type="hidden" name="amount" value="100.00">   
                                    <button type="submit" class="w3ls-cart">Add to cart</button>
                                </form>
                            </div>  
                        </div>
                    </div>
                    <div class="col-md-3 agileinfo_new_products_grid">
                        <div class="agile_ecommerce_tab_left agileinfo_new_products_grid1">
                            <div class="hs-wrapper hs-wrapper1">
                                <img src="<c:url value="/resources/images/37.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/38.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/39.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/40.jpg"/>" alt=" " class="img-responsive" />
                                <img src="<c:url value="/resources/images/41.jpg"/>" alt=" " class="img-responsive" /> 
                                <div class="w3_hs_bottom w3_hs_bottom_sub">
                                    <ul>
                                        <li>
                                            <a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <h5><a href="single.html">Induction Stove</a></h5>
                            <div class="simpleCart_shelfItem">
                                <p><span>$280</span> <i class="item_price">$250</i></p>
                                <form action="#" method="post">
                                    <input type="hidden" name="cmd" value="_cart">
                                    <input type="hidden" name="add" value="1"> 
                                    <input type="hidden" name="w3ls_item" value="Induction Stove"> 
                                    <input type="hidden" name="amount" value="250.00">   
                                    <button type="submit" class="w3ls-cart">Add to cart</button>
                                </form>
                            </div>
                        </div>
                    </div>
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
        <div class="top-brands">
            <div class="container">
                <h3>Top Brands</h3>
                <div class="sliderfig">
                    <!--                    jsp:include page="/nhacungcap">jsp:include>-->
                </div>
                <script type="text/javascript">
                    $(window).load(function () {
                        $("#flexiselDemo1").flexisel({
                            visibleItems: 4,
                            animationSpeed: 1000,
                            autoPlay: true,
                            autoPlaySpeed: 3000,
                            pauseOnHover: true,
                            enableResponsiveBreakpoints: true,
                            responsiveBreakpoints: {
                                portrait: {
                                    changePoint: 480,
                                    visibleItems: 1
                                },
                                landscape: {
                                    changePoint: 640,
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
                <script src="<c:url value="/resources/js/jquery.flexisel.js"/>" type="text/javascripts"></script>
            </div>
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
