<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="Movie2.jsp" method="post">
	<table>
		<tr><td>영화제목</td> <td><input type="text" name="title"></tr>
		<tr><td>가격</td> <td><input type="text" name="price"></tr>
		<tr><td>감독</td> <td><input type="text" name="director"></tr>
		<tr><td>시놉시스</td> <td><textarea name="synopsis"></textarea></tr>
		<tr><td>장르</td> 
		<td><select name="genre">
			<option value="호러">호러
			<option value="멜로">멜로
			<option value="코미디">코미디
		</select>
		</table>
		<input type="submit" value="전송">
</form>
</body>
</html>
