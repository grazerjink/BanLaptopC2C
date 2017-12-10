<%-- 
    Document   : login
    Created on : Nov 7, 2017, 12:31:43 PM
    Author     : Winson Mac
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
            </div>
            <div class="modal-body modal-spa">
                <div class="login-grids">
                    <div class="login">
                        <div class="login-bottom">
                            <h3>Đăng ký nhanh</h3>
                            <form:form modelAttribute="nguoiMua" method="post" action="dang-ky" id="dangKyForm">
                                <div class="sign-up v2q-field">
                                    <h4>Email: </h4>
                                    <form:input path="email" type="text" placeholder="Email đăng ký" cssClass="v2q-input"/>
                                    <form:errors path="email" cssClass="serverError" />
                                </div>
                                <div class="sign-up v2q-field">
                                    <h4>Mật khẩu: </h4>
                                    <form:input path="matKhau" type="password" placeholder="Mật khẩu" cssClass="v2q-input" />
                                    <form:errors path="matKhau" cssClass="serverError" />
                                </div>
                                <div class="sign-up v2q-field">
                                    <h4>Xác nhận lại: </h4>
                                    <form:input path="matKhauXacNhan" type="password" placeholder="Mật khẩu xác nhận" cssClass="v2q-input"/>
                                    <form:errors path="matKhauXacNhan" cssClass="serverError" />
                                </div>
                                <div class="sign-up">
                                    <input type="submit" value="ĐĂNG KÝ" >
                                </div>

                            </form:form>
                        </div>
                        <div class="login-right">
                            <h3>Đăng nhập</h3>
                            <form:form modelAttribute="nguoiMua" method="post" action="dang-nhap" id="danhNhapForm">
                                <div class="sign-in v2q-field">
                                    <h4>Email :</h4>
                                    <form:input path="email" type="text" placeholder="Email đã đăng nhập" cssClass="v2q-input"/>	
                                    <form:errors path="email" cssClass="serverError" />
                                </div>
                                <div class="sign-in v2q-field">
                                    <h4>Mật khẩu :</h4>
                                    <form:input path="matKhau" type="password" placeholder="Mật khẩu" cssClass="v2q-input"/>
                                    <form:errors path="matKhau" cssClass="serverError"/>
                                    <a href="#"><span style="font-size: 1.2em;">Quên mật khẩu?</span></a>
                                </div>
                                <div class="single-bottom v2q-field">
                                    <input type="checkbox"  id="brand" value="">
                                    <label for="brand"><span></span>Ghi nhớ đăng nhập</label>
                                </div>
                                <div class="sign-in">
                                    <input type="submit" value="ĐĂNG NHẬP" >
                                </div>
                            </form:form>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <p style="font-size: 1em;">Việc đăng nhập sử dụng bằng việc đồng ý <a href="#">Điều khoản</a> và <a href="#">Chính sách của chúng tôi</a> !</p>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(function () {
        $("#danhNhapForm").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                },
                matKhau: "required"
            },
            messages: {
                email: {
                    required: "Vui lòng nhập email.",
                    email: "Chưa đúng định dạng email."
                },
                matKhau: "Vui lòng nhập mật khẩu"
            }
        });
        $("#dangKyForm").validate({
            rules: {
                email: {
                    required: true,
                    email: true
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
                email: {
                    required: "Vui lòng nhập email.",
                    email: "Chưa đúng định dạng email."
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
    });
</script>
