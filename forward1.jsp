<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 4. Include액션 태그와 forward액션 태그의 차이점을 설명해라. 
	include는 다른 자원의 내용을 현재 페이지에 가져 오는 기능이고 
	forward는 다른 자원으로 보내는 기능이다. -->

	<!-- 
	5. 다음을 보고 코드 구현해라.
	forward1.jsp
	Forward 태그를 사용해 페이지 이동
	param태그를 사용해 값 지정
	
	forward2.jsp
	값 읽어와서 출력
	실행 결과) 홍길동님의 취미는 수영입니다. -->

	<jsp:forward page="forward2.jsp">
		<jsp:param name="name" value='<%=URLEncoder.encode("홍길동", "UTF-8")%>' />
		<jsp:param name="hobby" value='<%=URLEncoder.encode("수영", "UTF-8")%>' />
	</jsp:forward>
</body>
</html>
