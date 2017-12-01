<%-- 
    Document   : thongke-danhgia
    Created on : Nov 30, 2017, 8:21:39 PM
    Author     : Vivi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h2> Thống kê đánh giá của Người Bán</h2>
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
                <label for="text2" class="control-label col-lg-4"> Tên người bán</label>

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
                <th>Mã Đơn Hàng</th>
                <th>Tên người bán</th>
                <th>Số điểm</th>
                
                
                
            </tr>
        </thead>
        <tbody>
            <c:forEach var="tkdg" items ="${dsThongKeDanhGia}" varStatus="i">
                <tr>
                    <td>${i.count}</td>
                    <td>${tkdg.idDonHang}</td>
                    <td>${tkdg.idNguoiBan.hoTen}</td>
                    <td>${tkdg.soDiem}</td>
                    
                   
                </tr>
            </c:forEach>
        </tbody>            
    </table>
</div>

</div>