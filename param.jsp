<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="param.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="ParamServlet" name="fr">
	id : <input type="text" name="id"><br>
	study : <input type="text" name="st"><br>
	age : <input type=text" name="age"><br>
	
	<input type="submit" value="전송" onclick="return ch()">
</form>
</body>
</html>
