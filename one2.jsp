<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:forward page="two.jsp">
		<jsp:param name="name" value="tom" />
		<jsp:param name="hobby" value="tennis" />
	</jsp:forward>
</body>
</html>

<!-- 
4.	JSP와 Servlet의 차이점을 설명해라. 
jsp는 HTML 작성하는데 유용하다
jsp가 수정된 경우 재배포할 필요가 없이 WAS가 알아서 처리한다.

서블릿은 데이터처리에는 좋으나(컨트롤러)
수정시 전체 코드를 재컴파일한 후 재배포 하는 작업이 필요하다.


자바빈즈(JavaBeans)를 왜 사용하는가?
jsp페이지가 복잡한 자바코드로 구성되는 것을 피하고 jsp페이지에는 HTML과 같은 쉽고 간단한 코드만을 구성하도록 하기 위해서
자바빈즈는 JSP 안의 수많은 코드들이 담당했던 일들을 독립적으로 처리하기 위한 부품과도 같다. 
부품을 만들어 놓고 JSP에서 간단히 호출해서 사용하는 것이다. 
JSP프로그래밍에서 복잡한 로직을 jsp페이지 내에 넣지 않고 자바빈즈와 같은 컴포넌트 기술을 이용하여 작성할 수 있게 하여 
효율성, 재사용성 측면에서 많은 장점을 갖고 있다. 
빈을 사용하기 위한 태그로 useBean(빈 생성), setProperty(빈에 값을 저장), getProperty(빈의 값을 가져옴) 

웹 애플리케이션은 JSP컨테이너에서 실행되는 프로그램의 한 단위를 의미한다. 
웹 애플리케이션은 웹 프로그램에 있어서 하나의 단위라고 할 수 있는데 
이 말은 여러 파일들과 이미지들이 함께 사용되어져서 웹에서 움직이는 프로그램 덩어리라는 의미이다.
이 프로그램 덩어리를 구성하는 구조는 HTML, 이미지, JSP등의 파일들이 존재할 루트 폴더, Web-INF폴더, 
그 폴더 내에는 classes폴더, lib폴더 등을 포함한다.
 -->
