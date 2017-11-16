<%-- 
    Document   : dashboard-header-menu
    Created on : Nov 15, 2017, 10:00:58 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="ks-wrapper">
    <nav class="nav navbar-nav">
        <!-- BEGIN NAVBAR MENU -->
        <jsp:include page="dashboard-navbar-menu.jsp" />
        <!-- END NAVBAR MENU -->

        <!-- BEGIN NAVBAR ACTIONS -->
        <div class="ks-navbar-actions">
            <!-- BEGIN NAVBAR ACTION BUTTON -->
            <jsp:include page="dashboard-navbar-button.jsp" />
            <!-- END NAVBAR ACTION BUTTON -->

            <!-- BEGIN NAVBAR LANGUAGES -->
            <jsp:include page="dashboard-navbar-language.jsp" />
            <!-- END NAVBAR LANGUAGES -->

            <!-- BEGIN NAVBAR MESSAGES -->
            <jsp:include page="dashboard-navbar-message.jsp" />
            <!-- END NAVBAR MESSAGES -->

            <!-- BEGIN NAVBAR NOTIFICATIONS -->
            <jsp:include page="dashboard-navbar-notification.jsp" />
            <!-- END NAVBAR NOTIFICATIONS -->

            <!-- BEGIN NAVBAR USER -->
            <jsp:include page="dashboard-navbar-user.jsp" />
            <!-- END NAVBAR USER -->
        </div>
        <!-- END NAVBAR ACTIONS -->
    </nav>

    <!-- BEGIN NAVBAR ACTIONS TOGGLER -->
    <nav class="nav navbar-nav ks-navbar-actions-toggle">
        <a class="nav-item nav-link" href="#">
            <span class="la la-ellipsis-h ks-icon ks-open"></span>
            <span class="la la-close ks-icon ks-close"></span>
        </a>
    </nav>
    <!-- END NAVBAR ACTIONS TOGGLER -->

    <!-- BEGIN NAVBAR MENU TOGGLER -->
    <nav class="nav navbar-nav ks-navbar-menu-toggle">
        <a class="nav-item nav-link" href="#">
            <span class="la la-th ks-icon ks-open"></span>
            <span class="la la-close ks-icon ks-close"></span>
        </a>
    </nav>
    <!-- END NAVBAR MENU TOGGLER -->
</div>
