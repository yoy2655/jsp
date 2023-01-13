<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	String[] hobby = request.getParameterValues("hobby"); //캠핑 영화
	String str = "";

	//배열에 있는 내용을 하나의 문자열로 저장
	for (String s : hobby) {
		str += s;
	}
	%>

	<!-- useBean을 이용하여 한꺼번에 데이터 받기 -->
	<jsp:useBean id="join" class="unit01.MemberBean1">
		<jsp:setProperty property="*" name="join"/>
		</jsp:useBean>

	<%
	join.setHobby(str);
	
	String id="system";
	String pw="221216";
	String url="jdbc:oracle:thin:@192.168.13.19:1521/xe";
	
	try{
		//1.해당 데이터베이스를 사용한다고 선언
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//2.데이터베이스에 접속
		Connection con=DriverManager.getConnection(url,id,pw);
		String sql="insert into Member values(?,?,?,?,?,?,?,?)";
		
		//3.접속 후 쿼리를 준비한다.
		PreparedStatement pstmt=con.prepareStatement(sql);
		
		//?에 맞게 데이터를 맵핑
		pstmt.setString(1,join.getId());
		pstmt.setString(2,join.getPass1());
		pstmt.setString(3,join.getEmail());
		pstmt.setString(4,join.getTel());
		pstmt.setString(5,join.getHobby());
		pstmt.setString(6,join.getJob());
		pstmt.setString(7,join.getAge());
		pstmt.setString(8,join.getInfo());
		
		pstmt.executeUpdate();
		//insert,update,delete시 사용하는 메소드
		
		con.close();
		
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
	오라클에 완료됨
</body>
</html>
