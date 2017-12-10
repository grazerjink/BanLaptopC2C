<%-- 
    Document   : header
    Created on : Nov 7, 2017, 12:17:43 PM
    Author     : Winson Mac
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set value="${sessionScope.customer}" var="customer" scope="session"/>
<div class="header">
    <div class="container">
        <ul>
            <li><span class="glyphicon glyphicon-time" aria-hidden="true"></span>Free and Fast Delivery</li>
            <li><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Free shipping On all orders</li>
            <li class="v2q-user">
                <c:choose>
                    <c:when test="${customer!=null}">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span><a class="user v2q-user-popup"><span class="user-email">${customer.email}</span></a>
                        <!-- user dashboard -->   
                        <jsp:include page="../user-popup.jsp"/>
                        <!-- //user dashboard -->  
                        <script>
                            $(".v2q-user-popup").click(function () {
                                $("#user-popup").toggle();
                            });
                        </script>
                    </c:when>
                    <c:otherwise>
                        <span style="margin-left: 10px;" class="glyphicon glyphicon-user" aria-hidden="true"></span><a class="use1" data-toggle="modal" data-target="#myModal4" href="#">Đăng ký<span style="margin: 0 5px;">|</span>Đăng nhập</a>
                        </c:otherwise>
                    </c:choose>
            </li>
        </ul>
    </div>
</div>