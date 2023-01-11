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
	if (request.getMethod().equals("POST")) {
	%>
	<%
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");

	//유효성 체크
	if (id.isEmpty() || pwd.isEmpty()) {
		request.setAttribute("error", "ID또는 비밀번호를 입력해주세요!"); //속성을 꺼낸다
		RequestDispatcher rd = request.getRequestDispatcher("loginOut.jsp");
		rd.forward(request, response);
		return;
	}

	//로그인 처리
	if (session.isNew() || session.getAttribute("id") == null) {
		session.setAttribute("id", id);
		out.print("로그인 작업이 완료되었습니다.");
	} else {
		out.print("이미 로그인 상태입니다.");
	}
	%>
	<%=id%>
	/
	<%=pwd%>
	<%
	} else if (request.getMethod().equals("GET")) {
	if (session != null && session.getAttribute("id") != null) {
		session.invalidate();
		out.print("로그아웃 작업이 완료되었습니다.");
	} else {
		out.print("현재 로그인 상태가 아닙니다.");
	}
	}
	%>
</body>
</html>
