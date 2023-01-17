<%@page import="test.BoardBean"%>
<%@page import="test.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<h2>게시글 수정</h2>
	
	<%
		int num=Integer.parseInt(request.getParameter("num"));
		BoardDAO bdao=new BoardDAO();
		BoardBean bean=bdao.oneupdateBoard(num);
	%>
<form action="UpdateProc.jsp" method="post">
	<table width="600" border="1" bordercolor="yellow" bgcolor="pink">
		<tr height="40">
			<td width="150" align="center">작성자</td>
			<td width="150" align="center"><%=bean.getWriter() %></td>
			<td width="150" align="center">작성일</td>
			<td width="150" align="center"><%=bean.getReg_date() %></td>
		</tr>
		
		<tr height="40">
			<td width="150" align="center">제목</td>
			<td width="450" colspan="3">&nbsp;
			<input type="text" name="subject" value="<%=bean.getSubject() %>"></td>
		</tr>
		
		<tr height="40">
			<td width="150" align="center">비밀번호</td>
			<td width="450" colspan="3">&nbsp;
			<input type="password" name="password" value="<%=bean.getPassword() %>"></td>
		</tr>
		
		<tr height="40">
			<td width="150" align="center">글내용</td>
			<td width="450" colspan="3">
			<textarea rows="10" cols="50" name="content"><%=bean.getContent() %></textarea>
			</td>
		</tr>
		
		<tr height="40">
			<td colspan="4" align="center">
			<input type="hidden" name="num" value=<%=bean.getNum() %>>
			<input type="submit" value="글수정">&nbsp;
			<input type="button" onclick="location.href='BoardList.jsp'" value="전체글보기"></td>
			
		</tr>
		</table>
</form>
</center>

</body>
</html>


