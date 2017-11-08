<%@ page pageEncoding="utf-8"%>

<%
	String view = request.getParameter("view");
	if(view.startsWith("user/")) {
		pageContext.include("user-layout.jsp");
	}
	else {
		pageContext.include("blank-layout.jsp");
	}
%>