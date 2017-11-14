<%-- 
    Document   : login
    Created on : Nov 13, 2017, 9:45:52 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="assets/merchant/css/my-customer.css" rel="stylesheet" type="text/css"/>
<div class="ks-page">
    <jsp:include page="../layout/header.jsp"/>
    <div class="ks-body container">
        <div class="row">
            <!-- Begin landing section -->
            <div class="v2q-slogan col-md-8 col-sm-12">
                <div>Kinh doanh cùng chúng tôi </div>
                <div>Trở thành người bán hàng chuyên nghiệp </div>
                <img src="assets/merchant/images/login-img.png"/>
            </div>
            <!-- End landing section -->
            <!-- Begin login form -->
            <div class="v2q-login col-md-4 col-sm-12">
                <div class="card panel panel-default ks-light ks-panel ks-login v2q-panel">
                    <div class="card-block">
                        <div class="ks-logo v2q-logo">V2Q MALL</div>
                        <form class="form-container">
                            <div class="form-group">
                                <div class="input-icon icon-left icon-lg icon-color-primary">
                                    <input type="text" class="form-control" placeholder="Nhập email">
                                    <span class="icon-addon">
                                        <span class="la la-at"></span>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-icon icon-left icon-lg icon-color-primary">
                                    <input type="text" class="form-control" placeholder="Nhập mật khẩu">
                                    <span class="icon-addon">
                                        <span class="la la-key"></span>
                                    </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <button class="btn btn-login">Đăng nhập</button>
                            </div>
                            <div class="ks-text-center">
                                Chưa có tài khoản bán hàng ? <a href="merchant/dang-ky/"> Đăng ký tại đây.</a>
                            </div>
                            <div class="ks-text-center">
                                <a href="">Quên mật khẩu?</a>
                            </div>                    
                        </form>
                    </div>
                </div>
            </div>
            <!-- End login form -->
        </div>
    </div>
    <jsp:include page="../layout/footer.jsp"/>
</div>
