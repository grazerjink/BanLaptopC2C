<%-- 
    Document   : danhsach-nguoiban
    Created on : Dec 7, 2017, 8:29:47 PM
    Author     : Vivi
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
        #capnhat{
            cursor: pointer;
        }
</style>
<h2> Danh sách người bán hàng </h2>

<div id="borderedTable" class="body collapse in">
    <table id="ks-datatable" class="table table-bordered responsive-table">
        <thead>
            <tr>
                <th>#</th>
                <th>Email</th>
                <th>Họ tên</th>
                <th>CMND</th>
                <th>Số điện thoại</th>
                 <th>Địa chỉ</th>
                <th>Ngày đăng kí</th>
                 <th>Kích hoạt</th>
                <th>Tình trạng</th>
                 <th></th>
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
                <td><fmt:formatDate value="${nb.ngayDangKy}" pattern="dd / MM / yyyy"/></td>
                 <td>${pm.trangThai == true ? "Đã kích hoạt" : "Chưa kích hoạt"}</td>
                <td>${pm.trangThai == true ? "Đang hoạt động" : "Đang khóa"}</td>
                <td><a id="capnhat" href="admin/capnhat-nguoiban/${nb.id}" >Cập nhật</a></td>

          
                 
            </tr>
        </c:forEach>
        </tbody>               
    </table>
   
</div>


