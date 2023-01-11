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
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	if (id.isEmpty() || pwd.isEmpty()) {
		RequestDispatcher rd = request.getRequestDispatcher("loginOut.jsp");
		rd.forward(request, response);
		return;
	}
	%>
</body>
</html>
