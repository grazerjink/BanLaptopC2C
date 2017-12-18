<%-- 
    Document   : capnhat-nguoiban
    Created on : Dec 17, 2017, 10:04:03 AM
    Author     : Vivi
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h2>Cập nhật tài khoản người bán</h2>
<h2>${message}</h2>
<hr>
<form:form modelAttribute="nguoiBan" action="admin/capnhat-nguoiban/" method="POST">
    <div class="form-group">
        <label>Tình trạng </label>
        <div class="form-control">
            <form:radiobutton path="trangThai" value="true" label="Khóa tài khoản" />
            <form:radiobutton path="trangThai" value="false" label="Mở khóa" />
        </div>
    </div>
    <div class="form-group">
        <label>Lý do </label>
        <form:textarea cssClass="form-control" path="lyDo" ></form:textarea>
            <br>
            <button class="btn btn-default">Cập nhật </button>
        </div>
            
</form:form>
<script src="assets/vendor/jquery-validation-1.17.0/jquery.validate.min.js" type="text/javascript"></script>
<script src="assets/vendor/jquery-validation-1.17.0/additional-methods.min.js" type="text/javascript"></script>
<script>
    $(function() {
       $("#trangThai1").on('change', function() { 
              $("#nguoiBan").validate({
                  rules: {
                      lyDo: {
                          required: true,
                          minLength: 30
                      }
                  },
                  messages: {
                      lyDo: {
                          required: "Vui lòng cho biết lý do khóa tài khoản.",
                          minLength: "Nội dung lý do ít nhất 30 ký tự."
                      }
                  }
              });
               $("#nguoiBan").remove();
       });
       
       
    });
</script>



