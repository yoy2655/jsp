<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%=request.getParameter("name")%>
	의 취미는
	<%=request.getParameter("hobby")%>이다.
</body>
</html>
