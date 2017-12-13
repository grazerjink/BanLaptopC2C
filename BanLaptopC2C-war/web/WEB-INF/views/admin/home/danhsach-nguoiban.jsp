<%-- 
    Document   : danhsach-nguoiban
    Created on : Dec 7, 2017, 8:29:47 PM
    Author     : Vivi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h2> Danh sách người bán hàng </h2>

<div id="borderedTable" class="body collapse in">
    <table class="table table-bordered responsive-table">
        <thead>
            <tr>
                <th>#</th>
                <th>Email</th>
                <th>Họ tên</th>
                <th>CMND</th>
                <th>Số điện thoại</th>
                <th>Địa chỉ</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="nb" items="${dsNguoiBan}" varStatus="i">
            <tr>
                <td>${i.count}</td>
                <td>${nb.email}</td>
                <td>${nb.hoTen}</td>
                <td>${nb.cmnd}</td>
                <td>${nb.soDienThoai}</td>
                <td>${nb.diaChi}</td>
            </tr>
        </c:forEach>
        </tbody>               
    </table>
</div>
