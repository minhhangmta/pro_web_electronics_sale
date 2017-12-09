<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>category</title>
    </head>
    <body>
    <c:forEach var="item" items="${listCategory}">
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingOne">
                <h4 class="panel-title asd">
                    <a href="${pageContext.request.contextPath}/product/list?category=${item.maDm}"class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span><i class="glyphicon glyphicon-minus" aria-hidden="true"></i>${item.tendanhmuc}
                    </a>
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                <div class="panel-body panel_text">
                    <ul>
                        <li><a href="products.html">Mobiles</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </c:forEach> 
</body>
</html>
