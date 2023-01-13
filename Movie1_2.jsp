<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	%>

	<jsp:useBean id="m" class="co.sjw.movie.MovieBean">
		<jsp:setProperty property="*" name="m" />
	</jsp:useBean>
	
	영화제목 : <%=m.getTitle() %>
	가격 : <jsp:getProperty property="price" name="m"/>
	감독 : <jsp:getProperty property="director" name="m"/>
	시놉시스 : <jsp:getProperty property="synopsis" name="m"/>
	장르 : <jsp:getProperty property="genre" name="m"/>
</body>
</html>
