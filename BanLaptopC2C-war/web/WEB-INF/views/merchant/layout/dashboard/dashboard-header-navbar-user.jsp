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
            <span class="ks-description" style="color: #FFF;">Số tin đăng: 100 tin</span>
        </span>
    </a>
    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="Preview">
        <a class="dropdown-item" href="#">
            <span class="la la-user ks-icon"></span>
            <span>Profile</span>
        </a>
        <a class="dropdown-item" href="#">
            <span class="la la-wrench ks-icon" aria-hidden="true"></span>
            <span>Settings</span>
        </a>
        <a class="dropdown-item" href="#">
            <span class="la la-question-circle ks-icon" aria-hidden="true"></span>
            <span>Help</span>
        </a>
        <a class="dropdown-item" href="#">
            <span class="la la-sign-out ks-icon" aria-hidden="true"></span>
            <span>Logout</span>
        </a>
    </div>
</div>
