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
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id"); //aa
	String pw = request.getParameter("pw");

	session.setAttribute("li", id);
	session.setMaxInactiveInterval(60);
	%>

	<form action="Food3.jsp" method="post">
		가장 좋아하는 음식은? <input type="radio" name="food" value="피자">피자 <input
			type="radio" name="food" value="파스타">파스타 <input type="radio"
			name="food" value="탕수육">탕수육 <input type="submit" value="결과">;
	</form>
<body>
</html>
