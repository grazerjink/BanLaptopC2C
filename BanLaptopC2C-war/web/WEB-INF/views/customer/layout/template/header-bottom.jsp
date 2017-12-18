<%-- 
    Document   : header-bottom
    Created on : Dec 10, 2017, 3:52:18 PM
    Author     : Winson Mac
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="header-bot">
    <div class="container">
        <div class="col-md-3 header-left">
            <h1><a href=""><img src="assets/customer/images/v2q-logo.png"></a></h1>
        </div>
        <div class="col-md-6 header-middle">
            <form action="tim-kiem-san-pham/" method="post">
                <div class="search">
                    <input id="tensp" name="tensp" type="search" value="" placeholder="Nhập sản phẩm muốn tìm" onfocus="this.value = '';"required="">
                </div>
                <div class="section_room">
                    <select id="country" name="country" onchange="change_country(this.value)" class="frm-field required">
                        <option value="">Chọn tất cả</option>
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
        <!-- SHOPPING CART -->
        <jsp:include page="shopping-cart.jsp" />
        <!-- SHOPPING CART -->
        <div class="clearfix"></div>
    </div>
</div>
