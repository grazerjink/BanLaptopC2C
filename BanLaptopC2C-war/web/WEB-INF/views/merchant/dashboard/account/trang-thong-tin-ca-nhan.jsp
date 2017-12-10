<%-- 
    Document   : trang-thong-tin-ca-nhan
    Created on : Nov 19, 2017, 6:43:57 PM
    Author     : Winson Mac
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<c:set var="merchant" scope="session" value="${sessionScope['merchant']}"/>

<link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/datatables-net/media/css/dataTables.bootstrap4.min.css"> <!-- original -->
<link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/libs/datatables-net/datatables.min.css">  <!-- customization -->
<link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/swiper/css/swiper.min.css"> <!-- original -->
<link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/widgets/tables.min.css">
<link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/profile/customer.min.css">

<div class="ks-header">
    <section class="ks-title-and-subtitle">
        <div class="ks-title-block">
            <h3 class="ks-main-title">Thông tin cá nhân</h3>
        </div>
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
                    <div class="ks-amount v2q-amount"><span>${merchant.soLanDangTin}</span></div>
                    <div class="ks-text v2q-text"><span>lần đăng tin</span></div>
                </div>
                <div class="ks-item v2q-item col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <div class="ks-amount v2q-amount"><span>${merchant.soLanDanhGia}</span></div>
                    <div class="ks-text v2q-text"><span>lần đánh giá</span></div>
                </div>
                <div class="ks-item v2q-item col-xs-12 col-sm-4 col-md-4 col-lg-4">
                    <div class="ks-amount v2q-amount"><span>${merchant.soLanCanhCao}</span></div>
                    <div class="ks-text v2q-text"><span>lần vi phạm</span></div>
                </div>
            </div>
        </div>
        <div class="ks-tabs-container ks-tabs-default ks-tabs-no-separator ks-full ks-light">
            <ul class="nav ks-nav-tabs">
                <li class="nav-item">
                    <a class="nav-link ${(param.tab==null || param.tab==1)?'active':''}" href="#" data-toggle="tab" data-target="#chinhsua" aria-expanded="true">Thông tin</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${param.tab==2?'active':''}" href="#" data-toggle="tab" data-target="#lich-su-su-dung-tin" aria-expanded="false">Lịch sử sử dụng tin</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link ${param.tab==3?'active':''}" href="#" data-toggle="tab" data-target="#doimatkhau" aria-expanded="false">Đổi mật khẩu</a>
                </li>
            </ul>
            <div class="tab-content">           
                <jsp:include page="cap-nhat-thong-tin.jsp" />
                <jsp:include page="lich-su-su-dung-tin.jsp" />
                <jsp:include page="doi-mat-khau.jsp" />
            </div>
        </div>
    </div>
</div>
<script>
    $(function () {
    <c:if test="${param.success!=null && fn:length(param.success)>0}">
        showSuccessToast("${param.success}");
    </c:if>
    <c:if test="${param.error!=null && fn:length(param.error)>0}">
        showErrorToast("${param.error}");
    </c:if>
    <c:if test="${param.serverErrors!=null && fn:length(param.serverErrors)>0}">
        showServerErrorToast("${param.serverErrors}");
    </c:if>
    <c:if test="${param.tab != null && param.tab == 1}">
        $("#chinhsua").addClass("active");
        $("#lich-su-su-dung-tin").removeClass("active");
        $("#doimatkhau").removeClass("active");
    </c:if>
    <c:if test="${param.tab != null && param.tab == 2}">
        $("#chinhsua").removeClass("active");
        $("#lich-su-su-dung-tin").addClass("active");
        $("#doimatkhau").removeClass("active");
    </c:if>
    <c:if test="${param.tab != null && param.tab == 3}">
        $("#chinhsua").removeClass("active");
        $("#lich-su-su-dung-tin").removeClass("active");
        $("#doimatkhau").addClass("active");
    </c:if>
    });
</script>           
