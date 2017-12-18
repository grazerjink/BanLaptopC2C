<%-- 
    Document   : danhsach-nguoidung
    Created on : Nov 14, 2017, 1:11:54 PM
    Author     : Vivi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<h2> Danh sách người dùng</h2>

    <header>
        <h5><a href="admin/dang-ky/" >Thêm người dùng</a></h5>
    </header>
    <div id="borderedTable" class="body collapse in">
        <table id="ks-datatable" class="table table-bordered responsive-table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Email</th>
                    <th>Họ tên</th>
                    <th>Số điện thoại</th>
                    <th>Số tài khoản</th>
                    <th>Địa chỉ</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="ad" items="${dsAdmin}" varStatus="i">
                    <tr>
                        <td>${i.count}</td>
                        <td>${ad.email}</td>
                        <td>${ad.hoTen}</td>
                        <td>${ad.soDienThoai}</td>
                        <td>${ad.soTaiKhoan}</td>
                        <td>${ad.diaChi}</td>
                    </tr>
                </c:forEach>
            </tbody>               
        </table>
    </div>

