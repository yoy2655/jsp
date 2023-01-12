<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id="gildong";
	String pw="1234";
	String name="길동";
	
	if(id.equals(request.getParameter("id"))&& pw.equals(request.getParameter("pwd"))){
		session.setAttribute("user", name);
		response.sendRedirect("Se3.jsp");
	}
	else{
		response.sendRedirect("Se1.jsp");
	}
%>
