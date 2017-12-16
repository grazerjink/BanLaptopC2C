<%-- 
    Document   : doi-mat-khau
    Created on : Dec 4, 2017, 11:23:28 AM
    Author     : Winson Mac
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/datatables-net/media/css/dataTables.bootstrap4.min.css"> <!-- original -->
<link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/libs/datatables-net/datatables.min.css"> <!-- customization -->
<link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/select2/css/select2.min.css"> <!-- Original -->
<link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/libs/select2/select2.min.css"> <!-- Customization -->
<script src="assets/merchant/template/libs/datatables-net/media/js/jquery.dataTables.min.js"></script>
<script src="assets/merchant/template/libs/datatables-net/media/js/dataTables.bootstrap4.min.js"></script>
<script src="assets/merchant/template/libs/select2/js/select2.min.js"></script>
<style>
    div.dataTables_wrapper .dataTables_filter .form-control {
        width: 400px;
    }
</style>
<script>
    $(function () {
        $('#ks-datatable').DataTable({
            pagingType: "full_numbers",
            language: {
                info: "Đang hiển thị trang _PAGE_ trong tổng _PAGES_ trang",
                infoFiltered: " (trong tổng số _MAX_ kết quả)",
                infoEmpty: "Không có dữ liệu để hiển thị",
                emptyTable: "Không có dữ liệu để hiển thị",
                lengthMenu: "Hiển thị _MENU_ kết quả",
                search: "Tìm kiếm",
                searchPlaceholder: "Nhập nội dung cần tìm...",
                zeroRecords: "Không tìm thấy dữ liệu cần tìm",
                paginate: {
                    first: "Đầu tiên",
                    last: "Cuối cùng",
                    next: "Tiếp",
                    previous: "Trước"
                }
            },
            initComplete: function () {
                $('.dataTables_wrapper select').select2({
                    minimumResultsForSearch: Infinity
                });
            }
        });
    });
</script>
<div class="tab-pane" id="lich-su-su-dung-tin" role="tabpanel" aria-expanded="false">
    <div class="ks-nav-body">
        <div class="ks-nav-body-wrapper">
            <div class="container-fluid">
                <table id="ks-datatable" class="table table-bordered" width="100%">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Position</th>
                            <th>Office</th>
                            <th>Age</th>
                            <th>Start date</th>
                            <th>Salary</th>
                        </tr>
                    </thead>
                    <!--                    <tfoot>
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th>Office</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                <th>Salary</th>
                                            </tr>
                                        </tfoot>-->
                    <tbody>
                        <c:forEach items="${lichSuTinDang}" var="td">
                            <tr>
                                <td>${td.ngayCapNhat}</td>
                                <c:choose>
                                    <c:when test="${td.soTinThayDoi lt 0}">
                                        <td> - </td>
                                        <td>${td.soTinThayDoi}</td>
                                    </c:when>
                                    <c:otherwise>
                                        <td>${td.soTinThayDoi}</td>
                                        <td> - </td>
                                    </c:otherwise>
                                </c:choose>
                                <td></td>
                                <td>61</td>
                                <td>2011/04/25</td>
                                <td>$320,800</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
