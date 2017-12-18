<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<jsp:include page="../layout/template/banner.jsp"/>

<c:if test="${mes != null}">
    <script type="text/javascript">
        alert("${mes}");
        window.location.href="xem-phieu-mua/"
        </script>
</c:if>
<c:if test="${errormes != null}">
    <script type="text/javascript">
        alert("${errormes}");
        
        </script>
</c:if>
<div class="" style="padding: 15px">
    
    <div class="container">
        <script src="assets/customer/template/js/easyResponsiveTabs.js" type="text/javascript"></script>
        <script src="assets/customer/js/local.js" type="text/javascript"></script>
        
        <div class="tab-index" style="margin-bottom: 20px;">
                    <h3><span> THÔNG TIN GIỎ HÀNG !!! </span></h3>                        
                </div>
        <table class="table-active" >
            <tr style="padding-bottom: 10px ; font-size: large">
                <td style=" width:5%;  text-align: center"><strong>ID</strong></td>
                <td style=" width:auto;  text-align: center"><strong>Tên sản phẩm</strong></td>
                <td style=" width:20%;  text-align: center"><strong>Hình ảnh</strong></td>
                <td style=" width:auto;  text-align: center"><strong>Số lượng </strong></td>
                <td style=" width:auto;  text-align: center"><strong>Giá</strong></td>
                
            </tr>
            <c:forEach items="${cart.layDanhSachSanPham()}" var="sp">
                
            <tr>
                <td style=" width:auto;  text-align: center">
                    <input style=" width:24px; border: 0" type="number" value="${sp.id}" readonly="true" /> 
                </td>
                <td style=" width:auto;  text-align: left">
                    <span>${sp.tenMay}</span>
                </td>
                <td style=" width:auto;  align-content: center; padding-top: 20px">
                    <img src="assets/merchant/images/products/${sp.hinhAnhSanPhamList[0].tenHinh}" width="60%" height=" 40%" alt="" class="pro-image-front">
                    <img src="assets/merchant/images/products/${sp.hinhAnhSanPhamList[1].tenHinh}" width="60%" height=" 40%" alt="" class="pro-image-back">
                </td>
                <td style=" width:auto;  text-align: center">
                    <input  style=" width:40px ; border: 0"  name="soLuongMoi" type="number" id="soLuongMoi" value="${sp.tonKho}" /> 
                </td>
                <td style=" width:auto; vertical-align: middle; align-content: center">
                    <div class="v2q-item-price">
                 <fmt:formatNumber value="${sp.giaBan}" pattern="###,###"/> VNĐ
                    </div>
                </td>
                
            </tr>
                
        </c:forEach>
        </table>
            
        <<div class="tab-index" style="margin-bottom: 20px;">
                    <h3><span> THÔNG TIN GIAO HÀNG</span></h3>                        
                </div>
        <form:form action="thanh-toan" method="post"  modelAttribute="phieuMuaHang">
        
        <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="tenNguoiNhan" cssClass="form-control ks-rounded" placeholder="Tên người nhận"/>
                            <form:errors path="tenNguoiNhan" cssClass="serverError" />
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
        </div>
                            
        <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="soDienThoai" cssClass="form-control ks-rounded" placeholder="Số diện thoại người nhận"/>
                            <form:errors path="soDienThoai" cssClass="serverError" />
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
        </div>    
                            
        
                            
       <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:select  id="thanhPho" cssClass="form-control ks-rounded" path="idThanhPho.id" style="padding-left: 35px;">
                                <option disabled selected>Chọn Tỉnh/Thành phố</option>
                                <form:options items="${dsThanhPho}" itemValue="id" itemLabel="tenThanhPho"/>
                            </form:select>
                            <form:errors path="idThanhPho" cssClass="serverError"/> 
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
        </div>
            
         <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:select id="quanHuyen" cssClass="form-control ks-rounded" path="idQuanHuyen.id" style="padding-left: 35px;">
                                <option disabled selected>Chọn Quận/Huyện</option>
                            </form:select>
                            <form:errors path="idQuanHuyen" cssClass="serverError"/>
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:select id="phuongXa" cssClass="form-control ks-rounded" path="idPhuongXa.id" style="padding-left: 35px;">
                                <option disabled selected>Chọn Phường/Xã</option>
                            </form:select>
                            <form:errors path="idPhuongXa" cssClass="serverError"/>  
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
                    </div>
            
        <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="diaChiGiao" cssClass="form-control ks-rounded" placeholder="Địa chỉ cụ thể"/>
                            <form:errors path="diaChiGiao" cssClass="serverError" />
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
        </div>
        <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <label>Tổng tiền</label>
                                <fmt:formatNumber value="${cart.tongTien}" pattern="###,###"/> VNĐ
                            
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
        </div>         
        
         <div class="form-group">
                        <div class="input-icon icon-left icon-lg icon-color-primary">
                            <form:input path="ghiChu" cssClass="form-control ks-rounded" placeholder="Ghi Chú"/>
                            <form:errors path="ghiChu" cssClass="serverError" />
                            <span class="icon-addon">
                                <span class="la la-home"></span>
                            </span>
                        </div>
        </div>                   
                            <button type="submit"  class="item_add single-item  button2  " style="background-color: #239C57;border:#239C57 solid 4px; -webkit-text-fill-color:white">Xác nhân thanh toán</button>                    
        </form:form>
    </div>
</div>
<jsp:include page="../layout/template/go-to-top.jsp"/>
