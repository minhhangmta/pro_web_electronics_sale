<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Electronic Store | Contact us </title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <!-- banner -->
            <div class="banner banner10">
                <div class="container">
                    <h2>Mail Us</h2>
                </div>
            </div>
            <!-- //banner -->    
            <!-- breadcrumbs -->
            <div class="breadcrumb_dress">
                <div class="container">
                    <ul>
                        <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a> <i>/</i></li>
                        <li>Mail Us</li>
                    </ul>
                </div>
            </div>
            <!-- //breadcrumbs --> 
            <!-- mail -->
            <div class="mail">
                <div class="container">
                    <h3>Mail Us</h3>
                    <div class="agile_mail_grids">
                        <div class="col-md-5 contact-left">
                            <h4>Address</h4>
                            <p>est eligendi optio cumque nihil impedit quo minus id quod maxime
                                <span>26 56D Rescue,US</span></p>
                            <ul>
                                <li>Free Phone :+1 078 4589 2456</li>
                                <li>Telephone :+1 078 4589 2456</li>
                                <li>Fax :+1 078 4589 2456</li>
                                <li><a href="mailto:info@example.com">info@example.com</a></li>
                            </ul>
                        </div>
                        <div class="col-md-7 contact-left">
                            <h4>Contact Form</h4>
                        <form:form method="POST" commandName="lienhe" action="${pageContext.request.contextPath}/SaveContact">
                            <form:input path="hoten" type="text" name="Name" placeholder="Your Name" required="" value="${lienhe.hoten}"/>
                            <form:input path="email" type="email" name="Email" placeholder="Your Email" required="" value="${lienhe.email}" />
                            <form:input path="sodienthoai" type="text" name="Telephone" placeholder="Telephone No" required="" value="${lienhe.sodienthoai}"/>
                            <form:textarea path="lienhe" type="text" name="message" placeholder="Message..." required=""  value="${lienhe.lienhe}"/>
                            <input type="submit" value="Submit" />
                        </form:form>
                    </div>
                    <div class="clearfix"> </div>
                </div>

                <div class="contact-bottom">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d96908.54934770924!2d-73.74913540000001!3d40.62123259999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sanimal+rescue+service+near+Inwood%2C+New+York%2C+NY%2C+United+States!5e0!3m2!1sen!2sin!4v1436335928062" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
        <!-- //mail -->
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
