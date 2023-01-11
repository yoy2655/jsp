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
	<!--리퀘스트는 null이 뜬다(리퀘스트는 요청한 작업까지 유지된다. -->
	<%=session.getAttribute("name")%>
	<%=application.getAttribute("name")%>

</body>
</html>
