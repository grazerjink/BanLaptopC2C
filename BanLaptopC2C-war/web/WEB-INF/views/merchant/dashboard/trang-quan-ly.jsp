<%-- 
    Document   : dashboard
    Created on : Nov 15, 2017, 9:30:45 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div class="ks-header">
    <section class="ks-title-and-subtitle">
        <div class="ks-title-block">
            <h3 class="ks-main-title">Dashboard / Tabbed Sidebar</h3>
            <div class="ks-sub-title">This is header sub title</div>
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
                    <div class="col-lg-3">
                        <div class="card ks-widget-payment-simple-amount-item ks-purple">
                            <div class="payment-simple-amount-item-icon-block">
                                <span class="ks-icon-combo-chart ks-icon"></span>
                            </div>

                            <div class="payment-simple-amount-item-body">
                                <div class="payment-simple-amount-item-amount">
                                    <span class="ks-amount">35.000.000 VNĐ</span>
                                    <span class="ks-amount-icon ks-icon-circled-up-right"></span>
                                </div>
                                <div class="payment-simple-amount-item-description">
                                    Tổng lợi nhuận <span class="ks-progress-type">+56.000.000 VNĐ</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="card ks-widget-payment-simple-amount-item ks-green">
                            <div class="payment-simple-amount-item-icon-block">
                                <span class="la la-pie-chart ks-icon"></span>
                            </div>

                            <div class="payment-simple-amount-item-body">
                                <div class="payment-simple-amount-item-amount">
                                    <span class="ks-amount">75.000.000 VNĐ</span>
                                    <span class="ks-amount-icon ks-icon-circled-up-right"></span>
                                </div>
                                <div class="payment-simple-amount-item-description">
                                    Tổng doanh thu <span class="ks-progress-type">+125.000.000 VNĐ</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="card ks-widget-payment-simple-amount-item ks-pink">
                            <div class="payment-simple-amount-item-icon-block">
                                <span class="ks-icon-user ks-icon"></span>
                            </div>

                            <div class="payment-simple-amount-item-body">
                                <div class="payment-simple-amount-item-amount">
                                    <span class="ks-amount">2500 khách</span>
                                    <span class="ks-amount-icon ks-icon-circled-down-left"></span>
                                </div>
                                <div class="payment-simple-amount-item-description">
                                   Lượng khách <span class="ks-progress-type">+3226 khách</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="card ks-widget-payment-simple-amount-item ks-green">
                            <div class="payment-simple-amount-item-icon-block">
                                <span class="la la-pie-chart ks-icon"></span>
                            </div>

                            <div class="payment-simple-amount-item-body">
                                <div class="payment-simple-amount-item-amount">
                                    <span class="ks-amount">55.000.000 VNĐ</span>
                                    <span class="ks-amount-icon ks-icon-circled-up-right"></span>
                                </div>
                                <div class="payment-simple-amount-item-description">
                                    Lợi nhuận TB <span class="ks-progress-type">+85.000.000 VNĐ</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="../layout/dashboard/dashboard-tab-sidebar.jsp"/>
        </div>
    </div>
</div>