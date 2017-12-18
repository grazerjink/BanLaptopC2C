<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>--%>
<!DOCTYPE html>
<jsp:include page="../layout/template/banner.jsp"/>

<div class="" style="padding: 15xp">
    
    <div class="container" style="margin-bottom: 30px">
        <div class="tab-index" style="margin-bottom: 20px;">
                    <h3><span> LỊCH SỬ MUA HÀNG </span></h3>                        
                </div>
                <table class="table-active" >
            <tr style="padding-bottom: 10px ; font-size: x-large">
                <td  style=" width:5%;  text-align: center; margin-bottom: 15px"><strong>ID</strong></td>
                <td style=" width:auto;  text-align: center"><strong>Tên người nhận</strong></td>
                <td style=" width:20%;  text-align: center"><strong>Số điện thoại</strong></td>
                <td style=" width:auto;  text-align: center"><strong>Địa chỉ giao </strong></td>
                <td style=" width:auto;  text-align: center"><strong>Tổng tiền</strong></td>
                <td style=" width:auto;  text-align: center"><strong>Chi tiết đơn hàng</strong></td>
            </tr>
            <c:forEach items="${dsphieumua}" var="pm">
                <tr>
                <td>
                    ${pm.id}
                </td>
                <td>
                    ${pm.tenNguoiNhan}
                </td>
                <td>
                    ${pm.soDienThoai}
                </td>
                <td>
                    ${pm.diaChiGiao}
                </td>
                <td>
                    <fmt:formatNumber value="${pm.tongTien}" pattern="###,###"/> VNĐ
                </td>
                <td>
                <a class="item_add single-item  button2" href="xem-ct-phieu-mua/${pm.id}" style="background-color: #002a80;border:#002a80 solid 4px; -webkit-text-fill-color:white">Xem chi tiết</a>
                </td>
                </tr>
            </c:forEach>
        </table>

    </div>
</div>
<jsp:include page="../layout/template/go-to-top.jsp"/>
