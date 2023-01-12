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
	%>
	<!-- request로 넘어온 데이터를 자바빈즈랑 매핑시켜주는 useBean -->
	<jsp:useBean id="sbean" class="bean.StuBean">
	<!-- 객체생성 StuBean sbean=new StuBean -->
	
	<!-- jsp 내용을 자바빈 클래스에 데이터를 매핑(넣어준다) -->
	<jsp:setProperty name="sbean" property="*"/>
	<!-- 자동으로 모두 다 매핑시켜라 (=>useBean의 id값과 setProperty의 name값이 일치해야한다!)-->
	</jsp:useBean>
	
	<h3>아이디는 <jsp:getProperty property="id" name="sbean"/></h3>
	<!-- 가져올때 name은 객체이름(sbean)을 가져온다
	자바빈을 짤때(클래스)와 폼에 들어가는 순서를 맞게 적어줘야 된다(이름만 같아도 되긴하지만 같게 적어줘라!) -->
	<h3>이메일은 <jsp:getProperty property="email" name="sbean"/></h3>
	<h3>전화번호 <%=sbean.getTel() %></h3>
	
</body>
</html>
