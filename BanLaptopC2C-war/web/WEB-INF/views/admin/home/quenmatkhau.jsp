<%-- 
    Document   : quenmatkhau
    Created on : Dec 18, 2017, 4:47:57 PM
    Author     : Winson Mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h2> Quên mật khẩu </h2>

<div id="div-1" class="body">
    <form class="form-horizontal" action="admin/quen-mat-khau/" method="post">
        <div class="form-group">
            <label for="text2" class="control-label col-lg-4"> Nhập email</label>
            <div class="col-lg-8">
                <input name="email" type="text" id="text2" placeholder="Nhập email của bạn" class="form-control">
            </div>
        </div>
        <!-- /.form-group -->
        <center><button class="btn btn-metis-5"> Tạo mật khẩu mới </button> </center>
        <!-- /.form-group -->
    </form>
</div>

<script>
    $(function () {

        $("#quen-mat-khau").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                }
            },
            messages: {
                email: {
                    required: "Vui lòng nhập email.",
                    email: "Chưa đúng định dạng email."
                }
            }
        });
    });
</script>
