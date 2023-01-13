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
	6. 다음을 보고 코드 구현해라.
	favo.jsp
	text필드로 좋아하는 색, 음악 입력받음
	(favorite.jsp로 action)
	favoBean.java
	정보를 담을 빈 생성
	favorite.jsp
	빈에서 전체 정보 받아와서 setProperty, getProperty를 이용해서 출력-->
	<form action="favorite.jsp" method="post">
	좋아하는 색 : <input type="text" name="color"/><br>
	음악 : <input type="text" name="music"/><br>
	<input type="submit" value="확인"/>
	</form>
</body>
</html>
