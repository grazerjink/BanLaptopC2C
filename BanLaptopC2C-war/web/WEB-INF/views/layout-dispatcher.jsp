<%@ page pageEncoding="utf-8"%>
<%
    String view = request.getParameter("view");
    if (view.startsWith("customer/")) {
        pageContext.include("customer-layout.jsp");
    }
    else if (view.startsWith("admin/landing/")) {
        pageContext.include("admin-layout-dangnhap.jsp");
    }
    else if (view.startsWith("admin/")) {
        pageContext.include("admin-layout.jsp");
    }    
    else if (view.startsWith("merchant/landing/")) {
        pageContext.include("merchant-landing-layout.jsp");
    } 
    else if (view.startsWith("merchant/dashboard/")) {
        pageContext.include("merchant-dashboard-layout.jsp");
    }
    else {
        pageContext.include("blank-layout.jsp");
    }
%>