<%-- 
    Document   : trang-danh-sach-san-pham
    Created on : Dec 6, 2017, 2:01:43 PM
    Author     : Winson Mac
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="ks-header">
    <section class="ks-title-and-subtitle">
        <div class="ks-title-block">
            <h3 class="ks-main-title">Danh sách sản phẩm đang đăng bán</h3>
        </div>
    </section>
</div>
<div class="ks-content">
    <div class="ks-body">
        <div class="container-fluid">
            <div class="row mb-5">
                <c:forEach items="${dsSanPham}" var="sp">
                    <div class="col-lg-3" style="margin-bottom: 20px;">
                        <div class="card v2q-card">    
                            <div class="card-block">
                                <img class="v2q-item-image" src="assets/merchant/images/products/${sp.hinhAnhSanPhamList[0].tenHinh}">
                                <p class="v2q-item-title overflow ellipsis">${sp.tenMay}</p>
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
            </div>

        </div>
    </div>
</div>
<script>
    $(function () {
    <c:if test="${param.success != null && fn:length(param.success)>0}">
        showSuccessToast("${param.success}");
    </c:if>
    <c:if test="${param.error != null && fn:length(param.success)>0}">
        showErrorToast("${param.error}");
    </c:if>
    });
</script>