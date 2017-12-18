<%-- 
    Document   : cap-nhat-tinh-trang
    Created on : Dec 17, 2017, 5:46:40 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
    /* The Modal (background) */
    .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 2; /* Sit on top */
        padding-top: 100px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    }

    /* Modal Content */
    .modal-content {
        position: relative;
        background-color: #fefefe;
        margin: auto;
        padding: 0;
        border: 1px solid #888;
        width: 75%;
        box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
        -webkit-animation-name: animatetop;
        -webkit-animation-duration: 0.4s;
        animation-name: animatetop;
        animation-duration: 0.4s
    }

    /* Add Animation */
    @-webkit-keyframes animatetop {
        from {top:-300px; opacity:0} 
        to {top:0; opacity:1}
    }

    @keyframes animatetop {
        from {top:-300px; opacity:0}
        to {top:0; opacity:1}
    }

    /* The Close Button */
    .close {
        color: white;
        font-size: 32px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }

    .modal-header {
        padding: 2px 16px;
        background-color: #FDA30E;
        color: white;
        height: 50px;
    }
    .modal-header div{
        margin-top: 10px;
        font-size: 22px;
        color: #fff;
    }

    .modal-body {
        padding: 2px 16px;
    }
    .modal-body p {
        font-size: 14px;
    }
    .modal-body span {
        margin-left: 40px;
    }
    .modal-footer {
        padding: 2px 16px;
        background-color: #FFECB3;
        color: white;
    }
    .v2q-table-title {
        width: 150px;
    }
    .modal-header div {
        margin-top: 2px;
    }
    .v2q-popup-tinhtrang label {
        margin-right: 10px;
    }
</style>
<script>
    $(function () {
        $("#btn-update-status").click(function () {
            var idDonHang = $(this).attr("data-id-dh");
            var idTinhTrang = $("input[name=tinhTrang]:checked").val();
            alert(idTinhTrang);
            $.ajax({
                url: "merchant/don-dat-hang/dang-giao/cap-nhat-tinh-trang/",
                dataType: 'json',
                data: {
                    idDonHang: idDonHang,
                    idTinhTrang: idTinhTrang
                },
                success: function (data) {
                    alert(data);
                    window.location.reload();
                }
            });
        });
    });
</script>
<!-- The Modal -->
<div id="myModal" class="modal">
    <!-- Modal content -->
    <div class="modal-content">
        <div class="modal-header">
            <div class="pull-left">Thông tin chi tiết</div>            
            <span class="close pull-right">&times;</span>
        </div>
        <div class="modal-body row">          
            <div class="col-lg-4">
                <img class="v2q-popup-hinhanh" src="" width="100%"/> 
            </div>
            <div class="col-lg-8" style="line-height: 10px;">
                <table class="v2q-popup-table table table-bordered">
                    <tbody>    
                        <tr>
                            <td class="v2q-table-title">Tên sản phẩm: </td>
                            <td class="v2q-popup-tensp"></td>
                        </tr>
                        <tr>
                            <td class="v2q-table-title">Giá bán: </td>
                            <td class="v2q-popup-giaban"></td>
                        </tr>
                        <tr>
                            <td class="v2q-table-title">Số lượng: </td>
                            <td class="v2q-popup-soluong"></td>
                        </tr>
                        <tr>
                            <td class="v2q-table-title">Thành tiền: </td>
                            <td class="v2q-popup-thanhtien"></td>
                        </tr>
                        <tr>
                            <td class="v2q-table-title">Tên người nhận: </td>
                            <td class="v2q-popup-nguoinhan"></td>
                        </tr>
                        <tr>
                            <td class="v2q-table-title">Số điện thoại: </td>
                            <td class="v2q-popup-dienthoai"></td>
                        </tr>
                        <tr>
                            <td class="v2q-table-title">Địa chỉ: </td>
                            <td class="v2q-popup-diachi"></td>
                        </tr>
                        <tr>
                            <td class="v2q-table-title">Ghi chú: </td>
                            <td class="v2q-popup-ghichu"></td>
                        </tr>
                        <tr>
                            <td class="v2q-table-title">Tình trạng: </td>
                            <td class="v2q-popup-tinhtrang">
                                <label for="tinhTrang"> 
                                    <input type="radio" name="tinhTrang" id="tinhTrang" value="DG" />
                                    Đang giao hàng
                                </label>
                                <label for="tinhTrang1"> 
                                    <input type="radio" name="tinhTrang" id="tinhTrang1" value="TC" />
                                    Giao hàng thành công
                                </label>
                                <label for="tinhTrang2"> 
                                    <input type="radio" name="tinhTrang" id="tinhTrang2" value="DH" />
                                    Hủy đơn hàng
                                </label>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>            
        </div>
        <div class="modal-footer">
            <a class="pull-right btn btn-warning" id="btn-update-status">Cập nhật tình trạng</a>
        </div>
    </div>
</div>