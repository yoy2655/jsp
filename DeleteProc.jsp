<%@page import="test.BoardDAO"%>
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
	String pass = request.getParameter("password");
	int num = Integer.parseInt(request.getParameter("num"));

	BoardDAO bdao = new BoardDAO();
	String password = bdao.getPass(num);

	if (pass.equals(password)) {
		bdao.deleteBoard(num);
		response.sendRedirect("BoardList.jsp");
	} else {
	%>
	<script type="text/javascript">
		alert("패스워드가 일치하지 않는다. 다시 입력해라");
		history.go(-1);
	</script>
	<%
	}
	%>
</body>
</html>
