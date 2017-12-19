<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>--%>
<!DOCTYPE html>
<jsp:include page="../layout/template/banner.jsp"/>

<div class="" style="padding: 15xp">
    
    <div class="container" style="margin-bottom: 30px">
        <div class="tab-index" style="margin-bottom: 20px;">
                    <h3><span> CHI TIẾT PHIẾU MUA </span></h3>                        
                </div>
        <table class="table-active" >
            <tr style="padding-bottom: 10px ; font-size: x-large">
                <td style=" width:5%;  text-align: center; margin-bottom: 15px"><strong>ID</strong></td>
                <td style=" width:auto;  text-align: center"><strong>Tên sản phẩm</strong></td>
                <td style=" width:auto;  text-align: center"><strong>Người bán</strong></td>
                <td style=" width:auto;  text-align: center"><strong>ĐT liên lạc</strong></td>
                <td style=" width:20%;  text-align: center"><strong>Số lượng mua</strong></td>
                <td style=" width:auto;  text-align: center"><strong>Đơn giá</strong></td>
                <td style=" width:auto;  text-align: center"><strong>Ngày giao</strong></td>
                <td style=" width:auto;  text-align: center"><strong>Tình trạng</strong></td>
            </tr>
            <c:forEach items="${ctphieumua}" var="p">
                <tr>
                    <td>
                        ${p.id}
                    </td>
                    <td>
                        ${p.idSanPham.tenMay}
                    </td>
                    <td>
                        ${p.idNguoiBan.tenGianHang}
                    </td>
                    <td>
                        ${p.idNguoiBan.soDienThoai}
                    </td>
                    <td>
                        ${p.soLuongMua}
                    </td>
                    <td>
                        <fmt:formatNumber value="${p.giaBan}" pattern="###,###"/> VNĐ
                    </td>
                    <td>
                        ${p.ngayGiaoHang}
                    </td>
                    <td>
                        ${p.idTinhTrang.tenMoTa}
                    </td>
                </tr>
            </c:forEach>
        </table>
        
    </div>
</div>
<jsp:include page="../layout/template/go-to-top.jsp"/>
