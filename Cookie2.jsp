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
	//쿠키에서 값을 가져온다.
	Cookie[] co = request.getCookies();

	for (Cookie c : co) {
		out.print(c.getName() + " : " + c.getValue() + "<br>");
	}
	%>
</body>
</html>
