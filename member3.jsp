<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<form action="Hello" method="get" name="f">
 아이디:<input type="text" name="id"><br>
 나이:<input type="text" name="age"><br>
 <input type="submit" value="전송" 
 onclick="return ch()">
</form>
<script>
function ch(){
	if(f.id.value==""){
		alert("공백");
		return false;
	}
	if(f.age.value==""){
		alert("공백");
		return false;
	}
	return true;
} 
</script>
</body>
</html>
