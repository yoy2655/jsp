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
int n1=Integer.parseInt(request.getParameter("n1"));
int n2=Integer.parseInt(request.getParameter("n2"));

int n3=(Integer)request.getAttribute("n1");
int n4=(Integer)request.getAttribute("n2");
%>
<br>
<%=n1+n2 %><br>

${param.n1+param.n2 }<br>
${n3+n4 }<br>
</body>
</html>
