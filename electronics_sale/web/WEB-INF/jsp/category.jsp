<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>category</title>
    </head>
    <body>
        <div class="panel panel-default">
            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                <div class="panel-body panel_text">
                    <ul>
                        <c:forEach items="${listDanhMuc}" var="list">
                            <c:if test="${list.maDmcha==0}">
                                <c:set value="${list.maDm}" var="maCha"></c:set>
                                    <!-- get ten danh muc cha -->
                                    <li><a href="#">${list.tendanhmuc}</a></li>
                                <!-- -->
                                <!-- get ten danh muc con -->
                                <c:forEach items="${listDanhMuc}" var="list">
                                    <c:if test="${list.maDmcha == maCha}">
                                        <li><a href="#">${list.tendanhmuc}</a></li>
                                        </c:if>
                                    </c:forEach>
                                <!-- -->
                            </c:if>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
