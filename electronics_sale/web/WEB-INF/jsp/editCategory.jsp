<%-- 
    Document   : addProduct
    Created on : Dec 14, 2017, 2:46:03 PM
    Author     : Phong_Tung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="dao.impl.*" %>
<%@page import="pojo.*"%>
<%@page import="java.util.*" %>
<%@page import="util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stock Management | Quản lý danh mục</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="<c:url value="/resources/admin/css/bootstrap.min.css"/>" />
        <link rel="stylesheet" href="<c:url value="/resources/admin/css/bootstrap-responsive.min.css"/>" />
        <link rel="stylesheet" href="<c:url value="/resources/admin/css/fullcalendar.css"/>" />
        <link rel="stylesheet" href="<c:url value="/resources/admin/css/matrix-style.css"/>" />
        <link rel="stylesheet" href="<c:url value="/resources/admin/css/matrix-media.css"/>" />
        <link href="<c:url value="/resources/font-awesome/admin/css/font-awesome.css"/>" rel="stylesheet" />
        <link rel="stylesheet" href="<c:url value="/resources/admin/css/jquery.gritter.css"/>" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <!--header-->
        <jsp:include page="adheader.jsp"/>
        <!--end-header-->

        <!--sidebar-menu-->
        <jsp:include page="adsidebar-menu.jsp"/>
        <!--sidebar-menu-->

        <!--main-container-part-->
        <div id="content">
            <!--breadcrumbs-->
            <div id="content-header">
                <div id="breadcrumb"> <a href="${pageContext.request.contextPath}/adindex" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a><a href="${pageContext.request.contextPath}/adcategory" class="current">Danh mục</a></div>
                <h1>Sửa Danh Mục</h1>
            </div>
            <!--End-breadcrumbs-->

            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                    <h5>Sửa danh mục</h5>
                </div>
                <div class="widget-content nopadding">
                    <form action="${pageContext.request.contextPath}/suadanhmuc" method="post" class="form-horizontal"commandName="cate">
                        <div class="widget-content nopadding">
                            <form action="${pageContext.request.contextPath}/suadanhmuc" method="post" class="form-horizontal"commandName="cate">
                                <div class="control-group">
                                    <label class="control-label">Tên danh mục :</label>
                                    <div class="controls">
                                        <input type="text" class="form-control" value="${cate.tendanhmuc}" name="tendanhmuc"/>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">Danh Mục Cha</label>
                                    <div class="controls">
                                        <select name="danhmuccha">
                                             <c:forEach var="item" items="${listdanhmuc}"> 
                                                    <c:choose> 
                                                        <c:when test="${item.maDmcha == cate.maDmcha}">
                                                            <option value="${item.maDmcha}" selected="true">${item.tendanhmuc}</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option value="${item.maDmcha}">${item.tendanhmuc}</option>
                                                        </c:otherwise>
                                                    </c:choose>                                        
                                                </c:forEach>
                                        </select>
                                  
                                    </div>
                                </div> 
                                <button type="submit" class="btn btn-success">save</button>
                            </form>
                        </div>
                </div>
                <!--Footer-part-->

                <div class="row-fluid">
                    <div id="footer" class="span12"> 2017 Stock Management. Brought to you by <a href="http://themedesigner.in">Themedesigner.in</a> </div>
                </div>

                <!--end-Footer-part-->
                </body>
                </html>
