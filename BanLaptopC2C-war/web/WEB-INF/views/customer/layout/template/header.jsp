<%-- 
    Document   : header
    Created on : Nov 7, 2017, 12:17:43 PM
    Author     : Winson Mac
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set value="${sessionScope.customer}" var="customer" scope="session"/>
<style>
    .v2q-user {
        position: relative;
    }
    .v2q-user-popup {
        cursor: pointer;

    }
    .v2q-user-popup .user-email {
        color: #848484;
    }
    .v2q-user-popup .user-email:hover {
        color: #FDA30E;
    }
    .v2q-cart-container {
        position: relative;
        cursor: pointer;
        width: 17.5%;
        float: right;
    }
    .v2q-cart-container .v2q-quantity {
        position: absolute;
        right: -12px;
        top: 5px;
        border-radius: 12px;
    }
</style>
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
<!-- header-bot -->
<div class="header-bot">
    <div class="container">
        <div class="col-md-3 header-left">
            <h1><a href="index/"><img src="assets/customer/template/images/logo3.jpg"></a></h1>
        </div>
        <div class="col-md-6 header-middle">
            <form>
                <div class="search">
                    <input type="search" value="Tìm sản phẩm theo hãng" onfocus="this.value = '';" onblur="if (this.value == '') {
                                this.value = 'Tìm sản phẩm theo hãng';
                            }" required="">
                </div>
                <div class="section_room">
                    <select id="country" onchange="change_country(this.value)" class="frm-field required">
                        <option value="null">Chọn tất cả</option>
                        <c:forEach items="${dsHangSanXuat}" var="hsx"> 
                            <option value="${hsx.id}">${hsx.tenHang}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="sear-sub">
                    <input type="submit" value=" ">
                </div>
                <div class="clearfix"></div>
            </form>
        </div>        
        <div class="col-md-3 header-right footer-bottom">
            <!--            <ul>
                            <li><a href="#" class="use1" data-toggle="modal" data-target="#myModal4"><span>Login</span></a>
            
                            </li>
                            <li><a class="fb" href="#"></a></li>
                            <li><a class="twi" href="#"></a></li>
                            <li><a class="insta" href="#"></a></li>
                            <li><a class="you" href="#"></a></li>
                        </ul>-->
            <div class="v2q-cart-container" style="padding-top: 10px;">
                <i style="color: #FDA30E; font-size: 2.75em;" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
                <div class="v2q-quantity" style="background-color: #faebcc; width: 24px; height: 24px; text-align: center;">
                    <span style="color: #FDA30E; font-size: 1em; font-weight: bolder;">10</span> 
                </div>
            </div>  
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //header-bot -->
<script>
    $(".v2q-cart-container").click(function () {
        setTimeout(function () {
            window.location.href = "gio-hang/";
        }, 200);
    });
</script>