<%-- 
    Document   : trang-dang-tin-san-pham
    Created on : Dec 5, 2017, 11:56:46 AM
    Author     : Winson Mac
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
                                    <form:errors path="tenMay" cssClass="serverError" />
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
                                <form:errors path="idHangSanXuat" cssClass="serverError" />
                            </div>
                        </div>     
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Mô tả ngắn: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:input path="moTa" cssClass="form-control ks-rounded v2q-input"/>
                                    <form:errors path="moTa" cssClass="serverError" />
                            </div>
                        </div>    
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Số lượng: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:input path="tonKho" type="number" min="1" cssClass="form-control ks-rounded v2q-input"/>
                                    <form:errors path="tonKho" cssClass="serverError" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Giá bán: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:input path="giaBan" type="number" min="0" cssClass="form-control ks-rounded v2q-input"/>
                                    <form:errors path="giaBan" cssClass="serverError" />
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
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select path="idKichThuocManHinh" cssClass="form-control ks-rounded v2q-input">
                                    <option selected disabled>Chọn kích thước màn hình</option>
                                    <c:forEach items="${dsKichThuocManHinh}" var="kt">
                                        <option value="${kt.id}">${kt.loaiKichThuoc}</option>
                                    </c:forEach>
                                </form:select>
                                <form:errors path="idKichThuocManHinh" cssClass="serverError" />
                            </div>
                        </div>   
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Loại màn hình: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select path="idLoaiManHinh" cssClass="form-control ks-rounded v2q-input">
                                    <option selected disabled>Chọn loại màn hình</option>
                                    <c:forEach items="${dsLoaiManHinh}" var="lmh">
                                        <option value="${lmh.id}">${lmh.tenLoai}</option>
                                    </c:forEach>
                                </form:select>
                                <form:errors path="idLoaiManHinh" cssClass="serverError" />
                            </div>
                        </div>   
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Độ phân giải: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select path="idDoPhanGiai" cssClass="form-control ks-rounded v2q-input">
                                    <option selected disabled>Chọn độ phân giải</option>
                                    <c:forEach items="${dsDoPhanGiai}" var="dpg">
                                        <option value="${dpg.id}">${dpg.tenDoPhanGiai} ${dpg.chieuRong}x${dpg.chieuDai}</option>
                                    </c:forEach>
                                </form:select>
                                <form:errors path="idDoPhanGiai" cssClass="serverError" />
                            </div>
                        </div>   
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Bộ vi xử lí: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select path="idCpu" cssClass="form-control ks-rounded v2q-input">
                                    <option selected disabled>Chọn loại cpu</option>
                                    <c:forEach items="${dsCpu}" var="cpu">
                                        <option value="${cpu.id}">${cpu.tenCpu} ${cpu.soNhan} Core - ${cpu.tocDo}GHz ${cpu.l3Cache}MB</option>
                                    </c:forEach>
                                </form:select>
                                <form:errors path="idCpu" cssClass="serverError" />
                            </div>
                        </div>     
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Dung lượng ổ cứng: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select path="idOCung" cssClass="form-control ks-rounded v2q-input">
                                    <option selected disabled>Chọn loại ổ cứng</option>
                                    <c:forEach items="${dsOCung}" var="oc">
                                        <option value="${oc.id}">${oc.loaiOCung} ${oc.dungLuong}</option>
                                    </c:forEach>
                                </form:select>
                                <form:errors path="idOCung" cssClass="serverError" />
                            </div>
                        </div>    
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Ram: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select path="idRam" cssClass="form-control ks-rounded v2q-input">
                                    <option selected disabled>Chọn loại ram</option>
                                    <c:forEach items="${dsRam}" var="ram">
                                        <option value="${ram.id}">${ram.loaiRam} ${ram.dungLuong}GB</option>
                                    </c:forEach>
                                </form:select>
                                <form:errors path="idRam" cssClass="serverError" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Card màn hình: </label>
                            <div class="col-sm-6 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-home"></span></span>
                                    <form:select path="idCardManHinh" cssClass="form-control ks-rounded v2q-input">
                                    <option selected disabled>Chọn card màn hình</option>
                                    <c:forEach items="${dsCardManHinh}" var="card">
                                        <option value="${card.id}">${card.tenCard} ${card.dungLuong}GB</option>
                                    </c:forEach>
                                </form:select>
                                <form:errors path="idCardManHinh" cssClass="serverError" />
                            </div>
                        </div>    
                        <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Thời lượng pin: </label>
                            <div class="col-sm-3 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-battery-full"></span></span>
                                    <form:input path="thoiLuongPin" cssClass="form-control ks-rounded v2q-input"/>
                                    <form:errors path="thoiLuongPin" cssClass="serverError" />
                            </div>
                            <span style="margin-left: 10px;"> hours</span>
                        </div>
                            <div class="form-group row">
                            <label class="col-sm-2 form-control-label">Thời gian bảo hành : </label>
                            <div class="col-sm-3 v2q-input-wrapper">
                                <span class="icon-addon"><span class="la la-battery-full"></span></span>
                                    <form:input path="baoHanh" cssClass="form-control ks-rounded v2q-input"/>
                                    <form:errors path="baoHanh" cssClass="serverError" />
                            </div>
                            <span style="margin-left: 10px;"> tháng</span>
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
        $("#sanPham").validate({
            rules: {
                tenMay: {
                    required: true,
                    pattern: /^[\w\s\d\u0080-\u9fff]{10,150}$/
                },
                giaBan: {
                    required: true,
                    min: 0
                },
                moTa: {
                    required: true,
                    pattern: /^[\w\s\d\u0080-\u9fff]{10,150}$/
                },
                tonKho: {
                    required: true,
                    min: 1
                },
                idHangSanXuat: {
                    required: true
                },
                thoiLuongPin: {
                    required: true
                },
                idCpu: {
                    required: true
                },
                idDoPhanGiai: {
                    required: true
                },
                idKichThuocManHinh: {
                    required: true
                },
                idLoaiManHinh: {
                    required: true
                },
                idOCung: {
                    required: true
                },
                idRam: {
                    required: true
                },
                idCardManHinh: {
                    required: true
                }
            },
            messages: {
                tenMay: {
                    required: "Tên máy bắt buộc phải có.",
                    pattern: "Độ dài từ 10-150 kí tự, không chứa kí tự đặc biệt."
                },
                giaBan: {
                    required: "Giá bán bắt buộc phải có.",
                    min: "Giá bán nhỏ nhất là 0 đồng."
                },
                moTa: {
                    required: "Nội dung mô tả ngắn bắt buộc phải có.",
                    pattern: "Độ dài từ 10-150 kí tự, không chứa kí tự đặc biệt."
                },
                tonKho: {
                    required: "Số lượng bắt buộc phải có.",
                    min: "Số lượng ít nhất cho phép là 1."
                },
                idHangSanXuat: {
                    required: "Hãng sản xuất bắt buộc phải chọn."
                },
                thoiLuongPin: {
                    required: "Thông số này bắt buộc phải có."
                },
                idCpu: {
                    required: "Thông số này buộc phải có."
                },
                idDoPhanGiai: {
                    required: "Thông số này buộc phải có."
                },
                idKichThuocManHinh: {
                    required: "Thông số này buộc phải có."
                },
                idLoaiManHinh: {
                    required: "Thông số này buộc phải có."
                },
                idOCung: {
                    required: "Thông số này buộc phải có."
                },
                idRam: {
                    required: "Thông số này buộc phải có."
                },
                idCardManHinh: {
                    required: "Thông số này buộc phải có."
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