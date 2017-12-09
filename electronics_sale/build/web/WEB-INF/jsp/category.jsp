<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript"
        src="${pageContext.request.contextPath}/resources/js/script.js"></script>
        <title>category</title>
    </head>
    <body>
        <c:set value="${pageContext.request.contextPath}" var="path"/>
        <div class="panel panel-default">
            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                <div class="panel-body panel_text">
                    <ul>
                        <c:forEach items="${listDanhMuc}" var="list">
                            <c:if test="${list.maDmcha==0}">
                                <c:set value="${list.maDm}" var="maCha"></c:set>
                                    <!-- get ten danh muc cha -->
                                    <li><a href="${path}/product" onclick="hiddenCategory()">${list.tendanhmuc}</a></li>
                                <!-- -->

                                <!-- get ten danh muc con -->
                                <table id="sub-category" style="display: block;">
                                    <c:forEach items="${listDanhMuc}" var="list">
                                        <c:if test="${list.maDmcha == maCha}">
                                            <li><a href="${path}/product/${list.maDm}" style="padding-left: 10px; color:#3C2B6F;">${list.tendanhmuc}</a></li>
                                            </c:if>
                                        </c:forEach>
                                </table>
                                <!-- -->
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
