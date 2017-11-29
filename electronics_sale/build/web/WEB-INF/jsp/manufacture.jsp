<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- Nhà sản xuất -->
<div>
    <ul id="">	
        <c:forEach var="item" items="${listnhacungcap}">
            <li >
                <img src="<c:url value="${item.anh}"/>" alt=" " class="img-responsive" />
            </li>
        </c:forEach>
    </ul>
</div>