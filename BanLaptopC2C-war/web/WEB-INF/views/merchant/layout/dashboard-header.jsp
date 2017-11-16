<%-- 
    Document   : dashboard-header
    Created on : Nov 15, 2017, 10:00:15 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar ks-navbar">
    <!-- BEGIN HEADER INNER -->
    <!-- BEGIN LOGO -->
    <div href="index.html" class="navbar-brand">
        <!-- BEGIN RESPONSIVE SIDEBAR TOGGLER -->
        <a href="#" class="ks-sidebar-toggle"><i class="ks-icon la la-bars" aria-hidden="true"></i></a>
        <a href="#" class="ks-sidebar-mobile-toggle"><i class="ks-icon la la-bars" aria-hidden="true"></i></a>
        <!-- END RESPONSIVE SIDEBAR TOGGLER -->

        <div class="ks-navbar-logo">
            <a href="index.html" class="ks-logo">Kosmo</a>

            <!-- BEGIN GRID NAVIGATION -->
            <jsp:include page="dashboard-grid-navigation.jsp" />
            <!-- END GRID NAVIGATION -->
        </div>
    </div>
    <!-- END LOGO -->

    <!-- BEGIN MENUS -->
    <jsp:include page="dashboard-header-menu.jsp" />
    <!-- END MENUS -->
    <!-- END HEADER INNER -->
</nav>