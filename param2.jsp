<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="param" onsubmit="return ch()">
	id : <input type="text" name=id" placeholder="필수 입력"><br>
	age : <input type="text" name="age" placeholder="필수 입력"><br>
	<input type="submit" value="전송">
	</form>
</body>
</html>
