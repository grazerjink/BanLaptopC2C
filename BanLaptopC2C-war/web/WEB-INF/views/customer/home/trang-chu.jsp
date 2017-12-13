<%@ page pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- banner -->
<jsp:include page="../layout/template/banner.jsp"/>
<!-- //banner -->
<div class="">
    <div class="container">
        <script src="assets/customer/template/js/easyResponsiveTabs.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#horizontalTab').easyResponsiveTabs({
                    type: 'default', //Types: default, vertical, accordion           
                    width: 'auto', //auto or any width like 600px
                    fit: true   // 100% fit in a container
                });
            });

        </script>
        <div class="sap_tabs">
            <div id="horizontalTab" style="display: block; width: 100%;">
                <div class="tab-index" style="margin-bottom: 20px;">
                    <h3><span>MUA SẮM NGAY NÀO </span>!!!</h3>                        
                </div>
                <ul class="resp-tabs-list" style="margin-top: 20px;">
                    <li class="resp-tab-item" aria-controls="tab_hang-moi" role="tab"><span>HÀNG MỚI </span></li> 
                    <li class="resp-tab-item" aria-controls="tab_hang-ban-chay" role="tab"><span>BÁN CHẠY </span></li> 
                    <li class="resp-tab-item" aria-controls="tab_hang-dac-biet" role="tab"><span>ĐẶC BIỆT </span></li> 
                    <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>XEM NHIỀU </span></li> 
                </ul>				  	 
                <div class="resp-tabs-container">
                    <jsp:include page="tab-hang-moi.jsp"/>
                    <jsp:include page="tab-hang-dac-biet.jsp"/>
                    <jsp:include page="tab-hang-ban-chay.jsp"/>
                    <jsp:include page="tab-hang-xem-nhieu.jsp"/>                    
                </div>	
            </div>
        </div>
    </div>
</div>
<!-- GO TO TOP -->
<jsp:include page="../layout/template/go-to-top.jsp"/>
<!-- //GO TO TOP-->
<script>
    <c:if test="${param.success != null && fn:length(param.success)>0}">
    showSuccessToast("${param.success}");
    </c:if>
    <c:if test="${param.error != null && fn:length(param.error)>0}">
    showErrorToast("${param.error}");
    </c:if>
</script>