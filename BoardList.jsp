<%@page import="test.BoardBean"%>
<%@page import="java.util.Vector"%>
<%@page import="test.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2>전체 게시글</h2>
		<%
		int pageSize = 10;

		String pageNum = request.getParameter("pageNum");

		if (pageNum == null) {
			pageNum = "1";
		}
		int count = 0;
		int number = 0;

		BoardDAO bdao = new BoardDAO();
		count = bdao.getAllCount(); //전체 게시글 개수 읽어오는 메소드

		int currentPage = Integer.parseInt(pageNum); //현재 페이지 인덱스 번호 알아내는 작업
		int startRow = (currentPage - 1) * pageSize + 1;
		//				1
		int endRow = currentPage * pageSize; //1*10

		Vector<BoardBean> vec = bdao.allBoard(startRow, endRow); //시작과 끝

		number = count - (currentPage - 1) * pageSize;
		//		13
		%>
		<table width="800" border="1" bgcolor="pink">
			<tr height="40">
				<td width="50" align="center">번호</td>
				<td width="420" align="center">제목</td>
				<td width="100" align="center">작성자</td>
				<td width="150" align="center">작성날짜</td>
				<td width="80" align="center">조회수</td>
			</tr>

			<%
			for (int i = 0; i < vec.size(); i++) {
				BoardBean bean = vec.get(i);
			%>
			<tr height="40">
				<td width="50" algin="center"><%=number--%></td>
				<td width="420" align="center"><a
					href="BoardIn.jsp?num=<%=bean.getNum()%>"
					style="text-decoration: none"> <%
 if (bean.getRe_step() > 1) { //댓글달때 댓글 앞쪽에 공백주는 작업이다.(댓글 처리를 할것이다)
 	for (int j = 0; j < bean.getRe_step() - 1 * 5; j++) {
 %> %nbsp; <%
 }
 }
 %> <%=bean.getSubject()%></a></td>
				<td width="100" align="center"><%=bean.getWriter()%></td>
				<td width="150" align="center"><%=bean.getReg_date()%></td>
				<td width="80" align="center"><%=bean.getReadcount()%></td>
			</tr>
			<%
			}
			%>
			<tr height="40">
				<td align="center" colspan="5"><input type="button" value="글작성"
					onclick="location.href='BoardForm.jsp'"></td>
			</tr>
		</table>
		<%
		if (count > 0) { //27/10+(27%10)+1
			int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
			//총 페이지 수
			int startPage = 1;

			if (currentPage % 10 != 0) { //currentPage가 11일때
				startPage = (int) currentPage / 10 * 1;
			} else { //currentPage=가 10일떄
				startPage = ((int) (currentPage / 10) - 1) * 10 + 1;
			}
			int pageBlock = 10;
			int endPage = startPage + pageBlock - 1;
			//1+10-1=30

		}
		%>
	</center>
</body>
</html>
