<%-- 
    Document   : admin-layout
    Created on : Nov 12, 2017, 11:16:39 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base href="${pageContext.request.contextPath}/">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang quản trị người dùng | Admin Dashboard</title>
    </head>
    <body>
        <jsp:include page="${param.view}"/>
    </body>
</html>
