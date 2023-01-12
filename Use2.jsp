<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="mem" class="bean.MemberBean"/>
<jsp:setProperty property="name" name="mem" value="홍길동"/>
<jsp:setProperty property="name" name="mem"/>
</body>
</html>
