<%-- 
    Document   : dashboard-popup
    Created on : Nov 19, 2017, 1:36:53 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 150px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    position: relative;
    background-color: #fefefe;
    margin: auto;
    padding: 0;
    border: 1px solid #888;
    width: 20%;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
    -webkit-animation-name: animatetop;
    -webkit-animation-duration: 0.4s;
    animation-name: animatetop;
    animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
    from {top:-300px; opacity:0} 
    to {top:0; opacity:1}
}

@keyframes animatetop {
    from {top:-300px; opacity:0}
    to {top:0; opacity:1}
}

/* The Close Button */
.close {
    color: white;
    font-size: 32px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.modal-header {
    padding: 2px 16px;
    background-color: #FDA30E;
    color: white;
    height: 50px;
}
.modal-header div{
    margin-top: 10px;
    font-size: 22px;
    color: #fff;
}

.modal-body {
    padding: 2px 16px;
}
.modal-body p {
    font-size: 14px;
}
.modal-body span {
    margin-left: 30px;
}
.modal-footer {
    padding: 2px 16px;
    background-color: #FFECB3;
    color: white;
}
</style>

<!-- The Modal -->
<div id="myModal" class="modal">
    <!-- Modal content -->
    <div class="modal-content">
        <div class="modal-header">
            <div class="pull-left">Xác nhận gói tin</div>            
            <span class="close pull-right">&times;</span>
        </div>
        <div class="modal-body">
            <p>Tên gói tin: <span id="name" class="pull-right"></span></p>
            <p>Loại gói: <span id="type" class="pull-right"></span></p>
            <p>Số lượng tin: <span id="quantity" class="pull-right"></span></p>
            <p>Giá gói tin: <span id="price" class="pull-right"></span></p>
        </div>
        <hr>
        <div class="modal-footer">
            <a href="" class="pull-right btn btn-sm btn-warning" id="buy-confirm">Xác nhận mua</a>
        </div>
    </div>
</div>

