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
	pageContext.setAttribute("name","페이지");
	request.setAttribute("name","리퀘스트");
	session.setAttribute("name","세션");
	application.setAttribute("name","애플리케이션");
	
	System.out.println(pageContext.getAttribute("name"));
	System.out.println(request.getAttribute("name"));
	System.out.println(session.getAttribute("name"));
	System.out.println(application.getAttribute("name"));
	
	request.getRequestDispatcher("One2.jsp").forward(request, response);
%>
</body>
</html>
