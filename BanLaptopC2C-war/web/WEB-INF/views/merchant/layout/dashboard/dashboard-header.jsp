<%-- 
    Document   : header
    Created on : Nov 16, 2017, 8:13:34 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar ks-navbar">
    <!-- BEGIN HEADER INNER -->
    <!-- BEGIN LOGO -->
    <jsp:include page="../dashboard/dashboard-header-logo.jsp"/>
    <!-- END LOGO -->
    <!-- BEGIN MENUS -->
    <div class="ks-wrapper">
        <nav class="nav navbar-nav">
            <!-- BEGIN NAVBAR MENU -->
            <%--<jsp:include page="../dashboard/dashboard-header-navbar-menu.jsp"/>--%>
            <!-- END NAVBAR MENU -->

            <!-- BEGIN NAVBAR ACTIONS -->
            <div class="ks-navbar-actions">
                <!-- BEGIN NAVBAR LANGUAGES -->
                <%--<jsp:include page="../dashboard/dashboard-header-navbar-language.jsp"/>--%>
                <!-- END NAVBAR LANGUAGES --> 

                <!-- BEGIN NAVBAR MESSAGES -->
                <%--<jsp:include page="../dashboard/dashboard-header-navbar-message.jsp"/>--%>
                <!-- END NAVBAR MESSAGES -->

                <!-- BEGIN NAVBAR NOTIFICATIONS -->
                <%--<jsp:include page="../dashboard/dashboard-header-navbar-notification.jsp"/>--%>
                <!-- END NAVBAR NOTIFICATIONS -->

                <!-- BEGIN NAVBAR USER -->
                <jsp:include page="../dashboard/dashboard-header-navbar-user.jsp"/>
                <!-- END NAVBAR USER -->
            </div>
            <!-- END NAVBAR ACTIONS -->
        </nav>

        <!-- BEGIN NAVBAR ACTIONS TOGGLER -->
        <nav class="nav navbar-nav ks-navbar-actions-toggle">
            <a class="nav-item nav-link" href="javascript:void(0)">
                <!--<span class="la la-ellipsis-h ks-icon ks-open"></span>-->
                <span class="ks-avatar ks-icon ks-open">
                    <img src="assets/merchant/images/user-logo.png" width="25" height="25"/>
                </span>
                <span class="la la-close ks-icon ks-close"></span>
            </a>
        </nav>
        <!-- END NAVBAR ACTIONS TOGGLER -->

        <!-- BEGIN NAVBAR MENU TOGGLER -->
<!--        <nav class="nav navbar-nav ks-navbar-menu-toggle">
            <a class="nav-item nav-link" href="javascript:void(0)">
                <span class="la la-th ks-icon ks-open"></span>
                <span class="la la-close ks-icon ks-close"></span>
            </a>
        </nav>-->
        <!-- END NAVBAR MENU TOGGLER -->
    </div>
    <!-- END MENUS -->
    <!-- END HEADER INNER -->
</nav>
