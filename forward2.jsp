<%@ page import="java.net.URLDecoder"%>
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
	request.setCharacterEncoding("UTF-8");
	%>

	<%=URLDecoder.decode(request.getParameter("name"), "UTF-8") %>님의 취미는
	<%=URLDecoder.decode(request.getParameter("hobby"), "UTF-8") %>입니다.
</body>
</html>
