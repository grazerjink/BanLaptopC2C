<%@ page pageEncoding="utf-8"%>

<%
	String view = request.getParameter("view");
	if(view.startsWith("customer/")) {
		pageContext.include("customer-layout.jsp");
	}
        if(view.startsWith("admin/")) {
		pageContext.include("admin-layout.jsp");
	}
	else {
		pageContext.include("blank-layout.jsp");
	}
%>