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

pageContext.setAttribute("name","페이지컨텍스트");
request.setAttribute("name","리퀘스트");
session.setAttribute("name","세션");
application.setAttribute("name","어플리케이션");
%>

<!-- pageContext.getAttribute("name"); -->
${name }<br>
${pageScope.name }<br>
<!-- request.getAttribute("name"); -->
${requestScope.name }<br>
<!-- session.getAttribute("name"); -->
${sessionScope.name }<br>
<!-- application.getAttribute("name"); -->
${applicationScope.name }<br>


</body>
</html>
