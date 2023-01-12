<%@page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String role = request.getParameter("login");

	if (role.equals("user")) {
	%>
		<jsp:forward page="ActionMain1.jsp">
			<jsp:param value='<%=URLEncoder.encode("고객들", "UTF-8")%>' name="userName" />
		</jsp:forward>
	<%}
	else{%>
		<jsp:forward page="ActionMain2.jsp">
			<jsp:param value='<%=URLEncoder.encode("고객관리", "UTF-8")%>' name="userName" />
		</jsp:forward>
	<% }%>
</body>
</html>
<!-- forward는 url이 변경되지 않는다 -->
