<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!public int big(int a, int b) {
		return a > b ? a : b;
	}%>

	<%
	int x = 30;
	int y = 40;

	java.util.Date date = new java.util.Date();
	int hour = date.getHours();
	%>

	두 수 중 큰 수는
	<%=big(x, y)%>
	지금은 오후? 오전?
	<%=hour < 12 ? "오전" : "오후"%>
</body>
</html>
