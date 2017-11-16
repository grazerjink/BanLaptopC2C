<%-- 
    Document   : merchant-layout
    Created on : Nov 13, 2017, 9:14:38 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <base href="${pageContext.request.contextPath}/">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Bán hàng cùng V2Q Mall | Nhanh tay đăng ký gian hàng buôn bán | Kiếm tiền hàng tháng </title>

        <link href="//fonts.googleapis.com/css?family=Cabin:700&amp;subset=vietnamese" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Libre+Barcode+39+Text" rel="stylesheet">

        <link rel="stylesheet" type="text/css" href="assets/merchant/libs/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/fonts/line-awesome/css/line-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/fonts/open-sans/styles.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/libs/tether/css/tether.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/styles/common.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/styles/pages/auth.min.css">

        <script src="assets/merchant/libs/jquery/jquery.min.js"></script>
        <script src="assets/merchant/libs/tether/js/tether.min.js"></script>
        <script src="assets/merchant/libs/bootstrap/js/bootstrap.min.js"></script>

    </head>
    <body>
        <div class="ks-page">
            <jsp:include page="${param.view}"/>    
        </div>
    </body>
</html>