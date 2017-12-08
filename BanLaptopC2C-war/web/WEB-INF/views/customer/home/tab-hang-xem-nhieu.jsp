<%-- 
    Document   : tab-hang-moi
    Created on : Dec 6, 2017, 10:36:06 PM
    Author     : Winson Mac
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .item-info-product {
        text-align: center;
        margin-top: 15px;
    }
    .item-info-product h4 {
        min-height: 40px;
        max-height: 40px;
        padding: 0 8px;
        margin-bottom: 10px;
    }
    .v2q-product-price {
        margin: 5px 0;
    }
    .v2q-product-price span {
        color: #000;
        font-size: 20px;
    }
    .product-men .v2q-rating {
        margin-bottom: 15px;
    }
    .product-men .v2q-rating .v2q-star {
        color: #FDA30E;
    }
    .men-thumb-item:hover .inner-men-cart-pro .link-product-add-cart {
        top: 82.5%;
    }
    .men-thumb-item img {
        height: auto;
        width: 100%;
    }
</style>
<div class="tab-1 resp-tab-content" aria-labelledby="tab_hang-xem-nhieu">
    <c:forEach items="${dsSanPham}" var="sp">
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
                    <a class="item_add single-item hvr-outline-out button2">Thêm giỏ hàng</a>									
                </div>
            </div>
        </div>
    </c:forEach>
    <c:forEach items="${dsSanPham}" var="sp">
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
                    <a class="item_add single-item hvr-outline-out button2">Thêm giỏ hàng</a>									
                </div>
            </div>
        </div>
    </c:forEach>
    <c:forEach items="${dsSanPham}" var="sp">
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
                    <a class="item_add single-item hvr-outline-out button2">Thêm giỏ hàng</a>									
                </div>
            </div>
        </div>
    </c:forEach>
    <c:forEach items="${dsSanPham}" var="sp">
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
                    <a class="item_add single-item hvr-outline-out button2">Thêm giỏ hàng</a>									
                </div>
            </div>
        </div>
    </c:forEach>
    <c:forEach items="${dsSanPham}" var="sp">
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
                    <a class="item_add single-item hvr-outline-out button2">Thêm giỏ hàng</a>									
                </div>
            </div>
        </div>
    </c:forEach>
    <div class="clearfix"></div>
</div>