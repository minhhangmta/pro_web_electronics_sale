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
        <title>Stock Management | Quản lý sản phẩm</title>
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
                <div id="breadcrumb"> <a href="${pageContext.request.contextPath}/adindex" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a><a href="${pageContext.request.contextPath}/adproducts" class="current">Sản Phẩm</a></div>
                <h1>Sửa Sản Phẩm</h1>
            </div>
            <!--End-breadcrumbs-->

            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                    <h5>Sửa sản phẩm</h5>
                </div>
                <div class="widget-content nopadding">
                    <form action="${pageContext.request.contextPath}/suasanpham" method="post" class="form-horizontal"commandName="sp">
                        <div class="widget-content nopadding">
                            <form action="${pageContext.request.contextPath}/suasanpham" method="post" class="form-horizontal"commandName="sp">
                                <div class="control-group">
                                    <label class="control-label">Tên sản phẩm :</label>
                                    <div class="controls">
                                        <input type="text" class="form-control" value="${sp.tensanpham}" name="tensanpham"/>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label"  for="exampleInputPassword1">Số lượng</label>
                                    <div class="controls">
                                        <input name="soluong" type="number" min="0" max="100"  id="exampleInputPassword1" value="${sp.soluong}"/>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="exampleInputPassword1">Giá cả</label>
                                    <div class="controls">
                                        <input name="giaban" type="number" min="1000" max="10000000" id="exampleInputPassword1" value="${sp.gia}"/>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label" for="exampleInputFile">Ảnh</label>
                                    <div class="controls">
                                        <input type="file" id="exampleInputFile"  name="file">
                                        <label class="text-danger" ></label>
                                        <p class="help-block"></p>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">Sale</label>
                                    <div class="controls">
                                        <select  name="sale" value="${sp.sale}">
                                            <option>0</option>
                                            <option>5</option>
                                            <option>10</option>
                                            <option>15</option>
                                            <option>20</option>   
                                            <option>25</option>
                                            <option>30</option>
                                            <option>35</option>
                                            <option>40</option> 
                                            <option>45</option>
                                            <option>50</option> 
                                            <option>55</option>
                                            <option>60</option> 
                                            <option>65</option>
                                            <option>70</option> 
                                            <option>75</option> 
                                        </select>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">Nhà Cung Cấp</label>
                                    <div class="controls">
                                        <select  name="nhacungcap">
                                          <c:forEach var="item" items="${listNcc}"> 
                                                    <c:choose> 
                                                        <c:when test="${item.maNcc == sp.nhacungcap.maNcc}">
                                                            <option value="${item.maNcc}" selected="true">${item.tennhacc}</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option value="${item.maNcc}">${item.tennhacc}</option>
                                                        </c:otherwise>
                                                    </c:choose>                                        
                                                </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">Danh Mục</label>
                                    <div class="controls">
                                        <select name="danhmuc" >
                                            <c:forEach var="item" items="${listdanhmuc}"> 
                                                    <c:choose> 
                                                        <c:when test="${item.maDm == sp.danhmuc.maDm}">
                                                            <option value="${item.maDm}" selected="true">${item.tendanhmuc}</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option value="${item.maDm}">${item.tendanhmuc}</option>
                                                        </c:otherwise>
                                                    </c:choose>                                        
                                                </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">Trạng Thái</label>
                                    <div class="controls">
                                        <select  name="trangthai" >
                                           <c:forEach var="item" items="${listTT}"> 
                                                    <c:choose> 
                                                        <c:when test="${item.maTt == sp.danhmuc.maTt}">
                                                            <option value="${item.maTt}" selected="true">${item.tentrangthai}</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <option value="${item.maTt}">${item.tentrangthai}</option>
                                                        </c:otherwise>
                                                    </c:choose>                                        
                                                </c:forEach>
                                        </select>
                                    </div>
                                </div>

                                <div class="control-group">
                                    <label class="control-label">Mô tả</label>
                                    <div class="controls">
                                        <textarea  rows="3" value="${sp.mota}" name="mota"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-success">save</button>
                                </div>
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
