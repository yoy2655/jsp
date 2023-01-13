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
	request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id ="person" class=unit01.Person">
	<jsp:setProperty property="*" name="person"/>
	</jsp:useBean>
	
	이름 : <jsp:getProperty property="name" name="person"/>
	별명 : <jsp:getProperty property="nic" name="person"/>
	직업 : <jsp:getProperty property="job" name="person"/>
	이메일 : <jsp:getProperty property="email" name="person"/>
</body>
</html>
