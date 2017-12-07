<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Electronic Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              SmartPhone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <!-- Custom Theme files -->
        <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet" type="text/css" media="all" />
        <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet" type="text/css" media="all" />
        <link href="<c:url value="/resources/css/fasthover.css"/>" rel="stylesheet" type="text/css" media="all" />
        <link href="<c:url value="/resources/css/popuo-box.css"/>" rel="stylesheet" type="text/css" media="all" />
        <!-- //Custom Theme files -->
        <!-- font-awesome icons -->
        <link href="<c:url value="/resources/css/font-awesome.css"/>" rel="stylesheet"> 
        <!-- //font-awesome icons -->
        <!-- js -->
        <script src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>"type="text/javascript"></script>
        <link href="stylesheet" href="<c:url value="/resorces/css/jquery.countdown.css"/>" /> <!-- countdown --> 
        <!-- //js -->  
        <!-- web fonts --> 
        <link href='//fonts.googleapis.com/css?family=Glegoo:400,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
        <!-- //web fonts -->  
        <!-- start-smooth-scrolling -->
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!-- //end-smooth-scrolling --> 
    </head> 
    <body>
        <!-- for bootstrap working -->
        <script type="text/javascript" src="<c:url value="/resources/js/bootstrap-3.1.1.min.js"/>"></script>
        <!-- //for bootstrap working -->
        <!-- header -->
        <div class="header" id="home1">
            <div class="container">
                <div class="w3l_login">
                    <a href="${pageContext.request.contextPath}/Login"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></a>
                   
                </div>
                <div class="w3l_login">
                     <a href="${pageContext.request.contextPath}/Logout"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span></a>
                </div>
                <div class="w3l_logo">
                    <h1><a href="${pageContext.request.contextPath}/index">Electronic Store<span>Your stores. Your place.</span></a></h1>
                </div>
                <div class="search">
                    <input class="search_box" type="checkbox" id="search_box">
                    <label class="icon-search" for="search_box"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
                    <div class="search_form">
                        <form action="#" method="post">
                            <input type="text" name="Search" placeholder="Search...">
                            <input type="submit" value="Send">
                        </form>
                    </div>
                </div>
                <div class="cart cart box_1"> 
                    <form action="#" method="post" class="last"> 
                        <input type="hidden" name="cmd" value="_cart" />
                        <input type="hidden" name="display" value="1" />
                        <button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
                    </form>   
                </div>  
            </div>
        </div>
        <!-- //header -->
        <!-- navigation -->
        <div class="navigation">
            <div class="container">
                <nav class="navbar navbar-default">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div> 
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav">
                            <li><a href="${pageContext.request.contextPath}/index" class="act">Home</a></li>	
                            <!-- Mega Menu -->
                            <li >
                                <a href="${pageContext.request.contextPath}/product" >Products</a>
                            </li>
                            <li><a href="about.html">About Us</a></li> 
                            <li class="w3pages">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    Pages <span class="caret"></span>
                                </a>
                            </li>  
                            <li><a href="${pageContext.request.contextPath}/contact">Mail Us</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!-- //navigation -->
    </body>
</html>
