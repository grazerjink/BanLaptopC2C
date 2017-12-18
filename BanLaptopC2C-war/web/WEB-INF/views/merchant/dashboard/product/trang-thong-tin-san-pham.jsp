<%-- 
    Document   : trang-dang-tin-san-pham
    Created on : Dec 5, 2017, 11:56:46 AM
    Author     : Winson Mac
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="ks-header">
    <section class="ks-title-and-subtitle">
        <div class="ks-title-block">
            <h3 class="ks-main-title">Thông tin sản phẩm</h3>
        </div>
    </section>
</div>
<div class="ks-content">
    <div class="ks-body">
        <div class="container-fluid ks-dashboard ks-rows-section">
            <div class="row">
                <div class="col-lg-12">
                    <h4 class="ks-main-title">${sanPham.tenMay}</h4>                        
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Tên máy: </label>
                        <div class="col-sm-6 v2q-input-wrapper">
                            <span class="icon-addon"><span class="la la-home"></span></span>
                            <input readonly class="form-control ks-rounded v2q-input" value="${sanPham.tenMay}"/>
                        </div>
                    </div>   
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Hãng sản xuất: </label>
                        <div class="col-sm-6 v2q-input-wrapper">
                            <span class="icon-addon"><span class="la la-home"></span></span>
                            <input readonly class="form-control ks-rounded v2q-input" value="${sanPham.idHangSanXuat.tenHang}"/>
                        </div>
                    </div>     
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Mô tả ngắn: </label>
                        <div class="col-sm-6 v2q-input-wrapper">
                            <span class="icon-addon"><span class="la la-home"></span></span>
                            <input readonly class="form-control ks-rounded v2q-input" value="${sanPham.moTa}" />
                        </div>
                    </div>    
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Số lượng: </label>
                        <div class="col-sm-6 v2q-input-wrapper">
                            <span class="icon-addon"><span class="la la-home"></span></span>
                            <input readonly class="form-control ks-rounded v2q-input" value="${sanPham.tonKho}" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Giá bán: </label>
                        <div class="col-sm-6 v2q-input-wrapper">
                            <span class="icon-addon"><span class="la la-home"></span></span>
                            <input readonly path="giaBan" type="number" min="0" class="form-control ks-rounded v2q-input"/>
                            <input readonly class="form-control ks-rounded v2q-input" value="<fmt:formatNumber value='${sanPham.giaBan}' pattern='###,###'/>" />

                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Hình ảnh sản phẩm<br>(Tối thiểu 1 ảnh): </label>
                        <input readonly id="chooseImage" type="file" multiple hidden>
                        <div class="col-sm-10 row" id="v2q-img-upload">
                            <div class="v2q-img-container">
                                <c:forEach items="${sanPham.hinhAnhSanPhamList}" var="ha">
                                    <img class="v2q-upload" src="assets/merchant/images/products/${ha.tenHinh}" alt="" width="180" height="200"/>
                                </c:forEach>
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
                            <input readonly class="form-control ks-rounded v2q-input" value="${thongSo.idKichThuocManHinh.loaiKichThuoc}" />
                        </div>
                    </div>   
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Loại màn hình: </label>
                        <div class="col-sm-6 v2q-input-wrapper">
                            <span class="icon-addon"><span class="la la-home"></span></span>
                            <input readonly class="form-control ks-rounded v2q-input" value="${thongSo.idLoaiManHinh.tenLoai}" />
                        </div>
                    </div>   
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Độ phân giải: </label>
                        <div class="col-sm-6 v2q-input-wrapper">
                            <span class="icon-addon"><span class="la la-home"></span></span>
                            <input readonly class="form-control ks-rounded v2q-input" value="${thongSo.idDoPhanGiai.tenDoPhanGiai} ${thongSo.idDoPhanGiai.chieuRong}x${thongSo.idDoPhanGiai.chieuDai}" />
                        </div>
                    </div>   
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Bộ vi xử lí: </label>
                        <div class="col-sm-6 v2q-input-wrapper">
                            <span class="icon-addon"><span class="la la-home"></span></span>
                            <input readonly class="form-control ks-rounded v2q-input" value="${thongSo.idCpu.tenCpu} ${thongSo.idCpu.soNhan} Core - ${thongSo.idCpu.tocDo}GHz ${thongSo.idCpu.l3Cache}MB" />
                        </div>
                    </div>     
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Dung lượng ổ cứng: </label>
                        <div class="col-sm-6 v2q-input-wrapper">
                            <span class="icon-addon"><span class="la la-home"></span></span>
                            <input readonly class="form-control ks-rounded v2q-input" value="${thongSo.idOCung.loaiOCung} ${thongSo.idOCung.dungLuong}"/>

                        </div>
                    </div>    
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Ram: </label>
                        <div class="col-sm-6 v2q-input-wrapper">
                            <span class="icon-addon"><span class="la la-home"></span></span>
                            <input readonly class="form-control ks-rounded v2q-input" value="${thongSo.idRam.loaiRam} ${thongSo.idRam.dungLuong}GB"/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Card màn hình: </label>
                        <div class="col-sm-6 v2q-input-wrapper">
                            <span class="icon-addon"><span class="la la-home"></span></span>
                            <input readonly class="form-control ks-rounded v2q-input" value="${thongSo.idCardManHinh.tenCard} ${thongSo.idCardManHinh.dungLuong}GB"/>
                        </div>
                    </div>    
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Thời lượng pin: </label>
                        <div class="col-sm-3 v2q-input-wrapper">
                            <span class="icon-addon"><span class="la la-battery-full"></span></span>
                            <input readonly class="form-control ks-rounded v2q-input" value="${thongSo.thoiLuongPin}"/>
                        </div>
                        <span style="margin-left: 10px;"> hours</span>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-2 form-control-label">Thời gian bảo hành : </label>
                        <div class="col-sm-3 v2q-input-wrapper">
                            <span class="icon-addon"><span class="la la-battery-full"></span></span>
                            <input readonly class="form-control ks-rounded v2q-input" value="${thongSo.baoHanh}"/>
                        </div>
                        <span style="margin-left: 10px;"> tháng</span>
                    </div>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-8">
                    <a href="merchant/danh-sach-san-pham/" class="pull-right btn btn-warning-outline ks-rounded v2q-save">Quay về</a>
                </div>
            </div>     
        </div>        
    </div>
</div>