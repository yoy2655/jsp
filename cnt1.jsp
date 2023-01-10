<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%!
    int cnt=0;	//전역변수
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int c=0;	//일종의 지역변수
	out.print(++c+"<br>");
	out.print(++cnt);
	
	//새로고침을 해주면
	//전역변수는 계속 ++ 되지만	->메모리 할당이 필요없다
	//지역변수는 값이 ++ 되지 않고 변하지 않는 상태이다. ->계속 메모리 할당을 해야한다.
%>
</body>
</html>
