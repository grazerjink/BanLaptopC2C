<%-- 
    Document   : doi-mat-khau
    Created on : Dec 4, 2017, 11:23:28 AM
    Author     : Winson Mac
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="tab-pane" id="doimatkhau" role="tabpanel" aria-expanded="false">
    <form id="form-doi-mat-khau" action="merchant/doi-mat-khau/" method="post">  
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
                <input type="password" id="matKhauXN" name="matKhauXacNhan" class="form-control ks-rounded v2q-input"/>
            </div>
        </div> 
        <div class="form-group row">
            <div class="col-sm-8">
                <span class="offset-3 pull-left" style="color: red;"><b>${param.message}</b></span>
                <button class="pull-right btn btn-warning-outline ks-rounded v2q-save">Đổi mật khẩu</button>
            </div>
        </div> 
    </form>
</div>
<script>
    $(function () {
        $("#form-doi-mat-khau").validate({
            rules: {
                matKhauCu: {
                    required: true,
                    pattern: /^[a-zA-Z0-9]{4,20}$/
                }, 
                matKhauMoi: {
                    required: true,
                    pattern: /^[a-zA-Z0-9]{4,20}$/
                }, 
                matKhauXacNhan: {
                    equalTo: "#matKhauMoi"
                }
            },
            messages: {
                matKhauCu: {
                    required: "Vui lòng nhập mật khẩu.",
                    pattern: "Độ dài ít nhất 4 đến 20 ký tự."
                }, 
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