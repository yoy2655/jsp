<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- onsubmit : form태그 안에서 form전송을 하기 전에 입력된 데이터의 유효성 체크하기 위한 이벤트-->
	<form action="two2.jsp" name="aa" onsubmit="return on()">
		숫자: <input name="num">
		<!-- input type안적으면 text라는 뜻이다 (생략 가능) -->
		<input type="submit" value="입력완료">
	</form>
	<script type="text/javascript">
		function on() {
			if (isNaN(document.aa.num.value)) {
				alert("(숫자를 입력해야하는데)문자열 입력함");
				return false;
				//onsubmit="return on()"으로 넘어가서 
				//true/false값에 따라 form action="two2.jsp"로 넘어간다
			} else {
				return true;
			}
		}//숫자를 잘 입력하면 1부터 입력한 수까지 출력
	</script>
</body>
</html>
