<%-- 
    Document   : danhsach-phieumuatin
    Created on : Nov 30, 2017, 8:16:13 PM
    Author     : Vivi
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h2> Danh sách phiếu mua tin </h2>
<div class="box dark">
    <header>
        <div class="icons"><i class="fa fa-edit"></i></div>
        <h5>Tìm kiếm</h5>
        <!-- .toolbar -->
        <div class="toolbar">
            <nav style="padding: 8px;">
                <a href="javascript:;" class="btn btn-default btn-xs collapse-box">
                    <i class="fa fa-minus"></i>
                </a>
                <a href="javascript:;" class="btn btn-default btn-xs full-box">
                    <i class="fa fa-expand"></i>
                </a>
                <a href="javascript:;" class="btn btn-danger btn-xs close-box">
                    <i class="fa fa-times"></i>
                </a>
            </nav>
        </div>           
        <!-- /.toolbar -->
    </header>
    <div id="div-1" class="body">
        <form class="form-horizontal">
            <div class="form-group">
                <label for="text2" class="control-label col-lg-4">Ngày giao dịch: </label>

                <div class="col-lg-8">
                    <input type="text" id="text2" placeholder="Nhập ngày giao dịch..." class="form-control">
                </div>
            </div>
            <!-- /.form-group -->
            <div class="form-group">
                <label for="text2" class="control-label col-lg-4"> Tên người mua </label>

                <div class="col-lg-8">
                    <input type="text" id="text2" placeholder="Nhập tên người mua...." class="form-control">
                </div>
            </div>
            <!-- /.form-group -->

            <center><a href="#" class="btn btn-metis-5"> Tìm </a> </center>
            <!-- /.form-group -->
        </form>
    </div>
</div>
<div id="borderedTable" class="body collapse in">
    <table id="ks-datatable" class="table table-bordered responsive-table">
        <thead>
            <tr>
                <th>#</th>
                <th>Ngày giao dịch</th>
                <th>Tên người mua</th>
                <th>Gói tin</th>
                <th>Giá bán</th>
                <th>Phương thức thanh toán</th>
                <th>Tình trạng</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="pm" items ="${dsPhieuMua}" varStatus="i">
                <tr>
                    <td>${i.count}</td>
                    <td><fmt:formatDate value="${pm.ngayGiaoDich}" pattern="dd / MM / yyyy"/></td>
                    <td>${pm.idNguoiBan.hoTen}</td>
                    <td>${pm.idGoiTin.tenGoiTin}</td>
                    <td><fmt:formatNumber value="${pm.giaBan}" pattern="#,###.00" /> VNĐ</td>
                    <td>${pm.phuongThucThanhToan} </td>
                    <td>

                        <div class="col-lg-10" >
                            <select class="form-control">
                                <option>Đang xử lí</option>
                                <option>Thành công </option>
                                <option>Đã hủy </option>
                            </select>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </tbody>            
    </table>
</div>

</div>
