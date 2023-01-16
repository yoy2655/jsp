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
<h2>게시글</h2>
<form action="BoardWriteForm.jsp" method="post">
<table width="600" border="1" bordercolor="yellow" bgcolor="pink">
<tr height="40">
<td width="150" align="center">작성자</td>
<td width="450" align="center"><input type="text" name="writer" size="50"></td>
</tr>
<tr height="40">
<td width="150" align="center">제목</td>
<td width="450" align="center"><input type="text" name="subject" size="50"></td>
</tr>
<tr height="40">
<td width="150" align="center">이메일</td>
<td width="450" align="center"><input type="email" name="email" size="50"></td>
</tr>
<tr height="40">
<td width="150" align="center">비밀번호</td>
<td width="450" align="center"><input type="password" name="password" size="50"></td>
</tr>
<tr height="40">
<td width="150" align="center">글내용</td>
<td width="450" align="center"><textarea row="10" cols="50" name="content" size="60"></textarea></td>
</tr>
<tr height="40">
<td align="center" colspan="2">
<input type="submit" value="글쓰기">
<input type="reset" value="재작성">
<input type="button" value="전체글보기" onclick="location.href='BoardList.jsp'">
</td>
</tr>
</table>
</form>
</center>
</body>
</html>
