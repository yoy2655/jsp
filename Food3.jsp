<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

	<%
	request.setCharacterEncoding("UTF-8");
	String food = request.getParameter("food");
	
	String id = (String) session.getAttribute("li");
	if (id != null) {
	%>

	<%=food%>를 가장 좋아한다.
	<%
	}
	%>
</body>
</html>
