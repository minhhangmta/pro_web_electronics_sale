<%-- 
    Document   : Account
    Created on : Dec 8, 2017, 7:39:48 PM
    Author     : tranv
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Electronic Store | Login </title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="" id="" tabindex="-1" role="dialog" aria-labelledby="myModal88" aria-hidden="false" style="display: block;">
                    <div class="">
                        <div class="">
                            <div class="modal-header">

                                <h4 class="modal-title" id="myModalLabel">Don't Wait, Login now!</h4>
                            </div>
                            <div class="modal-body modal-body-sub">
                                <div class="row">
                                    <div class="col-md-8 modal_body_left modal_body_left1" style="border-right: 1px dotted #C2C2C2;padding-right:3em;">
                                        <div class="sap_tabs">	
                                            <div id="" style="display: block; width: 100%; margin: 0px;">
                                                <ul>
                                                    <li class="resp-tab-item resp-tab-active" aria-controls="tab_item-1" role="tab">
                                                        <a href="${pageContext.request.contextPath}/Login">
                                                       <span>Đăng nhập</span>
                                                    </a>
                                                </li>
                                            </ul>		
                                            <p>${msgAccount} ${msgAccountErr} ${msgPass}</p>
                                            
                                            <div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
                                                <div class="facts">
                                                    <div class="register">
                                                        <form action="${pageContext.request.contextPath}/request" method="post" commandName="accountnew">			
                                                            <input placeholder="Name" name="NameAccount" type="text" required="">
                                                            <input placeholder="Email" name="EmailAccount" type="email" required="">
                                                            <input placeholder="Telephone" name="Telephone" type="text" required="">
                                                            <input placeholder="Address" name="Address" type="text" required="">
                                                            <input placeholder="Username" name="Username" type="text" required="">
                                                            <input placeholder="Password" name="Password" type="password" required="">	
                                                            <input placeholder="Confirm Password" name="PasswordCf" type="password" required="">
                                                            <div class="sign-up">
                                                                <input type="submit" value="Create Account">
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div> 			        					            	      
                                        </div>	
                                    </div>
                                    <script src="<c:url value="/resources/js/easyResponsiveTabs.js"/>"type="text/javascript"></script>

                                    <!--                                    <script type="text/javascript">
                                                                            $(document).ready(function () {
                                                                                $('#horizontalTab').easyResponsiveTabs({
                                                                                    type: 'default', //Types: default, vertical, accordion           
                                                                                    width: 'auto', //auto or any width like 600px
                                                                                    fit: true   // 100% fit in a container
                                                                                });
                                                                            });
                                                                        </script>-->
                                    <div id="OR" class="hidden-xs">OR</div>
                                </div>
                                <div class="col-md-4 modal_body_right modal_body_right1">
                                    <div class="row text-center sign-with">
                                        <div class="col-md-12">
                                            <h3 class="other-nw">Sign in with</h3>
                                        </div>
                                        <div class="col-md-12">
                                            <ul class="social">
                                                <li class="social_facebook"><a href="#" class="entypo-facebook"></a></li>
                                                <li class="social_dribbble"><a href="#" class="entypo-dribbble"></a></li>
                                                <li class="social_twitter"><a href="#" class="entypo-twitter"></a></li>
                                                <li class="social_behance"><a href="#" class="entypo-behance"></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>

