<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%=request.getParameter("id")%><br>
	<%=request.getParameter("pw")%><br> 
	id:${param.id }<br>
	pw:${param.pw }<br>
	
	id:${param["id"]}<br>
	pw:${param["pw"]}<br>
		
	<%=request.getParameter("id")=="aa"%><br>		//false
	<%=request.getParameter("id").equals("aa")%><br>//true
	
	${param.id=="aa"}<br>	//true	->문자열비교가 된다.	 
	
	
	
</body>
</html>
