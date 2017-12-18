<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<jsp:include page="../layout/template/banner.jsp"/>
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
<c:if test="${success != null}">
    <script type="text/javascript">
        alert('${ success}');
        </script>
</c:if>

<div class="">
    <form id="form-doi-mat-khau" action="doi-mat-khau-customer" method="post">  
        <div class="form-group row">
            <label class="col-sm-2 form-control-label">Mật khẩu hiện tại: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                <input type="password" id="matKhauCu" name="matKhauCu" class="form-control ks-rounded v2q-input"/>
            </div>
        </div>    
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Mật khẩu mới: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                <input type="password" id="matKhauMoi" name="matKhauMoi" class="form-control ks-rounded v2q-input">
            </div>
        </div> 
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Mật khẩu xác nhận: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                <input type="password" id="matKhauXacNhan" name="matKhauXacNhan" class="form-control ks-rounded v2q-input"/>
            </div>
        </div> 
        <div class="form-group row">
            <div class="col-sm-8">
                <span class="offset-3 pull-left" style="color: red;"><b>${param.message}</b></span>
                <button class="pull-right btn btn-warning-outline ks-rounded v2q-save">Đổi mật khẩu</button>
            </div>
        </div> 
    </form>
    <div class="container">
    </div>
</div>
<script>
    $(function () {
        $("#form-doi-mat-khau").validate({
            rules: {
                matKhauMoi: {
                    required: true,
                    pattern: /^[a-zA-Z0-9]{4,20}$/
                }, 
                matKhauXacNhan: {
                    equalTo: "#matKhauMoi"
                }
            },
            messages: {
                matKhauMoi: {
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
