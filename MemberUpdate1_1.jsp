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
	<%
	String id = request.getParameter("id");
	MemberDAO mdao = new MemberDAO();
	MemberBean mbean = mdao.oneMember(id);
	%>

	<center>
		<h2>수정하기</h2>
		<table width="400" border="1">
			<form action="UpdateProc.jsp" method="post">
				<tr height="50">
					<td width="150" align="center">아이디</td>
					<td width="250"><%=mbean.getId()%></td>
				</tr>

				<tr height="50">
					<td width="150" align="center">이메일</td>
					<td width="250"><input type="email" name="email"
						value="<%=mbean.getEmail()%>"></td>
				</tr>

				<tr height="50">
					<td width="150" align="center">전화</td>
					<td width="250"><input type="tel" name="tel"
						value="<%=mbean.getTel()%>"></td>
				</tr>

				<tr height="50">
					<td width="150" align="center">패스워드</td>
					<td width="250"><input type="password" name="pass1"></td>
				</tr>

				<tr height="50">
					<td colspan="2" align="center"><input type="hidden" name="id"
						value="<%=mbean.getId()%>"> <input type="submit"
						value="회원 수정">
			</form>

			<button onclick="location.href="MemberArray.jsp'">회원전체</button>
			</td>
			</tr>

			</form>
		</table>
	</center>
</body>
</html>
