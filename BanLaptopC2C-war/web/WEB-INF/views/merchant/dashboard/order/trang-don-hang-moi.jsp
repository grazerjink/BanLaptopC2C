<%-- 
    Document   : trang-don-hang
    Created on : Dec 16, 2017, 2:47:42 PM
    Author     : Winson Mac
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/datatables-net/media/css/dataTables.bootstrap4.min.css"> <!-- original -->
<link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/libs/datatables-net/datatables.min.css"> <!-- customization -->
<link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/select2/css/select2.min.css"> <!-- Original -->
<link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/libs/select2/select2.min.css"> <!-- Customization -->
<link rel="stylesheet" type="text/css" href="assets/merchant/template/libs/bootstrap-daterange-picker/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="assets/merchant/template/styles/libs/bootstrap-daterange-picker/daterangepicker.min.css">
<link href="assets/merchant/template/libs/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

<script src="assets/merchant/template/libs/datatables-net/media/js/jquery.dataTables.min.js"></script>
<script src="assets/merchant/template/libs/datatables-net/media/js/dataTables.bootstrap4.min.js"></script>
<script src="assets/merchant/template/libs/select2/js/select2.min.js"></script>
<script src="assets/merchant/template/libs/momentjs/moment-with-locales.min.js"></script>
<script src="assets/merchant/template/libs/bootstrap-daterange-picker/daterangepicker.js"></script>
<style>
    div.dataTables_wrapper .dataTables_filter .form-control {
        width: 400px;
    }
    .v2q-orderdetail {
        cursor: pointer;        
    }
    .v2q-popup-detail {
        display: none;
    }    
    .daterangepicker .calendar-table .table-condensed tbody tr td.in-range {
        background-color: #f7e1b5;
    }
    .daterangepicker .calendar-table .table-condensed tbody tr td.active {
        background-color: #FDA30E;
    }
    button.applyBtn.btn.btn-sm.btn-success {
        background-color: orange;
        border-color: orange;
    }    
    button.applyBtn.btn.btn-sm.btn-success:hover {
        background-color: #F89406;
        border-color: #F89406;
    }
    .daterangepicker .calendar-table .table-condensed tbody tr td.active.off {
        color: #FFECB3;
    }
    .daterangepicker .calendar-table {
        border: 1px solid #fff;
        padding: 0;
        margin-top: 0px;
        margin-left: 10px;
        border-radius: 4px;
        background-color: #fff;
    }
    .v2q-daterange, .v2q-order-filter {
        padding: 6px 10px;
    }
</style>
<script>
    $(function () {
        $(".v2q-orderdetail").off().click(function () {
            var hinhAnh = $(this).parents("tr").find(".v2q-hinhanh").html();
            var soLuong = $(this).parents("tr").find(".v2q-soluong").html();
            var giaBan = $(this).parents("tr").find(".v2q-giaban").html();
            var ghiChu = $(this).parents("tr").find(".v2q-ghichu").html();
            var thanhTien = $(this).parents("tr").find(".v2q-thanhtien").html();
            var tenSp = $(this).parents("tr").find(".v2q-tensp").html();

            var tenNguoiNhan = $(this).parents("tr").find(".v2q-nguoinhan").html();
            var soDienThoai = $(this).parents("tr").find(".v2q-dienthoai").html();
            var diaChi = $(this).parents("tr").find(".v2q-diachi").html();
            var idDonHang = $(this).parents("tr").find(".v2q-iddonhang").html();

            $(".v2q-popup-tensp").html(tenSp);
            $(".v2q-popup-hinhanh").attr("src", "assets/merchant/images/products/" + hinhAnh);
            $(".v2q-popup-soluong").html(soLuong);
            $(".v2q-popup-giaban").html(giaBan);
            $(".v2q-popup-ghichu").html(ghiChu);
            $(".v2q-popup-thanhtien").html(thanhTien);

            $(".v2q-popup-nguoinhan").html(tenNguoiNhan);
            $(".v2q-popup-dienthoai").html(soDienThoai);
            $(".v2q-popup-diachi").html(diaChi);
            $('#tinhTrang').prop("checked", true);
            
            $("#btn-update-status").attr("data-id-dh",idDonHang);
            // Get the modal
            var modal = document.getElementById('myModal');
            modal.style.display = "block";
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
        });
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
        
        $('.ks-daterange').daterangepicker({
            locale: {
                format: 'DD/MM/YYYY',
                separator: " - ",
                applyLabel: "Lọc dữ liệu",
                cancelLabel: "Hủy",
                fromLabel: "Thời gian bắt đầu",
                toLabel: "Thời gian kết thúc",
                customRangeLabel: "Tùy chọn",
                daysOfWeek: [
                    "T2",
                    "T3",
                    "T4",
                    "T5",
                    "T6",
                    "T7",
                    "CN"
                ],
                monthNames: [
                    "Tháng 01",
                    "Tháng 02",
                    "Tháng 03",
                    "Tháng 04",
                    "Tháng 05",
                    "Tháng 06",
                    "Tháng 07",
                    "Tháng 08",
                    "Tháng 09",
                    "Tháng 10",
                    "Tháng 11",
                    "Tháng 12"
                ]                
            }
        });
        <c:if test="${param.batDau != null && param.ketThuc != null}">
            $('.ks-daterange').data('daterangepicker').setStartDate('${param.batDau}');
            $('.ks-daterange').data('daterangepicker').setEndDate('${param.ketThuc}');
        </c:if>
        
        $(".applyBtn").click(function() {
            var batDau = $("input[name=daterangepicker_start]").val();
            var ketThuc = $("input[name=daterangepicker_end]").val();
            document.location.href = 'merchant/don-dat-hang/moi/loc-du-lieu?batDau='+batDau+'&ketThuc='+ketThuc;
        });
        $(".v2q-order-filter").click(function() {
            document.location.href = 'merchant/don-dat-hang/moi/';
        });
    });
</script>
<div class="ks-header">
    <section class="ks-title">
        <h3>Danh sách đơn đặt hàng mới</h3>
    </section>
</div>
<div class="ks-content">    
    <div class="ks-body ks-content-nav">
        <div class="ks-nav-body">
            <div class="ks-nav-body-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xl-12">
                            <h4>Chọn mốc thời gian</h4>
                            <div class="form-group">
                                <input type="text" name="daterange" class="v2q-daterange ks-daterange col-xl-3">
                                <button class="btn btn-warning v2q-order-filter col-xl-1">Lọc tất cả</button>
                            </div>                            
                        </div>
                    </div>
                    <table id="ks-datatable" class="table table-bordered" width="100%">
                        <thead>
                            <tr>
                                <th>Sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Quận huyện</th>
                                <th>Phường xã</th>
                                <th>Tỉnh thành</th>
                                <th>Ngày đặt</th> 
                                <th>Thao tác</th>
                                <th class="v2q-popup-detail"></th>
                            </tr>
                        </thead>
                        <tbody> 
                            <c:forEach items="${dsDonHang}" var="d">
                                <tr>
                                    <td>${d.tenSanPham}</td>
                                    <td>${d.soLuong}</td>
                                    <td>${d.quanHuyen}</td>
                                    <td>${d.phuongXa}</td>
                                    <td>${d.tinhThanhPho}</td>
                                    <td>${d.ngayDatHang}</td>
                                    <td>
                                        <button class="btn btn-sm btn-warning-outline v2q-orderdetail">Cập nhật</button>
                                    </td>
                                    <td class="v2q-popup-detail">
                                        <div class="v2q-hinhanh">${d.hinhAnhSanPham}</div>
                                        <div class="v2q-tensp">${d.tenSanPham}</div>
                                        <div class="v2q-giaban"><fmt:formatNumber value="${d.giaBan}" pattern="###,###"/></div>
                                        <div class="v2q-soluong">${d.soLuong}</div>
                                        <div class="v2q-thanhtien"><fmt:formatNumber value="${d.thanhTien}" pattern="###,###"/></div>                     
                                        <div class="v2q-nguoinhan">${d.tenNguoiNhan}</div>
                                        <div class="v2q-dienthoai">${d.soDienThoai}</div>
                                        <div class="v2q-diachi">${d.diaChi}</div>
                                        <div class="v2q-ghichu">${d.ghiChu}</div>
                                        <div class="v2q-iddonhang">${d.idDonHang}</div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="cap-nhat-tinh-trang-moi.jsp"/>