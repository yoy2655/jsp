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
	int age = Integer.parseInt(request.getParameter("age"));
	if(age<15){%>
		<script type="text/javascript">
			alert("관람 불가능");
			history.go(-1);
		</script>
	<%}else{
		request.setAttribute("name","홍길동");
		RequestDispatcher dis=request.getRequestDispatcher("Movie3.jsp");
		dis.forward(request, response);
	}%>
</body>
</html>
