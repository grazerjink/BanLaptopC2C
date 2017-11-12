<%-- 
    Document   : demo-list
    Created on : Nov 12, 2017, 11:36:59 PM
    Author     : Winson Mac
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<table class="table table-bordered">
    <thead>
        <tr>
            <th>ID</th>
            <th>Tên hãng</th>
            <th>Logo hãng</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${dsHSX}" var="h">
            <tr>
                <td>${h.id}</td>
                <td>${h.tenHang}</td>
                <td>${h.logoHang}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
