<%-- 
    Document   : adproducts
    Created on : Dec 13, 2017, 10:37:13 PM
    Author     : Phong_Tung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                <h1><a href="${pageContext.request.contextPath}/themsanpham" class="btn btn-primary btn-large">Thêm Sản Phẩm</a></h1>
            </div>
            <!--End-breadcrumbs-->

            <!--Action boxes-->
            <div class="container-fluid">
                <hr>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="container-fluid">
                            <div class="widget-box">
                                <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
                                    <h5>Danh Sách Sản Phẩm</h5>
                                    
                                </div>
                                <div class="widget-content nopadding">
                                    <table class="table table-bordered data-table">
                                        <thead>
                                            <tr>
                                                <th>Mã SP</th>
                                                <th>Tên Sản Phẩm</th>
                                                <th>Hình ảnh</th>
                                                <th>Mô Tả</th>
                                                <th>Giá</th>
                                                <th>Sale</th>
                                                <th>Số Lượng</th>
                                                <th>Nhà Cung Cấp</th>
                                                <th>Trạng Thái</th>
                                                <th>Danh Mục</th>
                                                <th>Chức Năng</th>
                                            </tr>
                                        </thead>
                                         <tbody>                               
                                            <c:forEach var="listSanPham" items="${listSanPham}" >                                          
                                                <tr class="gradeX">
                                                    <td>${listSanPham.maSp}</td>
                                                    <td>${listSanPham.tensanpham}</td>
                                                    <td>${listSanPham.anh}</td>
                                                    <td>${listSanPham.mota}</td>
                                                    <td>${listSanPham.gia}</td>
                                                    <td>${listSanPham.sale}</td>
                                                    <td>${listSanPham.soluong}</td>
                                                    <td>${listSanPham.nhacungcap.maNcc}</td>
                                                    <td>${listSanPham.trangthai.maTt}</td>
                                                    <td>${listSanPham.danhmuc.maDm}</td>
                                                    <td class="center">
                                                        <a href="${pageContext.request.contextPath}/suasanpham/${listSanPham.maSp}" class="btn btn-primary btn-mini">Edit</a> 
                                                        <a href="${pageContext.request.contextPath}/xoasanpham/${listSanPham.maSp}" class="btn btn-success btn-mini">Delete</a>
                                                    </td>
                                                </tr>                                             
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!--End-Action boxes-->    
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--end-main-container-part-->

        <!--Footer-part-->

        <div class="row-fluid">
            <div id="footer" class="span12"> 2017 Stock Management. Brought to you by <a href="http://themedesigner.in">Themedesigner.in</a> </div>
        </div>

        <!--end-Footer-part-->

       
    </body>
</html>
