<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<div>
    <c:forEach var="item" items="${danhsachsanpham}">
        <div class="col-md-4 agileinfo_new_products_grid agileinfo_new_products_grid_mobiles">
            <div class="agile_ecommerce_tab_left mobiles_grid">
                <div class="hs-wrapper hs-wrapper2">
                    <img src="<c:url value="${item.anh}"/>" alt=" " class="img-responsive" />
                    <img src="<c:url value="/resources/images/22.jpg"/>" alt=" " class="img-responsive" />
                    <img src="<c:url value="/resources/images/23.jpg"/>" alt=" " class="img-responsive" />
                    <img src="<c:url value="/resources/images/24.jpg"/>" alt=" " class="img-responsive" />
                    <img src="<c:url value="/resources/images/25.jpg"/>" alt=" " class="img-responsive" /> 
                    <div class="w3_hs_bottom w3_hs_bottom_sub1">
                        <ul>
                            <li>
                                <a href="#" data-toggle="modal" data-target="#myModal8"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <h5><a href="single.html">${item.tensanpham}</a></h5> 
                <div class="simpleCart_shelfItem">
                    <p><span>$${item.gia}</span> <i class="item_price">$${item.gia-(item.gia*item.sale/100)}</i></p>
                    <form action="#" method="post">
                        <input type="hidden" name="cmd" value="_cart" />
                        <input type="hidden" name="add" value="1" /> 
                        <input type="hidden" name="w3ls_item" value="Asus Laptop" /> 
                        <input type="hidden" name="amount" value="880.00"/>   
                        <button type="submit" class="w3ls-cart">Add to cart</button>
                    </form>
                </div> 
                <div class="mobiles_grid_pos">
                    <h6>new</h6>
                </div>
            </div>
        </div>
    </c:forEach>
</div>