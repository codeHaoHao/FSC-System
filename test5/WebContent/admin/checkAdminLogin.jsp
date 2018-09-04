
<%@page import="schoolhome.core.po.User"%>
<%
User adminBean = (User)session.getAttribute("userinfor");
if(adminBean==null||adminBean.getIsadmin()==0){
	response.sendRedirect("/test5/login.jsp");
	return;
}

%>