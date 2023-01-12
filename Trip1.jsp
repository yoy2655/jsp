<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 
다시 조회라는 하이퍼링크를 누르면
이전 페이지로 이동한다
국내 여행: 울산
해외 여행: 홍콩 
-->
<form action="Trip2.jsp" method="get">
<select name="trip">
<option value="Ulsan">울산</option>
<option value="Busan">부산</option>
</select>
<select name="overseas">
<option value="Hong Kong">홍콩</option>
<option value="Thailand">태국</option>
</select>
<input type="submit" value="전송">
</form>
</body>
</html>
