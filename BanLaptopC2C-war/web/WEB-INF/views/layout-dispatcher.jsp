<%@ page pageEncoding="utf-8"%>
<%
    String view = request.getParameter("view");
    if (view.startsWith("customer/")) {
        pageContext.include("customer-layout.jsp");
    }
    if (view.startsWith("admin/")) {
        pageContext.include("admin-layout.jsp");
    }
    if (view.startsWith("merchant/landing/")) {
        pageContext.include("merchant-landing-layout.jsp");
    } 
    if (view.startsWith("merchant/dashboard/")) {
        pageContext.include("merchant-dashboard-layout.jsp");
    }
    else {
        pageContext.include("blank-layout.jsp");
    }
%>