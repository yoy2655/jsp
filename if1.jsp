<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!String c;%>
	<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String color = request.getParameter("color");

	if(color.equals("red")){
		c="red";
	}
	else if(color.equals("black")){
		c="black";
	}

	%>
	
	<body style="background:<%=c %>">
	
	<%=name %> 는  <%=color %>색을 좋아하네요.
	
</body>
</html>
