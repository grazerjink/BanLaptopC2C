<%-- 
    Document   : them-nguoi-dung
    Created on : Nov 12, 2017, 9:08:29 PM
    Author     : Vivi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<h2>${message}</h2>
<hr>
<form:form action="admin/cap-nhat/" method="POST" modelAttribute="admin">
    <div class="form-group">
        <label>Email</label>
        <form:input path="email" cssClass="form-control"/>
    </div>
    <div class="form-group">
        <label>Password</label>
        <form:input path="matKhau" cssClass="form-control"/>
    </div>
    <div class="form-group">
        <label>Ho ten</label>
        <form:input path="hoTen" cssClass="form-control"/>
    </div>
    <div class="form-group">
        <label>So dien thoai</label>
        <form:input path="soDienThoai" cssClass="form-control"/>
    </div>
    <div class="form-group">
        <label>So tai khoan</label>
        <form:input path="soTaiKhoan" cssClass="form-control"/>
    </div>
    <div class="form-group">
        <label>Dia chi</label>
        <form:input path="diaChi" cssClass="form-control"/>
    </div>
    <div>
        <button class="btn btn-default">Insert</button>
    </div>
</form:form>
