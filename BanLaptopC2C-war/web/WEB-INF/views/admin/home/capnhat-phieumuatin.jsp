<%-- 
    Document   : capnhat-phieumuatin
    Created on : Dec 19, 2017, 4:08:40 PM
    Author     : Vivi
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h2>Cập nhật phiếu mua tin </h2>
<h2>${message}</h2>
<hr>
<form:form modelAttribute="phieuMuaTin" action="admin/capnhat-phieumuatin/" method="POST">
    <div class="form-group">
        <label>Tình trạng </label>
        <form:hidden path="id"/>
        <form:hidden path="idGoiTin.id"/>
        <form:hidden path="idNguoiBan.id"/>
        <div class="form-control">
            <form:radiobutton path="idTinhTrang.id" value="TC" label="Giao dịch thành công" />
            <form:radiobutton path="idTinhTrang.id" value="TB" label="Hủy" />
        </div>
    </div>
   
        <div class="form-group">
            <button class="btn btn-default">Cập nhật</button>
        </div>      
</form:form>
