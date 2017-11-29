
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
        <form:form method="POST" commName="taikhoan" action="${pageContext.request.contextPath}/index" >			
            <form:input path="username" name="Email" placeholder="Email Address" type="text" required="" value="${taikhoan.username}"/>					
            <form:input path="password" name="Password" placeholder="Password" type="password" required="" value="${taikhoan.password}"/>										
            <div class="sign-up">
                <input type="submit" value="Sign in"/>
            </div>
        </form:form>
        <!--     header modal 
            <div class="modal fade" id="myModal88" tabindex="-1" role="dialog" aria-labelledby="myModal88"
                 aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;</button>
                            <h4 class="modal-title" id="myModalLabel">Don't Wait, Login now!</h4>
                        </div>
                        <div class="modal-body modal-body-sub">
                            <div class="row">
                                <div class="col-md-8 modal_body_left modal_body_left1" style="border-right: 1px dotted #C2C2C2;padding-right:3em;">
                                    <div class="sap_tabs">	
                                        <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                                            <ul>
                                                <li class="resp-tab-item" aria-controls="tab_item-0"><span>Sign in</span></li>
                                                <li class="resp-tab-item" aria-controls="tab_item-1"><span>Sign up</span></li>
                                            </ul>		
                                            <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                                                <div class="facts">
                                                    <div class="register">
                                                                                                            ..
                                                    </div>
                                                </div> 
                                            </div>	 
                                            <div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
                                                <div class="facts">
                                                    <div class="register">
                                                        <form action="#" method="post">			
                                                            <input placeholder="Name" name="Name" type="text" required="">
                                                            <input placeholder="Email Address" name="Email" type="email" required="">	
                                                            <input placeholder="Password" name="Password" type="password" required="">	
                                                            <input placeholder="Confirm Password" name="Password" type="password" required="">
                                                            <div class="sign-up">
                                                                <input type="submit" value="Create Account"/>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div> 			        					            	      
                                        </div>	
                                    </div>
                                    <script src="<c:url value="/resources/js/easyResponsiveTabs.js"/>" type="text/javascripts"></script>
                                    <script type="text/javascript">
                                        $(document).ready(function () {
                                            $('#horizontalTab').easyResponsiveTabs({
                                                type: 'default', //Types: default, vertical, accordion           
                                                width: 'auto', //auto or any width like 600px
                                                fit: true   // 100% fit in a container
                                            });
                                        });
                                    </script>
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
             header modal -->
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
