<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="fru.jsp">
		ID: <input type="text" name="id"><br> pw: <input
			type="password" name="pw"> <input type="submit" value="로그인">
	</form>
</body>
</html>

<!-- 
1. form을 만든다
2. id를 가져온다
3. if문으로 유효성검사를 한다
4. sendRedirct()로 이동해준다
 -->

<!-- 
 setAttribute는 form method="post"일때 주로 해준다
 sendRedirect는 form method="get"일때 주로 해준다
  -->
