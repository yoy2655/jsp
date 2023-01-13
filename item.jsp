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
	response.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	String desc1 = request.getParameter("desc1");
	%>

	<jsp:useBean id="item" class="unit01.Item">
		<jsp:setProperty property="*" name="item" />
	</jsp:useBean>
	
	<%
	String id="system";
	String pw="221216";
	String url="jdbc:oracle:thin:@localhost:1521/xe";
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection con=DriverManager.getConnection(url,id,pw);
		String sql="insert into Item values(?,?,?)";
		
		PreparedStatement pstmt=con.prepareStatement(sql);
		
		pstmt.setString(1,item.getName());
		pstmt.setString(2,item.getPrice());
		pstmt.setString(3,item.getDesc1());
		
		pstmt.executeUpdate();
		
		con.close();
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
	오라클에 완료됨

</body>
</html>
