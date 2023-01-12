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
	//1. 쿠키 객체 생성
	Cookie c=new Cookie("id","gildong");

	//2.유효 시간 설정
	c.setMaxAge(50*50*24*10);
	
	//3.클라이언트에 쿠키 전송
	response.addCookie(c);
	
	response.addCookie(new Cookie("pw","1234"));
	
	//F12(개발자모드)에서 APPLICATION-COOKIE에 값이 저장되어 있음을 확인할 수 있다.
	
%>
</body>
</html>
