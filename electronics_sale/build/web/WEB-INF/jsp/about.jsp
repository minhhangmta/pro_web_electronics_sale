<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Electronic Store | About </title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <!-- banner -->
            <div class="banner banner10">
                <div class="container">
                    <h2>About Us</h2>
                </div>
            </div>
            <!-- //banner -->   
            <!-- breadcrumbs -->
            <div class="breadcrumb_dress">
                <div class="container">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/index"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
                        <li>About Us</li>
                    </ul>
                </div>
            </div>
            <!-- //breadcrumbs --> 
            <!-- about -->
            <div class="about">
                <div class="container">	
                    <div class="w3ls_about_grids">
                        <div class="col-md-6 w3ls_about_grid_left">
                            <p>Duis aute irure dolor in reprehenderit in voluptate velit esse 
                                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat 
                                cupidatat non proident, sunt in culpa qui officia deserunt mollit 
                                anim id est laborum.</p>
                            <div class="col-xs-2 w3ls_about_grid_left1">
                                <span class="glyphicon glyphicon-new-window" aria-hidden="true"></span>
                            </div>
                            <div class="col-xs-10 w3ls_about_grid_left2">
                                <p>Sunt in culpa qui officia deserunt mollit 
                                    anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse 
                                    cillum dolore eu fugiat nulla pariatur.</p>
                            </div>
                            <div class="clearfix"> </div>
                            <div class="col-xs-2 w3ls_about_grid_left1">
                                <span class="glyphicon glyphicon-flash" aria-hidden="true"></span>
                            </div>
                            <div class="col-xs-10 w3ls_about_grid_left2">
                                <p>Sunt in culpa qui officia deserunt mollit 
                                    anim id est laborum.Duis aute irure dolor in reprehenderit in voluptate velit esse 
                                    cillum dolore eu fugiat nulla pariatur.</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="col-md-6 w3ls_about_grid_right">
                            <img src="<c:url value="/resources/images/2.jpg"/>" alt=" " class="img-responsive" />
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <!-- //about --> 
            <!-- team -->
            <div class="team">
                <div class="container">
                    <h3>Meet Our Team</h3>
                    <div class="wthree_team_grids">
                        <div class="col-md-3 wthree_team_grid">
                            <img src="<c:url value="/resources/images/t4.png"/>"" alt=" " class="img-responsive" />
                            <h4>Smith Allen <span>Manager</span></h4>
                            <div class="agileits_social_button">
                                <ul>
                                    <li><a href="#" class="facebook"> </a></li>
                                    <li><a href="#" class="twitter"> </a></li>
                                    <li><a href="#" class="google"> </a></li>
                                    <li><a href="#" class="pinterest"> </a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 wthree_team_grid">
                            <img src="<c:url value="/resources/images/t5.png"/>"" alt=" " class="img-responsive" />
                            <h4>Laura James <span>Designer</span></h4>
                            <div class="agileits_social_button">
                                <ul>
                                    <li><a href="#" class="facebook"> </a></li>
                                    <li><a href="#" class="twitter"> </a></li>
                                    <li><a href="#" class="google"> </a></li>
                                    <li><a href="#" class="pinterest"> </a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 wthree_team_grid">
                            <img src="<c:url value="/resources/images/t6.png"/>"" alt=" " class="img-responsive" />
                            <h4>Crisp Doe <span>Director</span></h4>
                            <div class="agileits_social_button">
                                <ul>
                                    <li><a href="#" class="facebook"> </a></li>
                                    <li><a href="#" class="twitter"> </a></li>
                                    <li><a href="#" class="google"> </a></li>
                                    <li><a href="#" class="pinterest"> </a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 wthree_team_grid">
                            <img src="<c:url value="/resources/images/t7.png"/>"" alt=" " class="img-responsive" />
                            <h4>Linda Rosy <span>Quality Checker</span></h4>
                            <div class="agileits_social_button">
                                <ul>
                                    <li><a href="#" class="facebook"> </a></li>
                                    <li><a href="#" class="twitter"> </a></li>
                                    <li><a href="#" class="google"> </a></li>
                                    <li><a href="#" class="pinterest"> </a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                        <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
                            voluptatibus maiores alias consequatur aut perferendis doloribus asperiores 
                            repellat.</p>
                    </div>
                </div>
            </div>
            <!-- //team -->
            <!-- team-bottom -->
            <div class="team-bottom">
                <div class="container">
                    <h3>Are You Ready For Deals? Flat <span>30% Offer </span>on Mobiles</h3>
                    <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis 
                        voluptatibus maiores alias consequatur aut perferendis doloribus asperiores 
                        repellat.</p>
                    <a href="${pageContext.request.contextPath}/product">Shop Now</a>
                </div>
            </div>
            <!-- //team-bottom -->

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>