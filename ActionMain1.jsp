<%@page import="java.net.URLDecoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>사용자로 로그인</h1>

<%=URLDecoder.decode(request.getParameter("userName"), "UTF-8") %>
<%=request.getParameter("id")%>님 환영해요! 
</body>
</html>
