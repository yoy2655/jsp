<%@page import="unit01.MemberDAO1_1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
		//취미 부분은 별도로 읽어들여 다시 빈 클래스에 저장 
		String hobby[] = request.getParameterValues("hobby");
		//배열에 있는 내용을 하나의 스트링으로 저장
		String str = "";
		for (int i = 0; i < hobby.length; i++) {
			str += hobby[i] + "";
		}
	%>
	<jsp:useBean id="mbean" class="unit01.MemberBean1_1">
		<jsp:setProperty name="mbean" property="*" />
	</jsp:useBean>
	<%
	mbean.setHobby(str);
		MemberDAO1_1 mdao=new MemberDAO1_1();
		mdao.insertMember(mbean);
		
		//회원가입이 되었다면 회원정보를 보여주는 페이지로 이동시켜라
		response.sendRedirect("MemberArray.jsp");
	%>
오라클에 완료
</body>
</html>
