<%-- 
    Document   : single
    Created on : Nov 7, 2017, 2:58:20 PM
    Author     : Winson Mac
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- single -->
<link rel="stylesheet" href="assets/customer/template/css/flexslider.css" type="text/css" media="screen" />
<script src="assets/customer/template/js/imagezoom.js"></script>
<script src="assets/customer/template/js/jquery.flexslider.js"></script>
<!-- single -->
<style>
    .page-head {
        background: url(assets/customer/images/v2q-single-banner.jpg) no-repeat center;
    }
    .flex-active-slide {
        text-align: center;
    }
    .flexslider .slides img{
        margin: 15px 0;
    }    
    .flex-viewport {
        min-height: 378px;
        max-height: 378px;
        -webkit-transition: all 1s ease;
        -moz-transition: all 1s ease;
        -ms-transition: all 1s ease;
        -o-transition: all 1s ease;
        transition: all 1s ease;
        border: none;
        float: left;
        width: 75%;
        margin-right: 10px;
        border: 1px solid #D1CFCF;        
        text-align: center;
    }    
    .occasion-cart {
        margin-top: 30px;
    }
    .v2q-info-technique {
        padding-top: 5px;
    }
    .v2q-info-technique h5 {
        padding-bottom: 3px;
    }
    .v2q-item-price{
        margin-top: 20px;
    }
    .v2q-item-price > span{
        color: red;
        font-weight: bolder;
        font-size: 2em;
    }
</style>
<!-- banner -->
<div class="page-head">
    <div class="container">
        <h3>Chi tiết sản phẩm</h3>
    </div>
</div>
<!-- //banner -->
<!-- single -->
<div class="single">
    <div class="container">
        <div class="col-md-6 single-right-left animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
            <div class="grid images_3_of_2">
                <div class="flexslider">    
                    <!-- FlexSlider -->
                    <script>
                        $(document).ready(function () {
                            $('.flexslider').flexslider({
                                animation: "slide",
                                controlNav: "thumbnails",
                                startAt: -1
                            });
                        });
                    </script>
                    <!-- //FlexSlider-->
                    <ul class="slides">                        
                        <c:forEach var="h" items="${sp.hinhAnhSanPhamList}">
                            <li data-thumb="assets/merchant/images/products/${h.tenHinh}">
                                <div class="thumb-image">
                                    <img src="assets/merchant/images/products/${h.tenHinh}" data-imagezoom="true" class="img-responsive"> 
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                    <div class="clearfix"></div>
                </div>	
            </div>
        </div>
        <div class="col-md-6 single-right-left simpleCart_shelfItem animated wow slideInRight animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInRight;">
            <h3>${sp.tenMay}</h3>
            <h4 style="margin-top: 10px;">${sp.moTa}</h4>
            <h5 style="margin-top: 20px;">Thông số cơ bản: </h5>
            <div class="v2q-info-technique">
                <h5>Màn hình: 14" LCD FullHD 1820x1980</h5>
                <h5>CPU: Intel Core I5 7582U 2.7GHz 3MB L3 Cache </h5>
                <h5>Ram: 8GB DDR4</h5>
                <h5>VGA: GeForce 980M 2GB</h5>
                <h5>Storage: SSD 256GB</h5>
            </div>
            <div class="v2q-item-price">
                <span class="item_price">Giá: <fmt:formatNumber value="${sp.giaBan}" pattern="###,###"/></span>
            </div>
            <div class="color-quality">
                <div class="color-quality-right">
                    <span>Số lượng: ${sp.tonKho}</span>
                </div>
            </div>
            <div class="occasion-cart">
                <a href="#" class="item_add hvr-outline-out button2">Thêm vào giỏ hàng</a>
            </div>
        </div>
        <div class="clearfix"> </div>

        <div class="bootstrap-tab animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <ul id="myTab" class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Description</a></li>
                    <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Reviews(1)</a></li>
                    <li role="presentation" class="dropdown">
                        <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents">Information <span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
                            <li><a href="#dropdown1" tabindex="-1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1">cleanse</a></li>
                            <li><a href="#dropdown2" tabindex="-1" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2">fanny</a></li>
                        </ul>
                    </li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab">
                        <h5>Product Brief Description</h5>
                        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.
                            <span>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>
                    </div>
                    <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="profile" aria-labelledby="profile-tab">
                        <div class="bootstrap-tab-text-grids">
                            <div class="bootstrap-tab-text-grid">
                                <div class="bootstrap-tab-text-grid-left">
                                    <img src="assets/customer/template/images/men3.jpg" alt=" " class="img-responsive">
                                </div>
                                <div class="bootstrap-tab-text-grid-right">
                                    <ul>
                                        <li><a href="#">Admin</a></li>
                                        <li><a href="#"><span class="glyphicon glyphicon-share" aria-hidden="true"></span>Reply</a></li>
                                    </ul>
                                    <p>Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis 
                                        suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem 
                                        vel eum iure reprehenderit.</p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>

                            <div class="add-review">
                                <h4>add a review</h4>
                                <form>
                                    <input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Name';
                                            }" required="">
                                    <input type="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Email';
                                            }" required="">

                                    <textarea type="text" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Message...';
                                            }" required="">Message...</textarea>
                                    <input type="submit" value="SEND">
                                </form>
                            </div>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown1" aria-labelledby="dropdown1-tab">
                        <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                    </div>
                    <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown2" aria-labelledby="dropdown2-tab">
                        <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //single -->


