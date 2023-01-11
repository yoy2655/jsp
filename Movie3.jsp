<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String age = request.getParameter("age");
	String name = (String) request.getAttribute("name"); //홍길동
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgColor=orange>
이동페이지<br>

<%=age%>
<%=name%>
</body>
</html>
