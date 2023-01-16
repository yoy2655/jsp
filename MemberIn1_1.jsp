<%@page import="unit01.MemberBean"%>
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
	<!-- 데이터베이스에서 한 회원의 정보를 가져옴 -->
	<%
	String id = request.getParameter("id");
	MemberDAO mdao = new MemberDAO();
	MemberBean mbean = mdao.oneMember(id); //해당하는 id의 회원정보를 리턴받을거임
	%>
	<center>
	<h2>회원정보 보기</h2>
	<table width="400" border="1">
	<tr height="50">
	<td width="150" align="center">아이디</td>
	<td width="250"><%=mbean.getId() %></td>
	</tr>
	
	<tr height="50">
	<td width="150" align="center">이메일</td>
	<td width="250"><%=mbean.getEmail() %></td>
	</tr>	
		
	<tr height="50">
	<td width="150" align="center">전화</td>
	<td width="250"><%=mbean.getTel() %></td>
	</tr>	
	
	<tr height="50">
	<td width="150" align="center">취미</td>
	<td width="250"><%=mbean.getHobby() %></td>
	</tr>	
	
	<tr height="50">
	<td width="150" align="center">직업</td>
	<td width="250"><%=mbean.getJob() %></td>
	</tr>	
	
	<tr height="50">
	<td width="150" align="center">나이</td>
	<td width="250"><%=mbean.getAge() %></td>
	</tr>	
	
	<tr height="50">
	<td width="150" align="center">정보</td>
	<td width="250"><%=mbean.getInfo() %></td>
	</tr>	
	
	<tr height="50">
	<td colspan="2" align="center">
	<button onclick="location.href='MemberUpdate.jsp?id=<%=mbean.getId() %>'">수정</button>
	<button onclick="location.href='MemberDelete.jsp?id=<%=mbean.getId() %>'">삭제</butotn>
	<button onclick="location.href='MemberArray.jsp'">전체목록</button>
	<button onclick="location.href='MemberJoin.jsp'">회원가입</button>
	</td>
	</tr>
	</table>
	</center>
</body>
</html>
