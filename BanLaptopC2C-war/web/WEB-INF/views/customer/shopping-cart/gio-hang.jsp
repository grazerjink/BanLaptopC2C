<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>--%>
<!DOCTYPE html>
<jsp:include page="../layout/template/banner.jsp"/>

<div class="">
    
    <div class="container">
        <script src="assets/customer/template/js/easyResponsiveTabs.js" type="text/javascript"></script>
        <script src="assets/customer/js/shopping-cart.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#horizontalTab').easyResponsiveTabs({
                    type: 'default', //Types: default, vertical, accordion           
                    width: 'auto', //auto or any width like 600px
                    fit: true   // 100% fit in a container
                });
            });

        </script>
        <c:if test="${cart.tongSoLuong != null}">
         <div class="tab-index" style="margin-bottom: 20px;">
                    <h3><span> DANH SÁCH GIỎ HÀNG </span>!!!</h3>                        
                </div>
        <table class="table-active" >
            <tr style="padding-bottom: 10px ; font-size: x-large">
                <td style=" width:5%;  text-align: center"><strong>ID</strong></td>
                <td style=" width:auto;  text-align: center"><strong>Tên sản phẩm</strong></td>
                <td style=" width:20%;  text-align: center"><strong>Hình ảnh</strong></td>
                <td style=" width:auto;  text-align: center"><strong>Số lượng </strong></td>
                <td style=" width:auto;  text-align: center"><strong>Giá</strong></td>
                <td style=" width:auto;  text-align: center"><strong>Chi tiết sản phẩm</strong></td>
                <td style=" width:auto;  text-align: center"><strong>Xóa khỏi giỏ hàng</strong></td>
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
                <td style=" width:auto;  text-align: center">
                    <button class="item_add single-item  button2 v2q-btn-upd" data-prod-id="${sp.id}" data-pro-qua="${sp.tonKho}" style="background-color: #003399; border: #003399 solid 4px; -webkit-text-fill-color:white ">Cập nhật số lượng</button>
                </td>
                
                <td style=" width:auto;  text-align: center">
                    <button class="item_add single-item  button2 button2 v2q-btn-del" data-prod-id="${sp.id}" style="background-color: #ea1730;border:#ea1730 solid 4px; -webkit-text-fill-color:white">Xóa khỏi giỏ hàng</button>
                </td>
            </tr>
                
        </c:forEach>
        </table>
            
         <div style="padding: 15px">
             <div style="padding: 15px" >
            <span> Tổng tiền: <fmt:formatNumber value="${cart.tongTien}" pattern="###,###"/> VNĐ </span>
             </div>
            <c:choose>
                    <c:when test="${customer!=null}">
                        <button onclick="window.location.href='thanh-toan/'" class="item_add single-item  button2 v2q-btn-pay " style="background-color: #239C57;border:#239C57 solid 4px; -webkit-text-fill-color:white">Thanh Toán</button>
                    </c:when>
                    <c:otherwise>
                        <span  class="item_add single-item  button2 glyphicon glyphicon-user" style="background-color: #239C57;border:#239C57 solid 4px; -webkit-text-fill-color:white" aria-hidden="true"></span><a class="use1" data-toggle="modal" data-target="#myModal4" href="#">Cần đăng nhập trước khi thanh Toán</a>
                        </c:otherwise>
            </c:choose>
        </div>
        
        
        </c:if>
        <c:if test="${cart.tongSoLuong==null}">
            <span class="text-danger"> Hiện tại không có sản phẩm nào trong giỏ hàng</span>
        </c:if>
    </div>
    
</div>


<jsp:include page="../layout/template/go-to-top.jsp"/>
