<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage="true"%>
    <%--현재 페이지가 에러 페이지라고 선언 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
다음과 같은 에러가 발생했다
	<%=exception.getMessage() %>
</body>
</html>
