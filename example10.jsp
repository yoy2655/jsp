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
		request.setAttribute("error", "ID또는 비밀번호를 입력해주세요!");
		RequestDispatcher rd = request.getRequestDispatcher("loginOut.jsp");
		rd.forward(request, response);
		return;
	}
	%>
</body>
</html>
