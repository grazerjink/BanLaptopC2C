<%-- 
    Document   : trang-danh-sach-san-pham
    Created on : Dec 6, 2017, 2:01:43 PM
    Author     : Winson Mac
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    .pagination-sm .page-link {
        padding: 8px 14px;
        font-size: 12px;
    }
    #v2q-current-page {
        padding: 5px 0;
        font-size: 14px;
    }
</style>
<script src="assets/vendor/esimakin-twbs-pagination/jquery.twbsPagination.js" type="text/javascript"></script>
<script>
    $(function () {
        var pageSize = 11;
        var pageCount = 0;
        $.ajax({
            url: "merchant/lay-so-trang/",
            data: {
                pageSize: pageSize
            },
            success: function (res) {
                pageCount = parseInt(res);
                $('#v2q-pages').twbsPagination({
                    totalPages: pageCount,
                    visiblePages: 5,
                    first: "Đầu tiên",
                    prev: "Trước",
                    next: "Tiếp",
                    last: "Cuối cùng",
                    onPageClick: function (event, page) {
                        $.ajax({
                            url: "merchant/tai-trang/",
                            data: {
                                pageNo: page - 1,
                                pageSize: pageSize
                            },
                            success: function (data) { 
                                $('#v2q-current-page').html("Đang hiển thị trang "+page+" trên tổng số "+pageCount+" trang.");
                                $('#v2q-page-content').html(data);
                            }
                        });
                    }
                });
            }
        });
    <c:if test="${param.success != null && fn:length(param.success)>0}">
        showSuccessToast("${param.success}");
    </c:if>
    <c:if test="${param.error != null && fn:length(param.success)>0}">
        showErrorToast("${param.error}");
    </c:if>
    });
</script>
<div class="ks-header">
    <section class="ks-title-and-subtitle">
        <div class="ks-title-block">
            <h3 class="ks-main-title">Danh sách sản phẩm đang đăng bán</h3>
        </div>
    </section>
</div>
<div class="ks-content">
    <div class="ks-body">
        <div class="container-fluid">
            <div class="row mb-5" id="v2q-page-content">

            </div>
            <div class="row mb-5">
                <div class="col-lg-12">
                    <div class="pull-left" id="v2q-current-page">Đang hiển thị trang 1 trên tổng số 1 trang.</div>
                    <ul id="v2q-pages" class="pagination-sm pull-right"></ul>
                </div>
            </div>
        </div>
    </div>
</div>