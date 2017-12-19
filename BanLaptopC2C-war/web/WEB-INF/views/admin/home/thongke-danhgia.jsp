<%-- 
    Document   : thongke-danhgia
    Created on : Nov 30, 2017, 8:21:39 PM
    Author     : Vivi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h2> Thống kê đánh giá của Người Bán</h2>

<div id="borderedTable" class="body collapse in">
    <table id="ks-datatable" class="table table-bordered responsive-table">
        <thead>
            <tr>
                <th>#</th>
                <th>Mã Đơn Hàng</th>
                <th>Tên người bán</th>
                <th>Số điểm</th>               
            </tr>
        </thead>
        <tbody>
            <c:forEach var="tkdg" items ="${dsThongKeDanhGia}" varStatus="i" >
                <tr>
                    <td>${i.count}</td>
                    <td>${tkdg.idDonHang.id}</td>
                    <td>${tkdg.idNguoiBan.hoTen}</td>
                    <td>${tkdg.soDiem}</td>   
                </tr>
            </c:forEach>
        </tbody>            
    </table>
</div>

</div>