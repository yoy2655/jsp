<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!String name[] = { "user1", "user2", "user3", "user4" };%>
	<table border="1" width="200">
		<%
		for (int i = 0; i < name.length; i++) {
		%>

		<tr>
		<td><%=i%></td>
		<td><%=name[i] %></td>
		</tr>
		<%
		}
		%>
	</table>

</body>
</html>
