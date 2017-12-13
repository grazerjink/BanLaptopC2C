<%-- 
    Document   : header
    Created on : Nov 16, 2017, 8:13:34 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="nav-item dropdown ks-user">
    <a class="nav-link v2q-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
        <span class="ks-avatar">
            <img src="assets/merchant/images/user-logo.png" width="36" height="36"/>
        </span>
        <span class="ks-info">
            <span class="ks-name" style="color: #FFF;">${sessionScope['merchant'].hoTen}</span>
            <span class="ks-description" style="color: #FFF;">Số tin đăng: ${soTinDang} tin</span>
        </span>
    </a>
    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="Preview">
        <a class="dropdown-item" href="merchant/thong-tin-ca-nhan/">
            <span class="la la-user ks-icon v2q-icon" aria-hidden="true"></span>
            <span>Thông tin cá nhân</span>
        </a>     
        <a class="dropdown-item" href="merchant/goi-tin/">
            <span class="la la-money ks-icon v2q-icon" aria-hidden="true"></span>
            <span>Mua tin đăng</span>
        </a>
        <a class="dropdown-item" href="merchant/dang-xuat/">
            <span class="la la-sign-out ks-icon v2q-icon" aria-hidden="true"></span>
            <span>Đăng xuất</span>
        </a>
    </div>
</div>
