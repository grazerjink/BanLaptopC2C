<%-- 
    Document   : trang-mua-goi-tin
    Created on : Nov 18, 2017, 4:12:42 PM
    Author     : Winson Mac
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="ks-header">
    <section class="ks-title-and-subtitle">
        <div class="ks-title-block">
            <h3 class="ks-main-title">Mua gói tin đăng</h3>
            <div class="ks-sub-title">Lựa chọn các gói tin sau</div>
        </div>
        <button class="btn btn-secondary-outline ks-light ks-no-text ks-tabbed-sidebar-navigation-block-toggle" data-block-toggle=".ks-dashboard-tabbed-sidebar-sidebar">
            <span class="ks-icon la la-bars"></span>
        </button>
    </section>
</div>
<div class="ks-content">
    <div class="ks-body">
        <div class="ks-dashboard-tabbed-sidebar">
            <div class="ks-dashboard-tabbed-sidebar-widgets container-fluid">
                <div class="row">
                    <c:forEach items="${dsGoiTin}" var="g">
                        <div class="col-xs-12 col-sm-12 col-lg-4 col-md-4 v2q-wrapper">
                            <div class="card ks-widget-payment-price-ratio ks-yellow v2q-box">
                                <div class="v2q-box-title">
                                    ${fn:toUpperCase(g.tenGoiTin)}<p>${g.tenLoai}</p>
                                </div>
                                <div class="v2q-amount"><fmt:formatNumber value="${g.giaBan}" pattern="###,###"/><span>đ</span></div>
                                <div class="ks-price-ratio-progress">
                                    <span class="ks-icon ks-icon-circled-up-right"></span>
                                    <div class="ks-text v2q-quantity"><span>${g.soTin} tin</span></div>
                                </div>
                                <div class="v2q-box-button">
                                    <a class="btn btn-lg btn-default v2q-btn v2q-confirm" data-id="${g.id}"><span>Mua ngay</span></a>
                                    <br>
                                    <a href="merchant/thanh-toan/${g.id}" class="btn btn-lg btn-warning v2q-btn"><span>Thanh toán qua Paypal</span></a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>                    
                </div>
            </div>
            <jsp:include page="../../layout/dashboard/dashboard-tab-sidebar.jsp"/>
        </div>
    </div>
</div>
<jsp:include page="../../layout/dashboard/dashboard-popup.jsp"/>
<script>
    $(function () {
    <c:if test="${param.success != null && fn:length(param.success)>0}">
        showSuccessToast("${param.success}");
    </c:if>
    <c:if test="${error != null}">
        showErrorToast("${error}");
    </c:if>
        $(".v2q-confirm").click(function () {
            // Get the modal
            var modal = document.getElementById('myModal');
            // Get the <span> element that closes the modal
            var span = document.getElementsByClassName("close")[0];

            // When the user clicks on <span> (x), close the modal
            span.onclick = function () {
                modal.style.display = "none";
            };
            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target === modal) {
                    modal.style.display = "none";
                }
            };
            $.ajax({
                url: "merchant/lay-goi-tin/",
                dataType: 'json',
                data: {
                    id: $(this).attr("data-id")
                },
                success: function (res) {
                    $("span#name").html(res.tenGoiTin);
                    $("span#type").html(res.tenLoai);
                    $("span#quantity").html(res.soTin);
                    $("span#price").html(res.giaBan);
                    $("#buy-confirm").attr("href", "merchant/xac-nhan-goi-tin/"+res.id);
                    modal.style.display = "block";
                }
            });
            return false;
        });
    });
</script>        