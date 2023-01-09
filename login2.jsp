<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="LoginServlet2">
	<label for="gender">성별 :</label>
	<input type="radio" id="gender" name="gender" value="man" checked>남자
	<input type="radio" id="gender" name="gender" value="woman">여자<br><br>
	
	<label for="con">자기소개 : </label>
	<textarea id="con" name="con" rows="3" cols="30"></textarea>
		
	<input type="submit" value="전송">
	</form>
</body>
</html>
