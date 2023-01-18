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
<!-- items속성의 집합체에 젖장된 항목들이 순차적으로 var속성에 지정한 변수에 저장이 된다. -->
</body>
</html>
