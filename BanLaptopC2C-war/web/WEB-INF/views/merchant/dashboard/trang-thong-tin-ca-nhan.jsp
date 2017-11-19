<%-- 
    Document   : trang-thong-tin-ca-nhan
    Created on : Nov 19, 2017, 6:43:57 PM
    Author     : Winson Mac
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="merchant" scope="session" value="${sessionScope['merchant']}"/>

<link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/datatables-net/media/css/dataTables.bootstrap4.min.css"> <!-- original -->
<link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/libs/datatables-net/datatables.min.css">  <!-- customization -->
<link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/swiper/css/swiper.min.css"> <!-- original -->
<link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/widgets/tables.min.css">
<link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/profile/customer.min.css">

<style>
    .v2q-user-panel {
        margin-top: 20px;
        margin-bottom: 20px;
    }
    .v2q-statistics-panel {  
        margin-left: 10px;
        margin-bottom: 20px;
    }
    .ks-profile>.ks-header>.ks-statistics .ks-item {
        margin-right: 0px;
        margin-top: 20px;
    }
    .v2q-user-panel img {
        margin-top: 20px;
    }
    .v2q-user-panel .ks-info .ks-name span {
        font-size: 22px;
    }
    .v2q-save:hover {
        background-color: #FFECB3;
        color: #FDA30E;
    }
    .v2q-save:active {
        background-color: #FDA30E;
        color: #FFF;
    }
    .v2q-item .v2q-amount span{
        font-size: 1.5em;
        color: #FDA30E;
    }
    .v2q-item .v2q-text span {
        font-size: 1.2em;
    }
    .v2q-input-wrapper {
        position: relative;
    }
    .v2q-input {
        position: absolute;
        left: 0;
        top: -8px;
        padding-left: 50px;
        font-size: .98em;
    }
    .v2q-input-wrapper .icon-addon {
        position: absolute;
        left: 5px;
        top: -4px;
        z-index: 1;
        border-radius: 15px;
        width: 30px;
        height: 30px;
        text-align: center;        
    }
    .form-control:hover {
        border-color: #FFC237;
    }
    .form-control:focus {
        border-color: #FDA30E;
    }
    .form-control:focus:hover{
        border-color: #FDA30E;
        box-shadow: none;
    }
    .v2q-input-wrapper .icon-addon span {
        font-size: 20px;
        line-height: 30px;
        color: #FDA30E;
    } 
</style>
<div class="ks-header">
    <section class="ks-title">
        <h3>Thông tin cá nhân</h3>
    </section>
</div>
<div class="ks-content">
    <div class="ks-body ks-profile">
        <div class="ks-header row">
            <div class="ks-user v2q-user-panel col-xs-12 col-sm-6 col-md-5 col-lg-5">
                <img src="assets/merchant/images/user-logo.png" class="ks-avatar" width="100" height="100">
                <div class="ks-info">
                    <div class="ks-name"><span>${merchant.hoTen}</span></div>
                    <div class="ks-description">${merchant.diaChi} ${merchant.idQuanHuyen.tenQuanHuyen}, ${merchant.idPhuongXa.tenPhuongXa}, ${merchant.idThanhPho.tenThanhPho}</div>
                    <div class="ks-rating">
                        <i class="la la-star ks-star" aria-hidden="true"></i>
                        <i class="la la-star ks-star" aria-hidden="true"></i>
                        <i class="la la-star ks-star" aria-hidden="true"></i>
                        <i class="la la-star ks-star" aria-hidden="true"></i>
                        <i class="la la-star-half-o ks-star" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
            <div class="ks-statistics v2q-statistics-panel col-xs-12 col-sm-6 col-md-6 col-lg-6 row">
                <div class="ks-item v2q-item col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <div class="ks-amount v2q-amount"><span>869</span></div>
                    <div class="ks-text v2q-text"><span>lần đăng tin</span></div>
                </div>
                <div class="ks-item v2q-item col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <div class="ks-amount v2q-amount"><span>131</span></div>
                    <div class="ks-text v2q-text"><span>lần đánh giá</span></div>
                </div>
                <div class="ks-item v2q-item col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <div class="ks-amount v2q-amount"><span>3</span></div>
                    <div class="ks-text v2q-text"><span>lần vi phạm</span></div>
                </div>
            </div>
        </div>
        <div class="ks-tabs-container ks-tabs-default ks-tabs-no-separator ks-full ks-light">
            <ul class="nav ks-nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" href="#" data-toggle="tab" data-target="#chinhsua" aria-expanded="false">Thông tin</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" data-toggle="tab" data-target="#doimatkhau" aria-expanded="false">Đổi mật khẩu</a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="chinhsua" role="tabpanel" aria-expanded="false">
                    <form:form action="merchant/cap-nhat-thong-tin" method="POST" modelAttribute="nguoiBan">                       
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Họ tên: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:input path="hoTen" cssClass="form-control ks-rounded v2q-input" value="${merchant.hoTen}"/>
                            </div>
                        </div>    
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label ">Giấy CMND: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                <input class="form-control ks-rounded v2q-input" readonly value="${merchant.cmnd}">
                                <form:hidden path="cmnd"/>
                            </div>
                        </div> 
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label ">Email: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                <input class="form-control ks-rounded v2q-input" readonly value="${merchant.email}"/>
                                <form:hidden path="email"/>
                            </div>
                        </div> 
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label ">Số điện thoại: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:input path="soDienThoai" cssClass="form-control ks-rounded v2q-input" value="${merchant.soDienThoai}"/>
                            </div>
                        </div> 
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label ">Địa chỉ: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:input path="diaChi" cssClass="form-control ks-rounded v2q-input" value="${merchant.diaChi}"/>
                            </div>
                        </div> 
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label ">Quận / Huyện: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select id="quanHuyen" cssClass="form-control ks-rounded v2q-input" path="idQuanHuyen.id">
                                    <option disabled selected>Chọn Quận/Huyện</option>
                                </form:select>
                            </div>
                        </div> 
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label ">Phường / Xã: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select  id="phuongXa" cssClass="form-control ks-rounded v2q-input" path="idPhuongXa.id" >
                                    <option disabled selected>Chọn Phường/Xã</option>
                                </form:select>
                            </div>
                        </div> 
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label ">Tỉnh / Thành phố: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select  id="thanhPho" cssClass="form-control ks-rounded v2q-input" path="idThanhPho.id" >
                                    <option disabled selected>Chọn Tỉnh/Thành phố</option>
                                    <form:options items="${dsThanhPho}" itemValue="id" itemLabel="tenThanhPho"/>
                                </form:select>
                            </div>
                        </div> 
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label ">Ngày đăng ký: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <fmt:formatDate var="ngayDangKy" value="${merchant.ngayDangKy}" pattern="dd / MM / yyyy" />
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                <input class="form-control ks-rounded v2q-input" readonly value="${ngayDangKy}">
                                <form:hidden path="ngayDangKy"/>
                            </div>
                        </div> 
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Tài khoản: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                <input class="form-control ks-rounded v2q-input" readonly value="Đã kích hoạt"/>
                                <form:hidden path="kichHoat"/>
                            </div>
                        </div> 
                        <div class="form-group row">
                            <div class="col-sm-8">
                                <button class="pull-right btn btn-warning-outline ks-rounded v2q-save">Lưu thay đổi</button>
                            </div>
                        </div> 
                    </form:form>
                </div>
                <div class="tab-pane" id="doimatkhau" role="tabpanel" aria-expanded="false">
                    Đổi mật khẩu
                </div>
            </div>
        </div>
    </div>
</div>
<script src="assets/merchant/template/libs/datatables-net/media/js/jquery.dataTables.min.js"></script>
<script src="assets/merchant/template/libs/datatables-net/media/js/dataTables.bootstrap4.min.js"></script>
<script src="assets/merchant/template/libs/swiper/js/swiper.jquery.min.js"></script>
<script type="application/javascript">
    (function ($) {
    $(document).ready(function() {
    var salesDatatable = $('#ks-sales-datatable').DataTable({
    dom: 'rtip',
    pageLength: 4
    });

    var swiper = new Swiper ('.swiper-container', {
    paginationClickable: true,
    slidesPerView: 5,
    spaceBetween: 20,
    pagination: '.swiper-pagination',
    autoResize: true,
    breakpoints: {
    1024: {
    slidesPerView: 5,
    spaceBetween: 40
    },
    768: {
    slidesPerView: 3,
    spaceBetween: 30
    },
    640: {
    slidesPerView: 2,
    spaceBetween: 20
    },
    320: {
    slidesPerView: 1,
    spaceBetween: 10
    }
    }
    });
    });
    })(jQuery);
</script>
