<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="red">

	페이지 이동

	<jsp:forward page="Color2.jsp" />
<!-- bgcolor="red"안뜨고 bgcolor="pink"가 바로 뜬다 -->
<!-- forward 액션 태그 실행되면 이 페이지 내용 출력안됨 -->
</body>
</html>
