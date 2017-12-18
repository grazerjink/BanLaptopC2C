<%-- 
    Document   : cap-nhat-thong-tin
    Created on : Dec 4, 2017, 11:22:44 AM
    Author     : Winson Mac
--%>
<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<jsp:include page="../layout/template/banner.jsp"/>
<script src="assets/customer/js/local.js" type="text/javascript"></script>
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
<div class="">
    
    <div class="container">
<div class="tab-pane active" id="chinhsua" role="tabpanel" aria-expanded="false">
    <form:form modelAttribute="nguoiMua" action="cap-nhat-thong-tin" method="post">  
        <form:hidden path="email" value="${nguoimuasession.email}" />
        <form:hidden path="matKhau" value="${nguoimuasession.matKhau}" />
        <form:hidden path="matKhauXacNhan" value="${nguoimuasession.matKhau}"/>
        
        <div class="form-group row">
            <label class="col-sm-2 form-control-label">Họ tên: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                    <form:input path="hoTen" cssClass="form-control ks-rounded v2q-input" value="${nguoimuasession.hoTen}"/>
                    <form:errors path="hoTen" cssClass="serverError" />
            </div>
        </div>    
        
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Email: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                <input class="form-control ks-rounded v2q-input" readonly value="${nguoimuasession.email}"/>
            </div>
        </div> 
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Số điện thoại: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                    <form:input path="soDienThoai" cssClass="form-control ks-rounded v2q-input" value="${nguoimuasession.soDienThoai}"/>
                    <form:errors path="soDienThoai" cssClass="serverError" />
            </div>
        </div> 
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Địa chỉ: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                    <form:input path="diaChi" cssClass="form-control ks-rounded v2q-input" value="${nguoimuasession.diaChi}"/>
                    <form:errors path="diaChi" cssClass="serverError" />
            </div>
        </div> 
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Tỉnh / Thành phố: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                    <form:select id="thanhPho" cssClass="form-control ks-rounded v2q-input" path="idThanhPho" >
                        <c:forEach items="${dsThanhPho}" var="t">
                            <c:choose>
                                <c:when test="${customer.idThanhPho.id == t.id}">
                                <option selected value="${t}">${t.tenThanhPho}</option>
                            </c:when>
                            <c:otherwise>
                                <option value="${t}">${t.tenThanhPho}</option>
                            </c:otherwise>
                        </c:choose>       
                    </c:forEach>
                </form:select>
                <form:errors path="idThanhPho" cssClass="serverError" />
            </div>
        </div> 
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Quận / Huyện: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                    <form:select id="quanHuyen" cssClass="form-control ks-rounded v2q-input" path="idQuanHuyen">
                        <c:forEach items="${dsQuanHuyen}" var="q">
                            <c:choose>
                                <c:when test="${customer.idQuanHuyen.id == q.id}">
                                <option selected value="${q}">${q.tenQuanHuyen}</option>
                            </c:when>
                            <c:otherwise>
                                <option value="${q}">${q.tenQuanHuyen}</option>
                            </c:otherwise>
                        </c:choose>       
                    </c:forEach>                                                             
                </form:select>
                <form:errors path="idQuanHuyen" cssClass="serverError" />
            </div>
        </div> 
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Phường / Xã: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                    <form:select  id="phuongXa" cssClass="form-control ks-rounded v2q-input" path="idPhuongXa" >
                        <c:forEach items="${dsPhuongXa}" var="p">
                            <c:choose>
                                <c:when test="${customer.idPhuongXa.id == p.id}">
                                <option selected value="${p}">${p.tenPhuongXa}</option>
                            </c:when>
                            <c:otherwise>
                                <option value="${p}">${p.tenPhuongXa}</option>
                            </c:otherwise>
                        </c:choose>       
                    </c:forEach>    
                </form:select>
                <form:errors path="idPhuongXa" cssClass="serverError" />
            </div>
        </div>
        
        <div class="form-group row">
            <div class="col-sm-8">
                <button class="pull-right btn btn-warning-outline ks-rounded v2q-save">Lưu thay đổi</button>
            </div>
        </div> 
    </form:form>
</div>
    </div>
</div>
<jsp:include page="../layout/template/go-to-top.jsp"/>
<script>
    $(function () {
        /// Goi ajax lay danh sach quan huyen theo thanh pho khi nhan chon
     $(function () {
    $('#thanhPho').change(function () {
            $.ajax({
                url: "quan-huyen",
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
                url: "phuong-xa",
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
        
        $("#nguoiMua").validate({
            rules: {
                hoTen: {
                    required: true,
                    pattern: /^[^\d]+$/
                },
                soDienThoai: {
                    required: true,
                    pattern: /^[0-9]{10,11}$/
                },
                diaChi: {
                    required: true
                }
            },
            messages: {
                hoTen: {
                    required: "Vui lòng nhập họ tên.",
                    pattern: "Tên không thể nhập ký tự số."
                },
                soDienThoai: {
                    required: "Vui lòng nhập số điện thoại.",
                    pattern: "Nhập sai định dạng số điện thoại."
                },
                diaChi: {
                    required: "Vui lòng nhập địa chỉ."
                }
            }
        });
    });
</script>    