<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%=pageContext.getAttribute("name")%>
	<!--페이지는 null이 뜬다(페이지 이동을 하면 새로운 페이지 영역이 생겨버려서 유지가 안된다 -->
	<%=request.getAttribute("name")%>
	<%=session.getAttribute("name")%>
	<%=application.getAttribute("name")%>

	<a href="One3.jsp">다른 페이지</a>
</body>
</html>
