<%-- 
    Document   : shopping-cart
    Created on : Dec 10, 2017, 3:58:09 PM
    Author     : Winson Mac
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set value="${sessionScope['scopedTarget.cart']}" var="cart" />
<div class="col-md-3 header-right footer-bottom">  
    <div class="v2q-cart-container">
        <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
        <div class="v2q-quantity">
            <span>${cart.tongSoLuong==null ? 0 : cart.tongSoLuong}</span> 
        </div>
    </div>  
</div>
<script>
    $(".v2q-cart-container").click(function () {
        setTimeout(function () {
            window.location.href = "gio-hang/";
        }, 200);
    });
</script>
