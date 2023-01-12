<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
	String id=(String)session.getAttribute("id");
	String pw=(String)session.getAttribute("pw");
	Integer score=(Integer)session.getAttribute("score");
	
	%>
	
	<%=id %><br>
	<%=pw %><br>
	<%=score %>
</body>
</html>
