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
	String name = request.getParameter("id");
	out.print(name + "님 환영합니다.");
	%>
</body>
</html>

<!-- 
1. form을 만든다
2. id를 가져온다
3. if문으로 유효성검사를 한다
4. sendRedirct()로 이동해준다
 -->
