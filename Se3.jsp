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
	if (session.getAttribute("user") == null) {
		response.sendRedirect("Se.jsp");
	} else {
	%>

	<%=session.getAttribute("user")%>
	님 안녕하십니까
	<form method="post" action="Se4.jsp">
		<input type="submit" value="로그아웃">
	</form>
	<%
	}
	%>
</body>
</html>
