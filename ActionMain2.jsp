<%@page import="java.net.URLDecoder" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>관리자로 로그인</h1>

<%=URLDecoder.decode(request.getParameter("userName"), "UTF-8") %>
<%=request.getParameter("id")%>님 환영해요! 
</body>
</html>
