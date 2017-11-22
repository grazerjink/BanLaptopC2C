<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>   
        <base href="${pageContext.request.contextPath}/">
        <title>V2Q Shopping Online | Mua sắm tin cậy | Hàng hóa chuẩn đẹp</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript">
            addEventListener("load", function() { 
            setTimeout(hideURLbar, 0); 
            }, false);
            function hideURLbar(){ window.scrollTo(0,1); }
        </script>
        <!-- //for-mobile-apps -->
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <link href="assets/customer/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- pignose css -->
        <link href="assets/customer/css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />
        <!-- //pignose css -->
        <link href="assets/customer/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="assets/customer/css/z-custom-style.css" rel="stylesheet" type="text/css"/>
        <!-- js -->
        <script type="text/javascript" src="assets/customer/js/jquery-2.1.4.min.js"></script>
        <!-- //js -->
        <!-- cart -->
        <script src="assets/customer/js/simpleCart.min.js"></script>
        <!-- cart -->
        <!-- for bootstrap working -->
        <script type="text/javascript" src="assets/customer/js/bootstrap-3.1.1.min.js"></script>
        <!-- //for bootstrap working -->
        <script src="assets/customer/js/jquery.easing.min.js"></script>
    </head>
    <body>
        <!-- header -->
        <jsp:include page="customer/layout/header.jsp"/>
        <!-- //header -->
        <!-- banner top -->
        <jsp:include page="customer/layout/banner-top.jsp"/>
        <!-- //banner-top -->
        <!-- main content -->
        <jsp:include page="${param.view}"/>
        <!-- //main content -->
        <!-- coupon -->
        <jsp:include page="customer/layout/coupon.jsp"/>
        <!-- //coupon -->
        <!-- footer -->
        <jsp:include page="customer/layout/footer.jsp"/>
        <!-- //footer -->
        <!-- login -->
        <jsp:include page="customer/layout/login.jsp"/>
        <!-- //login -->
    </body>
</html>