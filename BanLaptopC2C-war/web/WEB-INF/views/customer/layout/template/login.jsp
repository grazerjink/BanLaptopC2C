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
                            <h3>Đăng ký nhanh miễn phí</h3>
                            <form:form modelAttribute="nguoiMua" method="post" action="dang-ky">
                                <div class="sign-up">
                                    <h4>Email: </h4>
                                    <form:input path="email" type="text" value="Email đăng ký" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Email đăng ký';
                                                }" required=""/>	
                                </div>
                                <div class="sign-up">
                                    <h4>Mật khẩu: </h4>
                                    <form:input path="matKhau" type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Password';
                                                }" required=""/>

                                </div>
                                <div class="sign-up">
                                    <h4>Mật khẩu xác nhận: </h4>
                                    <form:input path="matKhauXacNhan" type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Password';
                                                }" required=""/>
                                </div>
                                <div class="sign-up">
                                    <input type="submit" value="ĐĂNG KÝ" >
                                </div>

                            </form:form>
                        </div>
                        <div class="login-right">
                            <h3>Đăng nhập</h3>
                            <form:form modelAttribute="nguoiMua" method="post" action="dang-nhap">
                                <div class="sign-in">
                                    <h4>Email :</h4>
                                    <form:input path="email" type="text" value="Email đăng ký" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Email đăng ký';
                                                }" required=""/>	
                                </div>
                                <div class="sign-in">
                                    <h4>Password :</h4>
                                    <form:input path="matKhau" type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                this.value = 'Password';
                                                }" required=""/>
                                    <a href="#"><span style="font-size: 1.2em;">Quên mật khẩu?</span></a>
                                </div>
                                <div class="single-bottom">
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