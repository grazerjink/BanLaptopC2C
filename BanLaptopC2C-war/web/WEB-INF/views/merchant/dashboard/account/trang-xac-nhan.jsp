<%-- 
    Document   : trang-xac-nhan
    Created on : Nov 19, 2017, 9:41:19 AM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<div class="ks-header">
    <section class="ks-title-and-subtitle">
        <div class="ks-title-block">
            <h3 class="ks-main-title">Mua gói tin đăng</h3>
            <div class="ks-sub-title">Trạng thái thanh toán</div>
        </div>
        <button class="btn btn-secondary-outline ks-light ks-no-text ks-tabbed-sidebar-navigation-block-toggle" data-block-toggle=".ks-dashboard-tabbed-sidebar-sidebar">
            <span class="ks-icon la la-bars"></span>
        </button>
    </section>
</div>
<div class="ks-content">
    <div class="ks-body">
        <div class="ks-dashboard-tabbed-sidebar">
            <div class="ks-dashboard-tabbed-sidebar-widgets">
                <div class="row">
                    <div class="col-12">
                        <p class="v2q-status">${message}</p>
                    </div>
                </div>
            </div>
            <jsp:include page="../../layout/dashboard/dashboard-tab-sidebar.jsp"/>
        </div>
    </div>
</div>
<script>
    $(function () {
    <c:if test="${success != null}">
        showSuccessToast("${success}");
    </c:if>
    <c:if test="${error != null}">
        showErrorToast("${error}");
    </c:if>
    });
</script>   