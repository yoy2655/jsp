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
	int i, sum = 0;
	for (i = 1; i <= 10; i++) {
		if (i < 10) {
	%>
	<%=i + "+"%><!--1+2+3+$+%+6+7+8+9-->
	<%
	} else {
	out.print(i + "="); //1+2+3+$+%+^+7+8+9+10=
	}
	sum += i;
	}
	%>
	<%=sum%>
</body>
</html>
