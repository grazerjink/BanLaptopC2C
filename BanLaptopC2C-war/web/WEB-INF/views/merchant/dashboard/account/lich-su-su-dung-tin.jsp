<%-- 
    Document   : doi-mat-khau
    Created on : Dec 4, 2017, 11:23:28 AM
    Author     : Winson Mac
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    th, td {
        text-align: center;
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
                            <th>Thời gian hoạt động</th>
                            <th>Số tin còn lại</th>
                            <th>Đăng tin</th>
                            <th>Mua tin</th>
                            <th>Gói tin đăng</th>
                            <th>Phương thức thanh toán</th>
                            <th>Trạng thái</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${lsTinDang}" var="td">
                            <tr>
                                <td><fmt:formatDate value="${td.ngayCapNhat}" pattern="dd / MM / yyyy - HH:mm:ss"/></td>
                                <td>${td.soTinTon}</td>
                                <c:choose>
                                    <c:when test="${td.soTinThayDoi lt 0}">
                                        <td>${td.soTinThayDoi}</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                        <td>-</td>
                                    </c:when>
                                    <c:otherwise> 
                                        <td>-</td>
                                        <td>+${td.soTinThayDoi}</td>
                                        <td>${td.idPhieuMuaTin.idGoiTin.tenGoiTin} ( <fmt:formatNumber value="${td.idPhieuMuaTin.idGoiTin.giaBan}" pattern="###,###"/> VNĐ )</td>
                                        <c:choose>
                                            <c:when test="${td.idPhieuMuaTin.phuongThucThanhToan eq 1}">
                                                <td>Thanh toán PayPal</td>
                                                <td>Thành công</td>
                                            </c:when>
                                            <c:otherwise> 
                                                <td>Thanh toán trực tiếp</td>
                                                <td>
                                                    ${td.idPhieuMuaTin.idTinhTrang.id == "TC" ? "Thành công" : "Chờ thanh toán"}
                                                </td>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:otherwise>
                                </c:choose>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
