<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="favorite" class="unit01.FavoBean">
		<jsp:setProperty property="*" name="favorite" />
	</jsp:useBean>

	좋아하는 색 : <jsp:getProperty property="color" name="favorite"/> <br>
	음악 : <jsp:getProperty property="music" name="favorite"/>
</body>
</html>
