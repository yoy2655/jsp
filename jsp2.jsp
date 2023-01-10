<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="jsp3.jsp">
		<table border="1">
			<tr>
				<td>이름:</td>
				<td><input type="text" name="name"><br></td>
			</tr>
			<tr>
			<td>성별: </td>
			<td><input type="radio" name="man">남 <input type="radio" name="woman">여</td>
			</tr>
			<tr>
			<td>좋아하는 색: </td>
			<td><input type="checkbox" name="color" value="red">red
				<input type="checkbox" name="color" value="black">black
				<input type="checkbox" name="color" value="green">green</td>
			</tr>
			<tr>
			<td>
			<input type="submit" name="submit" value="전송">
			<input type="reset" name="reset" value="취소">
			</td>
			<td></td>
			</tr>
			</table>
</form>

</body>
</html>
