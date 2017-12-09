<%-- 
    Document   : user-dashboard
    Created on : Dec 9, 2017, 12:33:24 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    #user-popup {
        display: none;
        width: 200px;
        height: auto;
        position: absolute; 
        z-index: 1000;
        top: 45px;
        left: 165px;
    }
    .list-group-item {
        text-align: left;
    }
/*    .beeperNub {
        background-image: url(assets/customer/images/angle.png);
        background-repeat: no-repeat;
        height: 15px;
        position: absolute;
        top: -10px;
        width: 20px;        
        right: 5px;
        z-index: 9999;
    }*/
</style>
<div id="user-popup">
    <!--<div class="beeperNub"></div>-->
    <div class="list-group">
        <a href="cap-nhat-thong-tin/" class="list-group-item">Cập nhật thông tin</a>
        <a href="lich-su-giao-dich/" class="list-group-item list-group-item-action">Lịch sử giao dịch</a>
        <a href="doi-mat-khau/" class="list-group-item list-group-item-action">Đổi mật khẩu</a>
        <a href="lien-he/" class="list-group-item list-group-item-action">Liên hệ</a>
        <a href="dang-xuat/" class="list-group-item list-group-item-action">Đăng xuất</a>
    </div>
</div>
