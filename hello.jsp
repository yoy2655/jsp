<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello JSP</h1>
	<%
	//스크립트릿(jsp파일안에 java언어로 코드를 짤수 있다)
	int n1 = 30;
	int n2 = 40;
	int sum = n1 + n2;

	out.print(n1 + "+" + n2 + "=" + sum);
	%>
</body>
</html>
