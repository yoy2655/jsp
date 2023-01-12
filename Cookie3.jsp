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
	Cookie c = new Cookie("id", "");	//아이디 쿠키가 삭제되었다.
	c.setMaxAge(0); //쿠키의 유효시간 만료시킴
	response.addCookie(c); //쿠키전송
	%>
	<a href="Cookie2.jsp">확인</a>
</body>
</html>
