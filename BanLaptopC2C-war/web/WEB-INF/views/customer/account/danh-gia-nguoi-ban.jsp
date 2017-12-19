<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>--%>
<!DOCTYPE html>
<jsp:include page="../layout/template/banner.jsp"/>
<div class="">
    
    <div class="container">
<h4>Đánh giá người bán</h4>

<table class="table" >
    <thead>
        <tr>
            <th>Mã</th>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Số lượng</th>
            <th>Người bán</th>
            <th>Đánh giá</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="l" items="${danhgias}">
            <tr>
                <td>#${l.id}</td>
                <td>${l.idDonHang.idSanPham.tenMay}</td>
                <td>${l.idDonHang.giaBan}</td>
                <td>${l.idDonHang.soLuongMua}</td>
                <td>${l.idNguoiBan.tenGianHang}</td>
                <td>
                    <select name="rating" style="width: 60px">
                        <option value="1" selected="">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </td>
                <td>
                    <button class="btn btn-sm btn-warning my-ratting-button" data-sp-id="${l.id}" data-rating="1">
                        Đánh giá
                    </button>
                </td>
            </tr>
            
        </c:forEach>
    
    </tbody>
</table>
    </div>
</div>
<jsp:include page="../layout/template/go-to-top.jsp"/>
<script>
    $(function() {
        $("select").change(function(){
		var rating = $(this).val();
                //alert(rating);
		button = $(this).parents("tr").find(".my-ratting-button");
                button.attr("data-rating", rating);
	});
        
        /**
	 * xoa khoi gio hang
	 */
	$("button[data-sp-id]").click(function(){
		var idDanhgia = $(this).attr("data-sp-id");
                var rating = $(this).attr("data-rating");
		$.ajax({
			url: "rated",
			data: {idDanhgia:idDanhgia, rating:rating},
			success: function(response){
				
			}
		});
		$(this).parents("tr").hide(300);
	});
    });
</script>
