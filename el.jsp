<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
${"Hi"}
<%="Hi" %><br>
<%out.print("Hi"); %>

${10 }<br>
${4.5 }<br>
${"홍길동" }<br>
${true }<br>
${null }

${5+2 }<br>
${5/2 }<br>
%{5 div 2}<br><!-- 나누기안됨 -->
${5 mod 2 }<br>
${5>2 }<br>	<!-- true -->
${(5>2)?5:2 }<br>

</body>
</html>
