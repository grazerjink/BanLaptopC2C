<%-- 
    Document   : phan-trang
    Created on : Dec 18, 2017, 9:47:50 AM
    Author     : Winson Mac
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:forEach items="${dsSanPham}" var="sp">
    <div class="col-lg-3" style="margin-bottom: 20px;">
        <div class="card v2q-card">    
            <div class="card-block">
                <a href="merchant/thong-tin-san-pham/${sp.id}"><img class="v2q-item-image" src="assets/merchant/images/products/${sp.hinhAnhSanPhamList[0].tenHinh}"></a>
                <a href="merchant/thong-tin-san-pham/${sp.id}"><p class="v2q-item-title overflow ellipsis">${sp.tenMay}</p></a>
                <span>Ngày đăng: <fmt:formatDate value="${sp.ngayDang}" pattern="dd / MM / yyyy"/></span><br>
                <span>Số lượng còn: <span style="font-weight: bolder; font-size: 15px;">${sp.tonKho}</span> (máy)</span>
            </div>
            <div class="card-footer text-muted">
                <c:choose>
                    <c:when test="${sp.anHien == true}">
                        <span style="color: darkorange; font-weight: 500;">Đang được bày bán.</span>
                    </c:when>
                    <c:otherwise>
                        <span style="color: red; font-weight: 500;">Sản phẩm hiện bị khóa.</span>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</c:forEach>
<div class="col-lg-3">
    <div class="card v2q-card v2q-card-add">   
        <img class="v2q-image embed-responsive" src="assets/merchant/images/products/placeholder.png">
        <span>Thêm sản phẩm mới</span>
        <a href="merchant/dang-tin-san-pham/" class="btn btn-flat btn-warning-outline"></a>
    </div>
</div>   