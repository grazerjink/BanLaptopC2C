<%-- 
    Document   : demo
    Created on : Nov 7, 2017, 4:41:48 PM
    Author     : Winson Mac
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<br>
${message}
<hr>
<form:form action="demo-update" method="post" modelAttribute="hsx">
    <form:hidden path="id" cssClass="form-control" />
    <div class="form-group">
        <label>
            Tên hãng: 
            <form:input path="tenHang" cssClass="form-control" />
        </label>
    </div>
    <div class="form-group">
        <label>
            Logo hãng: 
            <form:input path="logoHang" cssClass="form-control" />
        </label>
    </div>
    <div class="form-group">
        <label>
            Hiển thị: 
            <form:checkbox path="anHien" cssClass="form-control" />
        </label>
    </div>
    <div class="form-group">
        <button class="btn btn-default">Cập nhật</button>
    </div>
</form:form>