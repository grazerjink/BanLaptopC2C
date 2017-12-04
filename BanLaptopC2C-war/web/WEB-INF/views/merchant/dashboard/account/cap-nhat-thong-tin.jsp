<%-- 
    Document   : cap-nhat-thong-tin
    Created on : Dec 4, 2017, 11:22:44 AM
    Author     : Winson Mac
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    label.error, span.serverError {
        background: url(assets/merchant/images/unchecked.gif) no-repeat;
        padding-left: 20px;
        margin-left: 1em;
        color: red;
        font-style: italic;
        position: absolute;
        bottom: -23px;
    }   
</style>
<div class="tab-pane active" id="chinhsua" role="tabpanel" aria-expanded="false">
    <form:form modelAttribute="nguoiBan" action="merchant/cap-nhat-thong-tin/" method="post">  
        <form:hidden path="email" value="notempty@gmail.com" />
        <form:hidden path="matKhau" value="notempty" />
        <form:hidden path="matKhauXacNhan" value="notempty"/>
        <form:hidden path="cmnd" value="0123456789"/> 
        <div class="form-group row">
            <label class="col-sm-2 form-control-label">Họ tên: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                    <form:input path="hoTen" cssClass="form-control ks-rounded v2q-input" value="${merchant.hoTen}"/>
            </div>
        </div>    
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Giấy CMND: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                <input class="form-control ks-rounded v2q-input" readonly value="${merchant.cmnd}">
            </div>
        </div> 
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Email: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                <input class="form-control ks-rounded v2q-input" readonly value="${merchant.email}"/>
            </div>
        </div> 
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Số điện thoại: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                    <form:input path="soDienThoai" cssClass="form-control ks-rounded v2q-input" value="${merchant.soDienThoai}"/>
            </div>
        </div> 
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Địa chỉ: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                    <form:input path="diaChi" cssClass="form-control ks-rounded v2q-input" value="${merchant.diaChi}"/>
            </div>
        </div> 
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Tỉnh / Thành phố: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                    <form:select id="thanhPho" cssClass="form-control ks-rounded v2q-input" path="idThanhPho.id" >
                        <c:forEach items="${dsThanhPho}" var="t">
                            <c:choose>
                                <c:when test="${merchant.idThanhPho.id == t.id}">
                                <option selected value="${t.id}">${t.tenThanhPho}</option>
                            </c:when>
                            <c:otherwise>
                                <option value="${t.id}">${t.tenThanhPho}</option>
                            </c:otherwise>
                        </c:choose>       
                    </c:forEach>
                </form:select>
            </div>
        </div> 
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Quận / Huyện: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                    <form:select id="quanHuyen" cssClass="form-control ks-rounded v2q-input" path="idQuanHuyen.id">
                        <c:forEach items="${dsQuanHuyen}" var="q">
                            <c:choose>
                                <c:when test="${merchant.idQuanHuyen.id == q.id}">
                                <option selected value="${q.id}">${q.tenQuanHuyen}</option>
                            </c:when>
                            <c:otherwise>
                                <option value="${q.id}">${q.tenQuanHuyen}</option>
                            </c:otherwise>
                        </c:choose>       
                    </c:forEach>                                                             
                </form:select>
            </div>
        </div> 
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Phường / Xã: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <span class="icon-addon"><span class="la la-home"></span></span>
                    <form:select  id="phuongXa" cssClass="form-control ks-rounded v2q-input" path="idPhuongXa.id" >
                        <c:forEach items="${dsPhuongXa}" var="p">
                            <c:choose>
                                <c:when test="${merchant.idPhuongXa.id == p.id}">
                                <option selected value="${p.id}">${p.tenPhuongXa}</option>
                            </c:when>
                            <c:otherwise>
                                <option value="${p.id}">${p.tenPhuongXa}</option>
                            </c:otherwise>
                        </c:choose>       
                    </c:forEach>    
                </form:select>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 form-control-label ">Ngày đăng ký: </label>
            <div class="col-sm-6 v2q-input-wrapper">
                <fmt:formatDate var="ngayDangKy" value="${merchant.ngayDangKy}" pattern="dd / MM / yyyy" />
                <span class="icon-addon"><span class="la la-home"></span></span>
                <input class="form-control ks-rounded v2q-input" readonly value="${ngayDangKy}">
            </div>
        </div> 
        <div class="form-group row">
            <div class="col-sm-8">
                <button class="pull-right btn btn-warning-outline ks-rounded v2q-save">Lưu thay đổi</button>
            </div>
        </div> 
    </form:form>
</div>
<script src="assets/vendor/jquery-validation-1.17.0/jquery.validate.min.js" type="text/javascript"></script>
<script src="assets/vendor/jquery-validation-1.17.0/additional-methods.min.js" type="text/javascript"></script>
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
        $("#nguoiBan").validate({
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