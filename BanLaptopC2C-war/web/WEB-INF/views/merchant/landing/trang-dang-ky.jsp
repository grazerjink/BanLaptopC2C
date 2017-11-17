<%-- 
    Document   : signup.jsp
    Created on : Nov 14, 2017, 11:31:11 AM
    Author     : Winson Mac
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="assets/merchant/css/my-custom-styles.css" rel="stylesheet" type="text/css"/>
<jsp:include page="../layout/landing/landing-header.jsp"/>
<div class="ks-body">
    <!-- Begin login form -->
    <div class="v2q-login col-md-5 col-sm-5">
        <div class="card panel panel-default ks-light ks-panel ks-login v2q-panel">
            <div class="card-block">
                <div class="ks-logo v2q-logo" style="font-size: 70px;">V2Q MALL</div>
                <form:form cssClass="form-container" action="merchant/dang-ky/" method="POST" modelAttribute="nguoiBan">
                    <h4 class="text-center" style="font-size: 20px; font-weight: 500;">Đăng ký gian hàng kinh doanh</h4>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="hoTen" cssClass="form-control" placeholder="Họ tên người bán"/>
                            <span class="icon-addon">
                                <span class="la la-user"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="cmnd" cssClass="form-control" placeholder="Số chứng minh nhân dân"/>
                            <span class="icon-addon">
                                <span class="la la-credit-card"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="soDienThoai" cssClass="form-control" placeholder="Số điện thoại liên lạc"/>
                            <span class="icon-addon">
                                <span class="la la-phone"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:select  id="thanhPho" cssClass="form-control" path="idThanhPho.id" style="padding-left: 35px;">
                                <option disabled selected>Chọn Tỉnh/Thành phố</option>
                                <form:options items="${dsThanhPho}" itemValue="id" itemLabel="tenThanhPho"/>
                            </form:select>
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:select id="quanHuyen" cssClass="form-control" path="idQuanHuyen.id" style="padding-left: 35px;">
                                <option disabled selected>Chọn Quận/Huyện</option>
                            </form:select>
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:select id="phuongXa" cssClass="form-control" path="idPhuongXa.id" style="padding-left: 35px;">
                                <option disabled selected>Chọn Phường/Xã</option>
                            </form:select>
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="diaChi" cssClass="form-control" placeholder="Địa chỉ kinh doanh"/>
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="email" cssClass="form-control" placeholder="Email"/>
                            <span class="icon-addon">
                                <span class="la la-at"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="matKhau" cssClass="form-control" type="password" placeholder="Mật khẩu" />
                            <span class="icon-addon">
                                <span class="la la-unlock-alt"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="matKhauXacNhan" type="password" cssClass="form-control" placeholder="Mật khẩu xác nhận"/>
                            <span class="icon-addon">
                                <span class="la la-unlock"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-signup">Đăng ký</button>
                    </div>
                    <div class="ks-text-center">
                        <span class="text-muted">Nhấp vào nút "Đăng ký" bằng việc đồng ý </span>
                        <p><a href="/">Điều khoản dịch vụ của chúng tôi</a></p>
                    </div>
                    <div class="ks-text-center">
                        Đã có tài khoản rồi? <a href="merchant/dang-nhap/">Đăng nhập</a>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
    <!-- End login form -->
</div>
<jsp:include page="../layout/landing/landing-footer.jsp"/>

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

        <c:if test="${error != null}">
            showErrorToast("${error}");
        </c:if>
    });
</script>