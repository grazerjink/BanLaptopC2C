<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<jsp:include page="../layout/template/banner.jsp"/>

<div class="">
    
    <div class="container">
        <div>
            <label>Tìm kiếm nâng cao</label>
            <form:form action="tim-kiem-san-pham-nang-cao" method="post" modelAttribute="sanphamVM">
                <label>Tên Sản phẩm</label>
                <form:input path="ten" ></form:input>
                <label>Giá</label>
                <form:select path="gia">
                    <form:option value="0">Tất cả giá</form:option>
                    <form:option value="1">Dưới 20.000.000</form:option>
                    <form:option value="2">Từ 20.000.000 Đến 25.000.000</form:option>
                    <form:option value="3">Từ 25.000.000 Đến 30.000.000</form:option>
                    <form:option value="4">trên 30.000.000</form:option>
                </form:select>
                <label>Hãng sản xuất</label>
                <form:select path="hang">
                        <form:option value="">Tất cả hãng</form:option>
                    <c:forEach items="${dsHangSanXuat}" var="hsx">
                        <form:option value="${hsx.id}">${hsx.tenHang}</form:option>
                    </c:forEach>
                </form:select>
                <label>Người bán</label>
                <form:select path="nguoiBan">
                        <form:option value="0">Tất cả người bán</form:option>
                    <c:forEach items="${dsnguoiban}" var="nb">                       
                        <form:option value="${nb.id}">${nb.tenGianHang}</form:option>
                    </c:forEach>
                </form:select>
                <div class="">
                <form:button  value="Tìm kiếm">Tìm kiếm</form:button>
                </div>
            </form:form>
                
        </div>
        <c:if test="${dssanphamkt != null}">
            <c:forEach items="${dssanphamkt}" var="sp">
        <div class="col-md-3 product-men" style="margin-bottom: 20px;">
            <div class="men-pro-item simpleCart_shelfItem">
                <div class="men-thumb-item">
                    <img src="assets/merchant/images/products/${sp.hinhAnhSanPhamList[0].tenHinh}" alt="" class="pro-image-front">
                    <img src="assets/merchant/images/products/${sp.hinhAnhSanPhamList[1].tenHinh}" alt="" class="pro-image-back">
                    <div class="men-cart-pro">
                        <div class="inner-men-cart-pro">
                            <a href="chi-tiet/${sp.id}" class="link-product-add-cart">Xem chi tiết</a>
                        </div>
                    </div>
                    <span class="product-new-top">New</span>
                </div>
                <div class="item-info-product ">    
                    <h4><a href="chi-tiet/${sp.id}">${sp.tenMay}</a></h4>
                    <div class="v2q-product-price">
                        <span class="item_price"><fmt:formatNumber value="${sp.giaBan}" pattern="###,###" /></span>
                    </div>
                    <span class="v2q-product-shop" style="font-size: 1em">${sp.idNguoiBan.tenGianHang}</span>
                    <div class="v2q-rating">
                        <span class="v2q-star fa fa-star"></span>
                        <span class="v2q-star fa fa-star"></span>
                        <span class="v2q-star fa fa-star"></span>
                        <span class="v2q-star fa fa-star"></span>
                        <span class="v2q-star fa fa-star"></span>
                    </div>
                    <a class="item_add single-item hvr-outline-out button2 v2q-btn-buy" data-prod-id="${sp.id}">Thêm giỏ hàng</a>									
                </div>
            </div>
        </div>
    </c:forEach>
            
            </c:if>
        
    </div>
    
</div>


<jsp:include page="../layout/template/go-to-top.jsp"/>
