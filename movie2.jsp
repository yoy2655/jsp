<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String[] m = { "The Secret Life of Pets", "Zootopia", "The Grinch", "Harry Potter and the Philosopher's Stone" };

	pageContext.setAttribute("movie", m);
	%>
	<c:forEach var="mo" items="${movie}" varStatus="status">
		<c:choose>
			<c:when test="${status.first}">
				<li style="color:red;">${mo}</li>
			</c:when>
			
			<c:otherwise>
				<li>${mo}</li>
			</c:otherwise>
		</c:choose>
		</c:forEach>
</body>
</html>
