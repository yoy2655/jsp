<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2>회원삭제</h2>
		<table width="400" border="1">
			<form action="DeleteProc.jsp" method="post">
				<tr height="50">
					<td width="150" align="center">아이디</td>
					<td width="250"><%=request.getParameter("id")%></td>
				</tr>
				<tr height="50">
					<td width="150" align="center">패스워드</td>
					<td width="250"><input type="password" name="pass1"></td>
				</tr>

				<tr height="50">
					<td colspan="2" align="center"><input type="hidden" name="id"
						value="<%=request.getParameter("id")%>"> <input
						type="submit" value="회원 삭제"></form>
			<button onclick="location.href='MemberArray.jsp'">회원전체</button>
		</table>
	</center>
</body>
</html>
