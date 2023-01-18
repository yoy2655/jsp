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
String[] m={"The Secret Life of Pets", "Zootopia", "The Grinch", "Harry Potter and the Philosopher's Stone"};

pageContext.setAttribute("movie",m);
%>
<c:forEach var="mo" items="${movie }" varStatus="status">
${mo }<br>
${status.index }<br>
${status.count }<br>
</c:forEach>

<c:forEach var="a" begin="1" end="10" varStatus="status">
${a }
<c:if test="${not status.last }"></c:if>
</c:forEach> 
</body>
</html>
