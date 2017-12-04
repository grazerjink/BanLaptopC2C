<%-- 
    Document   : login
    Created on : Nov 13, 2017, 9:45:52 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
<div class="ks-body container">
    <div class="row">
        <!-- Begin landing section -->
        <div class="v2q-slogan col-lg-8 col-md-6 col-sm-12">
            <div>Kinh doanh cùng chúng tôi </div>
            <div>Trở thành người bán hàng chuyên nghiệp </div>
            <img src="assets/merchant/images/login-img.png"/>
        </div>
        <!-- End landing section -->
        <!-- Begin login form -->
        <div class="v2q-login col-lg-4 col-md-6 col-sm-12">
            <div class="card panel panel-default ks-light ks-panel ks-login v2q-panel">
                <div class="card-block">
                    <div class="ks-logo v2q-logo">V2Q MALL</div>
                    <form id="form-quen-mat-khau" class="form-container" action="merchant/quen-mat-khau/" method="POST">
                        <h4 class="text-center">Quên mật khẩu</h4>
                        <div class="form-group">
                            <div class="input-icon icon-left icon-lg icon-color-primary">
                                <input id="email" name="email" class="form-control ks-rounded" placeholder="Email đăng ký tài khoản bán hàng"/>
                                <span class="icon-addon">
                                    <span class="la la-at"></span>
                                </span>
                            </div>
                        </div>
                        <div class="form-group text-center">
                            <span style="color: red;"><b>${message}</b></span>
                        </div>
                        
                        <div class="form-group">
                            <button type="submit" class="btn btn-login">Nhận mật khẩu mới</button>
                        </div>                 
                    </form>
                </div>
            </div>
        </div>
        <!-- End login form -->
    </div>    
</div>
<jsp:include page="../layout/landing/landing-footer.jsp"/>
<script>
    $(function () {
        $("#form-quen-mat-khau").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                }
            },
            messages: {
                email: {
                    required: "Vui lòng nhập email.",
                    email: "Chưa đúng định dạng email."
                }
            }
        });
    <c:if test="${param.success != null && fn:length(param.success)>0}">
        showSuccessToast("${param.success}");
    </c:if>
    <c:if test="${error != null}">
        showErrorToast("${error}");
    </c:if>
    });
</script>