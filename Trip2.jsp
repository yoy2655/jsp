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
	String trip = request.getParameter("trip"); //name쓰면 value값을 가져온다
	String overseas = request.getParameter("overseas");
	%>
	국내 여행 <%=trip%>
	<br>
	해외 여행 <%=overseas%>
	<br>
	<a href="Trip1.jsp">다시 조회</a>
	<%

	%>
</body>
</html>
