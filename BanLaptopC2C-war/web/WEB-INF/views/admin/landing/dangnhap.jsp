<%-- 
    Document   : dangnhap
    Created on : Dec 7, 2017, 9:51:12 AM
    Author     : Vivi
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <div class="form-signin">
    <div class="text-center">
        <img src="assets/admin/img/logo.png" alt="Metis Logo">
    </div>
    <hr>
    <div class="tab-content">
        <div id="login" class="tab-pane active">
            <form action="admin/dangnhap" method="POST">
                <p class="text-muted text-center">
                    Nhập email và mật khẩu
                </p>
               <input type="text" id="email" name="Email" placeholder="Email" class="form-control top">
                <input type="password" id="password" name="Password" placeholder="Mật khẩu" class="form-control bottom">
                <div class="checkbox">
		  <label>
		    <input type="checkbox"> Nhớ mật khẩu
		  </label>
		</div>
                <button class="btn btn-lg btn-primary btn-block" type="submit">Đăng nhập</button>
                  <span style="color: red">${mess}</span>
            </form>
        </div>
        <div id="forgot" class="tab-pane">
            <form id="quen-mat-khau" action="admin/dangnhap/" method="POST">
                <p class="text-muted text-center">Nhập email của bạn: </p>
                <input type="email" placeholder="mail@domain.com" class="form-control">
                <br>
                <button class="btn btn-lg btn-danger btn-block" type="submit">Xác nhận </button>
            </form>
        </div>
        
    </div>
    <hr>
    <div class="text-center">
        <ul class="list-inline">
            <li><a class="text-muted" href="#login" data-toggle="tab">Đăng nhập</a></li>
            <li><a class="text-muted" href="#forgot" data-toggle="tab">Quên mật khẩu</a></li>
            
        </ul>
    </div>
  </div>


    <!--jQuery -->
    <script src="assets/admin/lib/jquery/jquery.js"></script>

    <!--Bootstrap -->
    <script src="assets/admin/lib/bootstrap/js/bootstrap.js"></script>


    <script type="text/javascript">
        (function($) {
            $(document).ready(function() {
                $('.list-inline li > a').click(function() {
                    var activeForm = $(this).attr('href') + ' > form';
                    //console.log(activeForm);
                    $(activeForm).addClass('animated fadeIn');
                    //set timer to 1 seconds, after that, unload the animate animation
                    setTimeout(function() {
                        $(activeForm).removeClass('animated fadeIn');
                    }, 1000);
                });
            });
        })(jQuery);
    </script>
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

