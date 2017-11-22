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

        <link href="//fonts.googleapis.com/css?family=Libre+Barcode+39+Text" rel="stylesheet">

        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/fonts/line-awesome/css/line-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/fonts/montserrat/styles.css">

        <link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/tether/css/tether.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/jscrollpane/jquery.jscrollpane.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/flag-icon-css/css/flag-icon.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/common.min.css">
        <!-- END GLOBAL MANDATORY STYLES -->

        <!-- BEGIN THEME STYLES -->
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/themes/primary.min.css">
        <link class="ks-sidebar-dark-style" rel="stylesheet" type="text/css" href="assets/merchant/template/styles/themes/sidebar-black.min.css">
        <!-- END THEME STYLES -->

        <link rel="stylesheet" type="text/css" href="assets/merchant/template/fonts/kosmo/styles.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/fonts/weather/css/weather-icons.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/c3js/c3.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/widgets/payment.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/widgets/panels.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/dashboard/tabbed-sidebar.min.css">

        <!-- MY CUSTOM CSS -->
        <link href="assets/merchant/css/dashboard-styles.css" rel="stylesheet" type="text/css"/>
        <link href="assets/vendor/toastr/build/toastr.min.css" rel="stylesheet" type="text/css"/>

        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="assets/merchant/template/libs/jquery/jquery.min.js"></script>
        <script src="assets/merchant/template/libs/responsejs/response.min.js"></script>
        <script src="assets/merchant/template/libs/loading-overlay/loadingoverlay.min.js"></script>
        <script src="assets/merchant/template/libs/tether/js/tether.min.js"></script>
        <script src="assets/merchant/template/libs/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/merchant/template/libs/jscrollpane/jquery.jscrollpane.min.js"></script>
        <script src="assets/merchant/template/libs/jscrollpane/jquery.mousewheel.js"></script>
        <script src="assets/merchant/template/libs/flexibility/flexibility.js"></script>
        <!-- END PAGE LEVEL PLUGINS -->

        <script src="assets/merchant/template/libs/d3/d3.min.js"></script>
        <script src="assets/merchant/template/libs/c3js/c3.min.js"></script>
        <script src="assets/merchant/template/libs/maplace/maplace.min.js"></script>
        <script src="https://maps.google.com/maps/api/js?libraries=geometry&v=3.26&key=AIzaSyBBjLDxcCjc4s9ngpR11uwBWXRhyp3KPYM"></script>
        <!--<script src="assets/merchant/js/dashboard-scripts.js" type="application/javascript"></script>-->    
        <script src="assets/vendor/toastr/build/toastr.min.js"></script>
        <script src="assets/merchant/js/show-toast.js" type="text/javascript"></script>

    </head>
    <body class="ks-navbar-fixed ks-sidebar-sections ks-sidebar-position-fixed ks-page-header-fixed ks-theme-primary ks-page-loading">
        <!-- BEGIN HEADER -->
        <jsp:include page="merchant/layout/dashboard/dashboard-header.jsp"/>
        <!-- END HEADER -->
        <div class="ks-page-container ks-dashboard-tabbed-sidebar-fixed-tabs">
            <!-- BEGIN DEFAULT SIDEBAR -->
            <jsp:include page="merchant/layout/dashboard/dashboard-sidebar.jsp"/>
            <!-- END DEFAULT SIDEBAR -->
            <div class="ks-column ks-page">
                <jsp:include page="${param.view}"/>
            </div>
        </div> 

        <!-- BEGIN SETTINGS BLOCK -->
        <%--<jsp:include page="merchant/layout/dashboard/dashboard-setting-block.jsp"/>--%>
        <!-- END SETTINGS BLOCK -->  
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="assets/merchant/js/my-custom-common.js"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
    </body>
</html> 