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

        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link rel="stylesheet" type="text/css" href="assets/merchant/libs/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/fonts/line-awesome/css/line-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/fonts/montserrat/styles.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/libs/tether/css/tether.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/libs/jscrollpane/jquery.jscrollpane.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/libs/flag-icon-css/css/flag-icon.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/styles/common.min.css">
        <!-- END GLOBAL MANDATORY STYLES -->
        
        <!-- BEGIN THEME STYLES -->
        <link rel="stylesheet" type="text/css" href="assets/merchant/styles/themes/primary.min.css">
        <link class="ks-sidebar-dark-style" rel="stylesheet" type="text/css" href="assets/merchant/styles/themes/sidebar-black.min.css">
        <!-- END THEME STYLES -->

        <link rel="stylesheet" type="text/css" href="assets/merchant/fonts/kosmo/styles.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/fonts/weather/css/weather-icons.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/libs/c3js/c3.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/libs/noty/noty.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/styles/widgets/payment.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/styles/widgets/panels.min.css">
        <link rel="stylesheet" type="text/css" href="assets/merchant/styles/dashboard/tabbed-sidebar.min.css">

        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="assets/merchant/libs/jquery/jquery.min.js"></script>
        <script src="assets/merchant/libs/responsejs/response.min.js"></script>
        <script src="assets/merchant/libs/loading-overlay/loadingoverlay.min.js"></script>
        <script src="assets/merchant/libs/tether/js/tether.min.js"></script>
        <script src="assets/merchant/libs/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/merchant/libs/jscrollpane/jquery.jscrollpane.min.js"></script>
        <script src="assets/merchant/libs/jscrollpane/jquery.mousewheel.js"></script>
        <script src="assets/merchant/libs/flexibility/flexibility.js"></script>
        <script src="assets/merchant/libs/noty/noty.min.js"></script>
        <!-- END PAGE LEVEL PLUGINS -->

        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="assets/merchant/scripts/common.min.js"></script>
        <!-- END THEME LAYOUT SCRIPTS -->

        <script src="assets/merchant/libs/d3/d3.min.js"></script>
        <script src="assets/merchant/libs/c3js/c3.min.js"></script>
        <script src="assets/merchant/libs/noty/noty.min.js"></script>
        <script src="assets/merchant/libs/maplace/maplace.min.js"></script>
        <script src="https://maps.google.com/maps/api/js?libraries=geometry&v=3.26&key=AIzaSyBBjLDxcCjc4s9ngpR11uwBWXRhyp3KPYM"></script>
    </head>
    <body class="ks-navbar-fixed ks-sidebar-sections ks-sidebar-position-fixed ks-page-header-fixed ks-theme-primary ks-page-loading">
        <!-- BEGIN HEADER -->
        <jsp:include page="merchant/layout/dashboard-header.jsp"/>
        <!-- END HEADER -->

        <div class="ks-page-container ks-dashboard-tabbed-sidebar-fixed-tabs">
            <!-- BEGIN DEFAULT SIDEBAR -->
            <jsp:include page="merchant/layout/dashboard-sidebar.jsp"/>
            <!-- END DEFAULT SIDEBAR -->
            <!-- BEGIN MAIN CONTENT -->
            <div class="ks-column ks-page">
                <jsp:include page="${param.view}"/>
            </div>
            <!-- END MAIN CONTENT -->
        </div>
        
        <script type="application/javascript">
            (function ($) {
            $(document).ready(function () {
            c3.generate({
            bindto: '#ks-next-payout-chart',
            data: {
            columns: [
            ['data1', 6, 5, 6, 5, 7, 8, 7]
            ],
            types: {
            data1: 'area'
            },
            colors: {
            data1: '#81c159'
            }
            },
            legend: {
            show: false
            },
            tooltip: {
            show: false
            },
            point: {
            show: false
            },
            axis: {
            x: {show:false},
            y: {show:false}
            }
            });

            c3.generate({
            bindto: '#ks-total-earning-chart',
            data: {
            columns: [
            ['data1', 6, 5, 6, 5, 7, 8, 7]
            ],
            types: {
            data1: 'area'
            },
            colors: {
            data1: '#4e54a8'
            }
            },
            legend: {
            show: false
            },
            tooltip: {
            show: false
            },
            point: {
            show: false
            },
            axis: {
            x: {show:false},
            y: {show:false}
            }
            });

            c3.generate({
            bindto: '.ks-chart-orders-block',
            data: {
            columns: [
            ['Revenue', 150, 200, 220, 280, 400, 160, 260, 400, 300, 400, 500, 420, 500, 300, 200, 100, 400, 600, 300, 360, 600],
            ['Profit', 350, 300,  200, 140, 200, 30, 200, 100, 400, 600, 300, 200, 100, 50, 200, 600, 300, 500, 30, 200, 320]
            ],
            colors: {
            'Revenue': '#f88528',
            'Profit': '#81c159'
            }
            },
            point: {
            r: 5
            },
            grid: {
            y: {
            show: true
            }
            }
            });

            setTimeout(function () {
            new Noty({
            text: '<strong>Welcome to Kosmo Admin Template</strong>! <br> You successfully read this important alert message.',
            type   : 'information',
            theme  : 'mint',
            layout : 'topRight',
            timeout: 3000
            }).show();
            }, 1500);

            var maplace = new Maplace({
            map_div: '#ks-payment-widget-table-and-map-map',
            controls_on_map: false
            });
            maplace.Load();
            });
            })(jQuery);
        </script>
        
        <div class="ks-mobile-overlay"></div>

        <!-- BEGIN SETTINGS BLOCK -->
        <jsp:include page="merchant/layout/dashboard-setting-block.jsp"/>
        <!-- END SETTINGS BLOCK -->
        
    </body>
</html>