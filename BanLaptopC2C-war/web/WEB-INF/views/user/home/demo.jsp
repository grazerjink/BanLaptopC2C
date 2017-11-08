<%-- 
    Document   : demo
    Created on : Nov 7, 2017, 4:41:48 PM
    Author     : Winson Mac
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<ul>
    <c:forEach items="${dsHSX}" var="h">
        <li>
            <p>${h.id}</p>
            <p>${h.tenHang}</p>
            <p>${h.logoHang}</p>
            <p>${h.anHien}</p>
        </li>
    </c:forEach>
</ul>