<%-- 
    Document   : tab-hang-moi
    Created on : Dec 6, 2017, 10:36:06 PM
    Author     : Winson Mac
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="tab-1 resp-tab-content" aria-labelledby="tab_hang-ban-chay">
    <c:forEach items="${dsSanPham}" var="sp">
        <div class="col-md-3 product-men" style="margin-bottom: 20px;">
            <div class="men-pro-item simpleCart_shelfItem">
                <div class="men-thumb-item">
                    <img width="100%" height="230" src="assets/merchant/images/products/${sp.hinhAnhSanPhamList[0].tenHinh}" alt="" class="pro-image-front">
                    <img width="100%" height="230" src="assets/merchant/images/products/${sp.hinhAnhSanPhamList[1].tenHinh}" alt="" class="pro-image-back">
                    <div class="men-cart-pro">
                        <div class="inner-men-cart-pro">
                            <a href="chi-tiet/${sp.id}" class="link-product-add-cart">Xem chi tiết</a>
                        </div>
                    </div>
                    <span class="product-new-top">New</span>
                </div>
                <div class="item-info-product ">                                    
                    <div class="rating1">
                        <span class="starRating">
                            <input id="rating5" readonly type="radio" name="rating" value="5">
                            <label for="rating5">5</label>
                            <input id="rating4" readonly type="radio" name="rating" value="4" checked>
                            <label for="rating4">4</label>
                            <input id="rating3" readonly type="radio" name="rating" value="3">
                            <label for="rating3">3</label>
                            <input id="rating2" readonly type="radio" name="rating" value="2">
                            <label for="rating2">2</label>
                            <input id="rating1" readonly type="radio" name="rating" value="1">
                            <label for="rating1">1</label>
                        </span>
                    </div>
                    <h4><a href="chi-tiet/${sp.id}">${sp.tenMay}</a></h4>
                    <div class="info-product-price">
                        <span class="item_price"><fmt:formatNumber value="${sp.giaBan}" pattern="###,###" /> VNĐ</span>
                        <del><fmt:formatNumber value="${sp.giaBan + 500000}" pattern="###,###" /> VNĐ</del>
                    </div>
                    <a href="#" class="item_add single-item hvr-outline-out button2">Thêm giỏ hàng</a>									
                </div>
            </div>
        </div>
    </c:forEach>
    <c:forEach items="${dsSanPham}" var="sp">
        <div class="col-md-3 product-men" style="margin-bottom: 20px;">
            <div class="men-pro-item simpleCart_shelfItem">
                <div class="men-thumb-item">
                    <img width="100%" height="230" src="assets/merchant/images/products/${sp.hinhAnhSanPhamList[0].tenHinh}" alt="" class="pro-image-front">
                    <img width="100%" height="230" src="assets/merchant/images/products/${sp.hinhAnhSanPhamList[1].tenHinh}" alt="" class="pro-image-back">
                    <div class="men-cart-pro">
                        <div class="inner-men-cart-pro">
                            <a href="chi-tiet/${sp.id}" class="link-product-add-cart">Xem chi tiết</a>
                        </div>
                    </div>
                    <span class="product-new-top">New</span>
                </div>
                <div class="item-info-product ">                                    
                    <div class="rating1">
                        <span class="starRating">
                            <input id="rating5" readonly type="radio" name="rating" value="5">
                            <label for="rating5">5</label>
                            <input id="rating4" readonly type="radio" name="rating" value="4" checked>
                            <label for="rating4">4</label>
                            <input id="rating3" readonly type="radio" name="rating" value="3">
                            <label for="rating3">3</label>
                            <input id="rating2" readonly type="radio" name="rating" value="2">
                            <label for="rating2">2</label>
                            <input id="rating1" readonly type="radio" name="rating" value="1">
                            <label for="rating1">1</label>
                        </span>
                    </div>
                    <h4><a href="chi-tiet/${sp.id}">${sp.tenMay}</a></h4>
                    <div class="info-product-price">
                        <span class="item_price"><fmt:formatNumber value="${sp.giaBan}" pattern="###,###" /> VNĐ</span>
                        <del><fmt:formatNumber value="${sp.giaBan + 500000}" pattern="###,###" /> VNĐ</del>
                    </div>
                    <a href="#" class="item_add single-item hvr-outline-out button2">Thêm giỏ hàng</a>									
                </div>
            </div>
        </div>
    </c:forEach>
    <c:forEach items="${dsSanPham}" var="sp">
        <div class="col-md-3 product-men" style="margin-bottom: 20px;">
            <div class="men-pro-item simpleCart_shelfItem">
                <div class="men-thumb-item">
                    <img width="100%" height="230" src="assets/merchant/images/products/${sp.hinhAnhSanPhamList[0].tenHinh}" alt="" class="pro-image-front">
                    <img width="100%" height="230" src="assets/merchant/images/products/${sp.hinhAnhSanPhamList[1].tenHinh}" alt="" class="pro-image-back">
                    <div class="men-cart-pro">
                        <div class="inner-men-cart-pro">
                            <a href="chi-tiet/${sp.id}" class="link-product-add-cart">Xem chi tiết</a>
                        </div>
                    </div>
                    <span class="product-new-top">New</span>
                </div>
                <div class="item-info-product ">                                    
                    <div class="rating1">
                        <span class="starRating">
                            <input id="rating5" readonly type="radio" name="rating" value="5">
                            <label for="rating5">5</label>
                            <input id="rating4" readonly type="radio" name="rating" value="4" checked>
                            <label for="rating4">4</label>
                            <input id="rating3" readonly type="radio" name="rating" value="3">
                            <label for="rating3">3</label>
                            <input id="rating2" readonly type="radio" name="rating" value="2">
                            <label for="rating2">2</label>
                            <input id="rating1" readonly type="radio" name="rating" value="1">
                            <label for="rating1">1</label>
                        </span>
                    </div>
                    <h4><a href="chi-tiet/${sp.id}">${sp.tenMay}</a></h4>
                    <div class="info-product-price">
                        <span class="item_price"><fmt:formatNumber value="${sp.giaBan}" pattern="###,###" /> VNĐ</span>
                        <del><fmt:formatNumber value="${sp.giaBan + 500000}" pattern="###,###" /> VNĐ</del>
                    </div>
                    <a href="#" class="item_add single-item hvr-outline-out button2">Thêm giỏ hàng</a>									
                </div>
            </div>
        </div>
    </c:forEach>
    <c:forEach items="${dsSanPham}" var="sp">
        <div class="col-md-3 product-men" style="margin-bottom: 20px;">
            <div class="men-pro-item simpleCart_shelfItem">
                <div class="men-thumb-item">
                    <img width="100%" height="230" src="assets/merchant/images/products/${sp.hinhAnhSanPhamList[0].tenHinh}" alt="" class="pro-image-front">
                    <img width="100%" height="230" src="assets/merchant/images/products/${sp.hinhAnhSanPhamList[1].tenHinh}" alt="" class="pro-image-back">
                    <div class="men-cart-pro">
                        <div class="inner-men-cart-pro">
                            <a href="chi-tiet/${sp.id}" class="link-product-add-cart">Xem chi tiết</a>
                        </div>
                    </div>
                    <span class="product-new-top">New</span>
                </div>
                <div class="item-info-product ">                                    
                    <div class="rating1">
                        <span class="starRating">
                            <input id="rating5" readonly type="radio" name="rating" value="5">
                            <label for="rating5">5</label>
                            <input id="rating4" readonly type="radio" name="rating" value="4" checked>
                            <label for="rating4">4</label>
                            <input id="rating3" readonly type="radio" name="rating" value="3">
                            <label for="rating3">3</label>
                            <input id="rating2" readonly type="radio" name="rating" value="2">
                            <label for="rating2">2</label>
                            <input id="rating1" readonly type="radio" name="rating" value="1">
                            <label for="rating1">1</label>
                        </span>
                    </div>
                    <h4><a href="chi-tiet/${sp.id}">${sp.tenMay}</a></h4>
                    <div class="info-product-price">
                        <span class="item_price"><fmt:formatNumber value="${sp.giaBan}" pattern="###,###" /> VNĐ</span>
                        <del><fmt:formatNumber value="${sp.giaBan + 500000}" pattern="###,###" /> VNĐ</del>
                    </div>
                    <a href="#" class="item_add single-item hvr-outline-out button2">Thêm giỏ hàng</a>									
                </div>
            </div>
        </div>
    </c:forEach>

    <div class="clearfix"></div>						
</div>
