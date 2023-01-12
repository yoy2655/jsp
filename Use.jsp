<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="mem" class="bean.MemberBean" />
	<!-- useBean..해주면 MemberBean mem=new MemberBean()이라는 뜻과 같다 -->

	<%
	mem.setName("홍길동");
	mem.setId("hong");
	%>

	이름: <%=mem.getName()%><br> 
	아이디: <%=mem.getId()%>
</body>
</html>
