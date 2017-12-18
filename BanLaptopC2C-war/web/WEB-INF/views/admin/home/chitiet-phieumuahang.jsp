<%-- 
    Document   : chitiet-phieumuahang
    Created on : Dec 16, 2017, 7:39:35 PM
    Author     : Vivi
--%>
<%-- 
    Document   : danhsach-hoadon
    Created on : Nov 16, 2017, 11:06:42 AM
    Author     : Vivi
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h2> Chi tiết phiếu mua hàng  </h2>

<div id="borderedTable" class="body collapse in">
    <table id="ks-datatable" class="table table-bordered responsive-table">
        <thead>
            <tr>
                <th>#</th>
                <th>Tên người bán</th>
                <th>Tên sản phẩm </th>
                <th>Giá bán </th>
                <th>Số lượng</th>
                <th>Ngày giao hàng</th>
                <th>Tình trạng </th>

            </tr>
        </thead>
        <tbody>
            <c:forEach var="ctpm" items="${ctPhieuMuaHang}" varStatus="i">
                <tr>
                    <td>${i.count}</td>
                    <td>${ctpm.idNguoiBan.hoTen}</td>
                    <td>${ctpm.idSanPham.tenMay}</td>
                    <td>${ctpm.giaBan}</td>
                    <td>${ctpm.soLuongMua}</td>
                    <td><fmt:formatDate value="${ctpm.ngayGiaoHang}" pattern="dd / MM / yyyy"/></td>
                    <td>
                        ${ctpm.idTinhTrang.tenMoTa}
                    </td>
                </tr>
            </c:forEach>
        </tbody>            
    </table>
</div>

</div>

