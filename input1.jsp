<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	var n=prompt();
	var dan=parseInt(n);
	for(var i=1; i<=9; i++){
		document.write(dan+"*"+i+"="+dan*i+"<br>");
	}
</script>
</body>
</html>
