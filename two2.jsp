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
	String num = request.getParameter("num");%>
	
	숫자를 잘 입력하면 1부터 입력한 수까지 출력 :
	<%for(int i=1; i<=Integer.parseInt(num); i++){%> 
	<%=i %>
	<%} %>
</body>
</html>
