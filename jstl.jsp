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
<c:out value="Hello"/>
<c:set var="msg" value="Hi"></c:set>
${msg }<br>

<c:set var="age">10</c:set>
${age }<br>

<c:set var="member" value="<%=new test.MBean()%>"></c:set>
<c:set target="${member}" property="name" value="이철수"></c:set>
<c:set target="${member}" property="id" value="lee"></c:set>
${member}<br>

<c:set var="add" value="${10+5}"></c:set>
${add }<br>

<c:set var="aa" value="${10>5}"></c:set>
${aa}<br>

</body>
</html>
