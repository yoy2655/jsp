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
		String aa=request.getParameter("aa");
	%>
	
	<p style="background:<%=aa %>">나는 <%=aa %>색을 좋아한다</p>
	
	<%=10/0 %>
</body>
</html>
