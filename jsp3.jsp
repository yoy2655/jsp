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
	
	String name=request.getParameter("name");
	String gender=request.getParameter("gender");
	String color[]=request.getParameterValues("color");
	
	if(gender.equals("남자")){
		out.print("man");
	}
	else{
		out.print("woman");
	}
	
	for(int i=0; i<color.length; i++){
		switch(color[i]){
		case "1":
			out.print("red");
			break;
		case "2":
			out.print("black");
			break;
		case "3":
			out.print("green");
			break;
		}
	}
	out.print(name);
	%>
</body>
</html>
