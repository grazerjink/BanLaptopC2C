<%-- 
    Document   : trang-dang-tin-san-pham
    Created on : Dec 5, 2017, 11:56:46 AM
    Author     : Winson Mac
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    .v2q-img-container {
        position: relative;
        margin-right: 15px;
    }
    .v2q-btn-upload {
        position: absolute;
        bottom: 0px;
        height: 100%;
        cursor: pointer;
        width: 100%;
        background-color: transparent;        
    }
    .v2q-btn-upload>span {
        color: #6e6e6e;
    }
    .v2q-btn-upload:hover {
        background-color: #eeeeee;
        opacity: 0.2;
    }
    .v2q-img-remove {
        position: absolute;
        background-color: #FFECB3;
        border-radius: 15px;
        height: 30px;
        width: 30px;
        text-align: center;
        top: 2px;
        right: 2px;    
        font-size: 1.6em;
        cursor: pointer;
    }
    .v2q-img-remove>span {
        color: #8E8E8E;
    }
    .v2q-img-remove>span:hover{
        color: #eb8f00;
    }
</style>
<div class="ks-header">
    <section class="ks-title-and-subtitle">
        <div class="ks-title-block">
            <h3 class="ks-main-title">Đăng tin sản phẩm</h3>
        </div>
    </section>
</div>
<div class="ks-content">
    <div class="ks-body">
        <div class="container-fluid ks-dashboard ks-rows-section">
            <form:form modelAttribute="sanPham" action="merchant/dang-tin-san-pham/" method="POST" enctype="multipart/form-data">  
                <div class="row">
                    <div class="col-lg-12">
                        <h4 class="ks-main-title">Thông tin sản phẩm</h4>                        
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Tên máy: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:input path="tenMay" cssClass="form-control ks-rounded v2q-input"/>
                            </div>
                        </div>   
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Hãng sản xuất: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select path="idHangSanXuat" cssClass="form-control ks-rounded v2q-input">
                                    <option selected disabled>Chọn hãng sản xuất</option>
                                    <c:forEach items="${dsHangSanXuat}" var="sx">
                                        <option value="${sx.id}">${sx.tenHang}</option>
                                    </c:forEach>
                                </form:select>
                            </div>
                        </div>     
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Mô tả ngắn: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:input path="moTa" cssClass="form-control ks-rounded v2q-input"/>
                            </div>
                        </div>    
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Số lượng: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:input path="tonKho" cssClass="form-control ks-rounded v2q-input"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Giá bán: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:input path="giaBan" cssClass="form-control ks-rounded v2q-input"/>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Hình ảnh sản phẩm<br>(Tối thiểu 1 ảnh): </label>
                            <input id="chooseImage" type="file" multiple hidden>
                            <div class="col-sm-10 row" id="v2q-img-upload">
                                <div class="v2q-img-container">
                                    <img class="v2q-upload" src="assets/merchant/images/products/placeholder.png" alt="" width="180" height="200"/>
                                    <button type="button" class="v2q-btn-upload btn btn-flat btn-warning-outline"></button>
                                    <a class="v2q-img-remove"><span class="la la-remove"></span></a>
                                    <input class="chooseImage" type="file" name="fileUploads[]" multiple hidden>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <h4 class="ks-main-title">Thông số kĩ thuật</h4>
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Kích thước màn hình: </label>
                            <div class="col-sm-4 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select path="thongSoKiThuatVM.idKichThuocManHinh" cssClass="form-control ks-rounded v2q-input">
                                    <option selected disabled>Chọn kích thước màn hình</option>
                                    <c:forEach items="${dsKichThuocManHinh}" var="kt">
                                        <option value="${kt.id}">${kt.loaiKichThuoc}</option>
                                    </c:forEach>
                                </form:select>
                            </div>
                        </div>   
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Loại màn hình: </label>
                            <div class="col-sm-4 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select path="thongSoKiThuatVM.idLoaiManHinh" cssClass="form-control ks-rounded v2q-input">
                                    <option selected disabled>Chọn loại màn hình</option>
                                    <c:forEach items="${dsLoaiManHinh}" var="lmh">
                                        <option value="${lmh.id}">${lmh.tenLoai}</option>
                                    </c:forEach>
                                </form:select>
                            </div>
                        </div>   
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Độ phân giải: </label>
                            <div class="col-sm-4 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select path="thongSoKiThuatVM.idDoPhanGiai" cssClass="form-control ks-rounded v2q-input">
                                    <option selected disabled>Chọn độ phân giải</option>
                                    <c:forEach items="${dsDoPhanGiai}" var="dpg">
                                        <option value="${dpg.id}">${dpg.tenDoPhanGiai} ${dpg.chieuRong}x${dpg.chieuDai}</option>
                                    </c:forEach>
                                </form:select>
                            </div>
                        </div>   
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Bộ vi xử lí: </label>
                            <div class="col-sm-4 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select path="thongSoKiThuatVM.idCpu" cssClass="form-control ks-rounded v2q-input">
                                    <option selected disabled>Chọn loại cpu</option>
                                    <c:forEach items="${dsCpu}" var="cpu">
                                        <option value="${cpu.id}">${cpu.tenCpu} ${cpu.soNhan} Core - ${cpu.tocDo}GHz ${cpu.l3Cache}MB</option>
                                    </c:forEach>
                                </form:select>
                            </div>
                        </div>     
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Dung lượng ổ cứng: </label>
                            <div class="col-sm-4 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select path="thongSoKiThuatVM.idOCung" cssClass="form-control ks-rounded v2q-input">
                                    <option selected disabled>Chọn loại ổ cứng</option>
                                    <c:forEach items="${dsOCung}" var="oc">
                                        <option value="${oc.id}">${oc.loaiOCung} ${oc.dungLuong}</option>
                                    </c:forEach>
                                </form:select>
                            </div>
                        </div>    
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Ram: </label>
                            <div class="col-sm-4 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select path="thongSoKiThuatVM.idRam" cssClass="form-control ks-rounded v2q-input">
                                    <option selected disabled>Chọn loại ram</option>
                                    <c:forEach items="${dsRam}" var="ram">
                                        <option value="${ram.id}">${ram.loaiRam} ${ram.dungLuong}GB</option>
                                    </c:forEach>
                                </form:select>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Card màn hình: </label>
                            <div class="col-sm-4 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select path="thongSoKiThuatVM.idCardManHinh" cssClass="form-control ks-rounded v2q-input">
                                    <option selected disabled>Chọn card màn hình</option>
                                    <c:forEach items="${dsCardManHinh}" var="card">
                                        <option value="${card.id}">${card.tenCard} ${card.dungLuong}GB</option>
                                    </c:forEach>
                                </form:select>
                            </div>
                        </div>    
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Thời lượng pin: </label>
                            <div class="col-sm-2 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-battery-full"></span></span>
                                    <form:input path="thongSoKiThuatVM.thoiLuongPin" cssClass="form-control ks-rounded v2q-input"/>
                            </div>
                            <span style="margin-left: 10px;"> hours</span>
                        </div>
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
<div id="img-template" hidden>
    <div class="v2q-img-container">
        <img class="v2q-upload" src="assets/merchant/images/products/placeholder.png" alt="" width="180" height="200"/>
        <button type="button" class="v2q-btn-upload btn btn-flat btn-warning-outline"></button>
        <a class="v2q-img-remove"><span class="la la-remove"></span></a>
        <input class="chooseImage" type="file" name="fileUploads[]" multiple hidden>
    </div>
</div>
<script>
    $(function () {
        $(document).on('click', ".v2q-btn-upload", function (e) {
            e.preventDefault();
            $(this).parents(".v2q-img-container").find('.chooseImage').trigger('click');

        });
        $(document).on('change', ".chooseImage", function (e) {
            var chooseImage = $(this);

            if (this.files && this.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    var img = chooseImage.parents(".v2q-img-container").find(".v2q-upload");
                    var btn = chooseImage.parents(".v2q-img-container").find(".v2q-btn-upload");
                    img.attr("src", e.target.result);
                    btn.remove();
                    if (chooseImage.parents("#v2q-img-upload").find(".v2q-img-container").length < 5 && chooseImage.val() !== null) {
                        $("#v2q-img-upload").append($("#img-template").html());
                    }
                };
                reader.readAsDataURL(this.files[0]);
            }
        });
        $(document).on('click', ".v2q-img-remove", function () {
            $(this).parents(".v2q-img-container").hide(300, function () {
                $(this).remove();
            });
            if ($(".v2q-img-container").length === 2) {
                $("#v2q-img-upload").append($("#img-template").html());
            }
        });
    <c:if test="${error != null}">
        showErrorToast("${error}");
    </c:if>
    });
</script>