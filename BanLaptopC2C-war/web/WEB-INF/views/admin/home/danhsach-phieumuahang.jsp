<%-- 
    Document   : danhsach-hoadon
    Created on : Nov 16, 2017, 11:06:42 AM
    Author     : Vivi
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<h2> Danh sách phiếu mua hàng </h2>
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
                <label for="text2" class="control-label col-lg-4">Ngày mua hàng: </label>

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
            <div class="form-group">
                <label for="text2" class="control-label col-lg-4"> Tên người bán</label>

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
    <table class="table table-bordered responsive-table">
        <thead>
            <tr>
                <th>#</th>
                <th>Ngày đặt hàng</th>
                <th>Tên người bán</th>
                <th>Số điện thoại</th>
                <th>Tên Người Nhận</th>
                <th>Số điện thoại</th>
                <th>Tình trạng</th>
                <th></th>

            </tr>
        </thead>
        <tbody>
            <c:forEach var="pmh" items="${dsPhieuMuaHang}" varStatus="i">
                <tr>
                    <td>${i.count}</td>
                    <td><fmt:formatDate value="${pmh.ngayDatHang}" pattern="dd / MM / yyyy"/></td>
                    <td>${pmh.idNguoiMua.hoTen}</td>
                    <td>${pmh.soDienThoai}</td>
                    <td>${pmh.tenNguoiNhan}</td>
                    <td>${pmh.soDienThoai} </td>
                    <td>
                        111111
                    </td>
                    <td><a>Xem chi tiết </a></td>
                </tr>
            </c:forEach>
        </tbody>            
    </table>
</div>

</div>
