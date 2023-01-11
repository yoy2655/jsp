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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	if (id.equals("sjwsrh") && pw.equals("1234")) {
		response.sendRedirect("suc.jsp?id=" + id);
	} else {
	%>
	<script type="text/javascript">
		alert("로그인 실패");
		history.go(-1);
	</script>
	<%
	}
	%>
</body>
</html>


<!-- 
1. form을 만든다
2. id를 가져온다
3. if문으로 유효성검사를 한다
4. sendRedirect()로 이동해준다
 -->
