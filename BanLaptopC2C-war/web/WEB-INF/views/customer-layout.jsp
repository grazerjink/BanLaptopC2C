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
        <link href="assets/customer/images/v2q-icon.png" rel="icon"/>
        <!-- //for-mobile-apps --> 
        <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <link href="assets/customer/template/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- pignose css -->
        <link href="assets/customer/template/css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />
        <!-- //pignose css -->
        <link href="assets/customer/template/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="assets/customer/template/css/z-custom-style.css" rel="stylesheet" type="text/css"/>
        <link href="assets/vendor/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
        <link href="assets/vendor/toastr/toastr.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/customer/css/home-styles.css" rel="stylesheet" type="text/css"/>
        <!-- js -->
        <script type="text/javascript" src="assets/customer/template/js/jquery-2.1.4.min.js"></script>
        <script src="assets/vendor/jquery-validation-1.17.0/jquery.validate.min.js" type="text/javascript"></script>
        <script src="assets/vendor/jquery-validation-1.17.0/additional-methods.min.js" type="text/javascript"></script>        
        <!-- //js -->
        <!-- cart -->
        <script src="assets/customer/template/js/simpleCart.min.js"></script>
        <!-- cart -->
        <!-- for bootstrap working -->
        <script src="assets/customer/template/js/bootstrap-3.1.1.min.js"></script>
        <!-- //for bootstrap working -->
        <script src="assets/customer/template/js/jquery.easing.min.js"></script>        
        <script src="assets/vendor/toastr/toastr.min.js" type="text/javascript"></script>
        <script src="assets/customer/js/show-toast.js" type="text/javascript"></script> 
    </head>
    <body>
        <!-- header -->
        <jsp:include page="customer/layout/template/header.jsp"/>
        <!-- //header -->
        <!-- header-bot -->
        <jsp:include page="customer/layout/template/header-bottom.jsp"/>
        <!-- //header-bot -->
        <!-- banner top -->
        <jsp:include page="customer/layout/template/banner-top.jsp"/>
        <!-- //banner-top -->        
        <!-- content-bottom -->
        <%--<jsp:include page="../layout/content-bottom.jsp"/>--%>
        <!-- //content-bottom -->
        <!-- main content -->
        <jsp:include page="${param.view}"/>
        <!-- //main content -->
        <!-- coupon -->
        <jsp:include page="customer/layout/template/coupon.jsp"/>
        <!-- //coupon -->
        <!-- footer -->
        <jsp:include page="customer/layout/template/footer.jsp"/>
        <!-- //footer -->
        <!-- login -->
        <jsp:include page="customer/layout/template/login.jsp"/>
        <!-- //login -->         
    </body>
</html>