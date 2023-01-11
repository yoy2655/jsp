<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- 
1. 자바의 선언문에서 선언한 변수와 스크립트릿에서 선언한 변수의 차이를 설명해라.
자바의 선언문: 전역변수선언, 메소드선언
스크립트릿에서 선언한 변수: 지역변수선언
-->

​

<!--2. While문을 이용하여 1~10까지 합을 출력해라.  -->
<%
int sum=0;
int n=1;
while(n<11){
	sum+=n;
	n++;
}
out.print(sum);
%>
<%=sum %>

<!-- 
3. 다음을 보고 코드 구현해라.
if.jsp -> 이름, 좋아하는 색에 대한 폼 구조(option)
if1.jsp -> 좋아하는 색 value값이랑 비교해서 출력
실행 결과) ~는 ~색을 좋아하네요.
 -->

<form method="get" action="if1.jsp">
이름: <input type="text" name="name"> 
좋아하는 색: <select name="color">
<option value="red">red</option>
<option value="black">black</option>
</select><br>
<input type="submit" value="전송">
</form>
</body>
</html>
