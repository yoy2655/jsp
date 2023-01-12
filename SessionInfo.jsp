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
	String id = session.getId();
	long lasttime = session.getLastAccessedTime(); //마지막으로 액세스한 시간 돌려줌
	long created= session.getCreationTime();	//세션이 생성된 시간
	long time=(lasttime-created)/60000;	//웹 사이트에 머문 시간(초를 분단위로 하기 위해서 60000으로 나눔)
	
	int in=session.getMaxInactiveInterval()/60;	//세션의 유효 시간
	boolean b=session.isNew();	//세션이 새로만들었는지 여부

	%>
	
	세션 ID는 <%=id %><br>
	웹 사이트에 머문 시간은 <%=time %> 분이다<br>
	세션의 유효 시간은  <%=in %>분이다<br>
	세션이 새로 만들어 졌냐? <br>
	<% 
	if(b)
		out.print("네<br>");
	else
		out.print("아니오<br>");
	%>
</body>
</html>
