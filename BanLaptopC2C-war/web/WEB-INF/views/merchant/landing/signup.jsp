<%-- 
    Document   : signup.jsp
    Created on : Nov 14, 2017, 11:31:11 AM
    Author     : Winson Mac
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link href="assets/merchant/css/my-customer.css" rel="stylesheet" type="text/css"/>
<jsp:include page="../layout/landing-header.jsp"/>
<div class="ks-body">
    <!-- Begin login form -->
    <div class="v2q-login col-md-5 col-sm-5">
        <div class="card panel panel-default ks-light ks-panel ks-login v2q-panel">
            <div class="card-block">
                <div class="ks-logo v2q-logo" style="font-size: 70px;">V2Q MALL</div>
                <form class="form-container">
                    <h4 class="text-center" style="font-size: 20px; font-weight: 500;">Đăng ký gian hàng kinh doanh</h4>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <input type="text" class="form-control" placeholder="Họ tên người bán">
                            <span class="icon-addon">
                                <span class="la la-user"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <input type="text" class="form-control" placeholder="Số chứng minh nhân dân">
                            <span class="icon-addon">
                                <span class="la la-credit-card"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <input type="text" class="form-control" placeholder="Số điện thoại liên lạc">
                            <span class="icon-addon">
                                <span class="la la-phone"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <select id="thanhPho" class="form-control" style="padding-left: 35px;">
                                <option disabled selected>Chọn Tỉnh/Thành phố</option>
                                <c:forEach var="tp" items="${dsThanhPho}">
                                    <option value="${tp.id}">${tp.tenThanhPho}</option>
                                </c:forEach>
                            </select>
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <select id="quanHuyen" class="form-control" style="padding-left: 35px;">
                                <option disabled selected>Chọn Quận/Huyện</option>
                            </select>
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <select id="phuongXa" class="form-control" style="padding-left: 35px;">
                                <option disabled selected>Chọn Phường/Xã</option>
                            </select>
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <input type="text" class="form-control" placeholder="Địa chỉ kinh doanh">
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <input type="text" class="form-control" placeholder="Email">
                            <span class="icon-addon">
                                <span class="la la-at"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <input type="password" class="form-control" placeholder="Mật khẩu">
                            <span class="icon-addon">
                                <span class="la la-unlock-alt"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <input type="password" class="form-control" placeholder="Mật khẩu xác nhận">
                            <span class="icon-addon">
                                <span class="la la-unlock"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-signup">Đăng ký</button>
                    </div>
                    <div class="ks-text-center">
                        <span class="text-muted">Nhấp vào nút "Đăng ký" bằng việc đồng ý </span>
                        <p><a href="pages-signup.html">Điều khoản dịch vụ của chúng tôi</a></p>
                    </div>
                    <div class="ks-text-center">
                        Đã có tài khoản rồi? <a href="pages-login.html">Đăng nhập</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- End login form -->
</div>
<jsp:include page="../layout/landing-footer.jsp"/>

<script>
    $(function () {
        /// Goi ajax lay danh sach quan huyen theo thanh pho khi nhan chon
        $('#thanhPho').change(function () {
            $.ajax({
                url: "merchant/ds-quanhuyen-theo-tp/",
                dataType: "json",
                data: {
                    id: $(this).val()
                },
                success: function (res) {
                    $("#quanHuyen").html(res);
                }
            });
        });

        $('#quanHuyen').change(function () {
            $.ajax({
                url: "merchant/ds-phuongxa-theo-quanhuyen/",
                dataType: "json",
                data: {
                    id: $(this).val()
                },
                success: function (res) {
                    $("#phuongXa").html(res);
                }
            });
        }); 
    });
</script>