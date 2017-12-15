<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title>Manage Store | Home</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="<c:url value="/resources/admin/css/bootstrap.min.css"/>" />
        <link rel="stylesheet" href="<c:url value="/resources/admin/css/bootstrap-responsive.min.css"/>" />
        <link rel="stylesheet" href="<c:url value="/resources/admin/css/fullcalendar.css"/>" />
        <link rel="stylesheet" href="<c:url value="/resources/admin/css/matrix-style.css"/>" />
        <link rel="stylesheet" href="<c:url value="/resources/admin/css/matrix-media.css"/>" />
        <link href="<c:url value="/resources/admin/font-awesome/css/font-awesome.css"/>" rel="stylesheet" />
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
                <div id="breadcrumb"> <a href="${pageContext.request.contextPath}/adindex" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
            </div>
            <!--End-breadcrumbs-->

            <!--Action boxes-->
            <div class="container-fluid">
                <div class="quick-actions_homepage">
                    <ul class="quick-actions">
                         <li class="bg_lb"> <a href="${pageContext.request.contextPath}/adindex"> <i class="icon icon-home"></i> Home </a> </li>
                        <li class="bg_lg span3"> <a href="${pageContext.request.contextPath}/adproducts"> <i class="icon-th-list"></i> Quản lý sản phẩm </a> </li>
                        <li class="bg_ly"> <a href="${pageContext.request.contextPath}/adcategory"> <i class="icon-calendar"></i> Quản lý danh mục </a> </li>
                        <li class="bg_lo"> <a href="${pageContext.request.contextPath}/adaccount"> <i class="icon-th"></i> Quản lý tài khoản </a> </li>
                      

                    </ul>
                </div>
                <!--End-Action boxes-->    

            </div>
        </div>

        <!--end-main-container-part-->

        <!--Footer-part-->

        <div class="row-fluid">
            <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in">Themedesigner.in</a> </div>
        </div>

        <!--end-Footer-part-->

    
    </body>
</html>
