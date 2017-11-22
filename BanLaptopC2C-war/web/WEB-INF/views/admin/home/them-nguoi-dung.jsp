<%-- 
    Document   : them-nguoi-dung
    Created on : Nov 12, 2017, 9:08:29 PM
    Author     : Vivi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<h2>${message}</h2>
<h2> Thêm người dùng</h2>
<div class="col-lg-6">
    <form:form action="admin/dang-ky/" method="POST" modelAttribute="admin">
        <div class="form-group">
            <label>Email</label>
            <form:input path="email" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label>Mật khẩu</label>
            <form:password path="matKhau" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label> Họ tên </label>
            <form:input path="hoTen" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label>Số điện thoại</label>
            <form:input path="soDienThoai" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label> Số tài khoản </label>
            <form:input path="soTaiKhoan" cssClass="form-control"/>
        </div>
        <div class="form-group">
            <label>Địa chỉ </label>
            <form:input path="diaChi" cssClass="form-control"/>
        </div>
        <div>
            <button class="btn btn-default"> Thêm </button>
        </div>
    </form:form>
<div>
