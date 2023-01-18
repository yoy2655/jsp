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
int n1=(Integer)request.getAttribute("n1");
int n2=(Integer)request.getAttribute("n2");
%>
<br>
<%=n1+n2 %><br>

${n1+n2 }<br>
</body>
</html>
