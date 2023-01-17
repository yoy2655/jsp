<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<%
	int num = Integer.parseInt(request.getParameter("num"));
	int ref = Integer.parseInt(request.getParameter("ref"));
	int re_step = Integer.parseInt(request.getParameter("re_step"));
	int re_level = Integer.parseInt(request.getParameter("re_level"));
	%>

	<center>
		<form action="ReWriteProc.jsp" method="post">
			<table width="600" border="1" bordercolor="yellow" bgcolor="pink">
				<tr height="40">
					<td width="150" align="center">작성자</td>
					<td width="450" align="center"><input type="text"
						name="writer" size="50"></td>
				</tr>
				<tr height="40">
					<td width="150" align="center">제목</td>
					<td width="450" align="center"><input type="text"
						name="subject" size="50"></td>
				</tr>
				<tr height="40">
					<td width="150" align="center">이메일</td>
					<td width="450" align="center"><input type="email"
						name="email" size="50"></td>
				</tr>
				<tr height="40">
					<td width="150" align="center">비밀번호</td>
					<td width="450" align="center"><input type="password"
						name="password" size="50"></td>
				</tr>
				<tr height="40">
					<td width="150" align="center">글내용</td>
					<td width="450" align="center"><textarea row="10" cols="50"
							name="content" size="60"></textarea></td>
				</tr>
				
				<tr height="40">
				<td align="center" colspan="2">
				<input type="hidden" name="ref" value="<%=ref %>">
				<input type="hidden" name="re_step" value="<%=re_step %>">
				<input type="hidden" name="re_level" value="<%=re_level %>">
				
				<input type="submit" value="답글완료">
				<input type="reset" value="취소">
				<input type="button" onclick="location.href='BoardList.jsp'" value="전체글">
		</form>
	</center>

</body>
</html>
