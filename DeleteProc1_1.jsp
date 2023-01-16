<%@page import="unit01.MemberDAO"%>
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
	request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="mbean" class="unit01.MemberBean">
	<jsp:setProperty name="mbean" property="*"/>
	</jsp:useBean>
	
	<%
	MemberDAO mdao=new MemberDAO();
	String pass=mdao.getPass(mbean.getId());
	
	if(mbean.getPass1().equals(pass)){
		mdao.deleteMember(mbean.getId());
		response.sendRedirect("MemberArray.jsp");
	}
	else{%>
	<script type="text/javascript">
	alert("패스워드 틀렸다. 다시 입력해라");
	history.go(-1);
	</script>
	<%} %>
</body>
</html>
