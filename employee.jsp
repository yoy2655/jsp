<%@page import="unit01.EmployeeBean"%>
<%@page import="java.util.Vector"%>
<%@page import="unit01.EmployeeDAO"%>
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
		EmployeeDAO edao = new EmployeeDAO();
		Vector<EmployeeBean> vec = edao.selectAllEmpBean();
	%>

	<center>
		<table width="400" border="1">
			<tr height="50">
				<td width="150" align="center">이름</td>
				<td width="250" align="center">주소</td>
				<td width="200" align="center">ssn</td>
			</tr>

			<%
			for(int i=0; i<vec.size(); i++){
					EmployeeBean bean=vec.get(i);
			%>
			<tr height="50">
				<td width="150" align="center"><%=bean.getName()%></td>
				<td width="250" align="center"><%=bean.getAddress()%></td>
				<td width="200" align="center"><%=bean.getSsn()%></td>
			</tr>
			<%
			}
			%>
			
		</table>
	</center>
</body>
</html>
