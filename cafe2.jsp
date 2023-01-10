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
	int total = 0;
	int price = 0;

	String menu = request.getParameter("menu");
	String number = request.getParameter("number");
	String text = request.getParameter("text");
	
	switch(menu){
	case "ame":
		price=4000;
		break;
	case "latte":
		price=4500;
		break;
	case "chino":
		price=4500;
		break;
	case "fra":
		price=7500;
		break;
	}
	
	total=price*Integer.parseInt(number);	%>
	
	커피메뉴: <%=menu %><br>
	1개 가격: <%=price %><br>
	수량: <%=number %><br>
	총 금액: <%=total %><br>
	입금액: <%=text %><br>
</body>
</html>
