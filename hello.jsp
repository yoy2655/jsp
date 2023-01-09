<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
<%!
	String str="Hi";
	int a=5, b=-4;	//전역변수
	
	public int max(int a,int b){
		return a>b?a:b;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello JSP</h1>
	<%=str %>
	<%=max(a,b) %>
	<%--
	out.print(str+"<br>");
	out.print(max(a,b));
	
	
	//스크립트릿(jsp파일안에 java언어로 코드를 짤수 있다)
	//int n1 = 30;
	//int n2 = 40;
	//int sum = n1 + n2;

	//out.print(n1 + "+" + n2 + "=" + sum);
	--%>
	
	
</body>
</html>
