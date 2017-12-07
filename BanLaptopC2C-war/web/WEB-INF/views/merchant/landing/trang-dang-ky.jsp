<%-- 
    Document   : signup.jsp
    Created on : Nov 14, 2017, 11:31:11 AM
    Author     : Winson Mac
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
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
<jsp:include page="../layout/landing/landing-header.jsp"/>
<div class="ks-body">
    <!-- Begin login form -->
    <div class="v2q-login col-sm-12 col-md-10 col-lg-6">
        <div class="card panel panel-default ks-light ks-panel ks-login v2q-panel">
            <div class="card-block">
                <div class="ks-logo v2q-logo" style="font-size: 70px;">V2Q MALL</div>
                <form:form cssClass="form-container" action="merchant/dang-ky/" method="POST" modelAttribute="nguoiBan">
                    <h4 class="text-center" style="font-size: 20px; font-weight: 500;">Đăng ký gian hàng kinh doanh</h4>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="tenGianHang" cssClass="form-control ks-rounded" placeholder="Tên gian hàng"/>
                            <form:errors path="tenGianHang" cssClass="serverError" />
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="hoTen" cssClass="form-control ks-rounded" placeholder="Họ tên người bán"/>
                            <form:errors path="hoTen" cssClass="serverError" />
                            <span class="icon-addon">
                                <span class="la la-user"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="cmnd" cssClass="form-control ks-rounded" placeholder="Số chứng minh nhân dân"/>
                            <form:errors path="cmnd" cssClass="serverError" />
                            <span class="icon-addon">
                                <span class="la la-credit-card"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="soDienThoai" cssClass="form-control ks-rounded" placeholder="Số điện thoại liên lạc"/>
                            <form:errors path="soDienThoai" cssClass="serverError" />
                            <span class="icon-addon">
                                <span class="la la-phone"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:select  id="thanhPho" cssClass="form-control ks-rounded" path="idThanhPho.id" style="padding-left: 35px;">
                                <option disabled selected>Chọn Tỉnh/Thành phố</option>
                                <form:options items="${dsThanhPho}" itemValue="id" itemLabel="tenThanhPho"/>
                            </form:select>
                            <form:errors path="idThanhPho" cssClass="serverError"/> 
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:select id="quanHuyen" cssClass="form-control ks-rounded" path="idQuanHuyen.id" style="padding-left: 35px;">
                                <option disabled selected>Chọn Quận/Huyện</option>
                            </form:select>
                            <form:errors path="idQuanHuyen" cssClass="serverError"/>
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:select id="phuongXa" cssClass="form-control ks-rounded" path="idPhuongXa.id" style="padding-left: 35px;">
                                <option disabled selected>Chọn Phường/Xã</option>
                            </form:select>
                            <form:errors path="idPhuongXa" cssClass="serverError"/>  
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="diaChi" cssClass="form-control ks-rounded" placeholder="Địa chỉ kinh doanh"/>
                            <form:errors path="diaChi" cssClass="serverError"/>
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="email" cssClass="form-control ks-rounded" placeholder="Email"/>
                            <form:errors path="email" cssClass="serverError"/>   
                            <span class="icon-addon">
                                <span class="la la-at"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="matKhau" cssClass="form-control ks-rounded" type="password" placeholder="Mật khẩu" />
                            <form:errors path="matKhau" cssClass="serverError"/>
                            <span class="icon-addon">
                                <span class="la la-unlock-alt"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="matKhauXacNhan" type="password" cssClass="form-control ks-rounded" placeholder="Mật khẩu xác nhận"/>
                            <form:errors path="matKhauXacNhan" cssClass="serverError"/>
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
        $('#thanhPho').change();

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
        $('#quanHuyen').change();
        $("#nguoiBan").validate({
            rules: {
                hoTen: {
                    required: true,
                    pattern: /^[^\d]+$/
                },
                cmnd: {
                    required: true,
                    pattern: /^[0-9]{9,12}$/
                },
                email: {
                    required: true,
                    email: true
                },
                soDienThoai: {
                    required: true,
                    pattern: /^[0-9]{10,11}$/
                },
                diaChi: {
                    required: true
                },
                matKhau: {
                    required: true,
                    pattern: /^[a-zA-Z0-9]{4,20}$/
                },
                matKhauXacNhan: {
                    equalTo: "#matKhau"
                }
            },
            messages: {
                hoTen: {
                    required: "Vui lòng nhập họ tên.",
                    pattern: "Tên không thể nhập ký tự số."
                },
                cmnd: {
                    required: "Vui lòng nhập CMND.",
                    pattern: "Nhập sai định dạng CMND."
                },
                email: {
                    required: "Vui lòng nhập địa chỉ.",
                    email: "Nhập sai định dạng email"
                },
                soDienThoai: {
                    required: "Vui lòng nhập số điện thoại.",
                    pattern: "Nhập sai định dạng số điện thoại."
                },
                diaChi: {
                    required: "Vui lòng nhập địa chỉ."
                },
                matKhau: {
                    required: "Vui lòng nhập mật khẩu.",
                    pattern: "Độ dài ít nhất 4 đến 20 ký tự."
                },
                matKhauXacNhan: {
                    equalTo: "Mật khẩu xác nhận không khớp."
                }
            }
        });

    <c:if test="${error != null}">
        showErrorToast("${error}");
    </c:if>
    <c:if test="${serverErrors != null}">
        showServerErrorToast("${serverErrors}");
    </c:if>
    });
</script>