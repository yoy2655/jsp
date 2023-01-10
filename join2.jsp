<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="join3.jsp">
  <table width="500" border="1">
   <tr height="50">
    <td width="150" align="center">아이디</td>
    <td width="350" align="center">
     <input type="text" name="id" size="50" placeholder="id 넣어라">
    </td>
   </tr>
    <tr height="50">
    <td width="150" align="center">패스워드</td>
    <td width="350" align="center">
     <input type="password" name="pass1" size="50"  placeholder="pw 넣어라">
    </td>
   </tr>
  <tr height="50">
    <td width="150" align="center">패스워드 확인</td>
    <td width="350" align="center">
     <input type="password" name="pass2" size="50">
    </td>
   </tr>
<tr height="50">
    <td width="150" align="center">이메일</td>
    <td width="350" align="center">
    <input type="email" name="email" size="50">
    </td>
   </tr>
   <tr height="50">
    <td width="150" align="center">전화번호</td>
    <td width="350" align="center">
     <input type="tel" name="tel" size="50">
    </td>
   </tr>
   <tr height="50">
    <td width="150" align="center">취미</td>
    <td width="350" align="center">
     <input type="checkbox" name="hobby" value="독서">독서 
     <input type="checkbox" name="hobby" value="음악">음악 
     <input type="checkbox" name="hobby" value="캠핑">캠핑 
     <input type="checkbox" name="hobby" value="여행">여행 
    </td>
   </tr>
   <tr height="50">
    <td width="150" align="center">좋아하는 영화</td>
    <td width="350" align="center">
     <select name="movie">
     <option value="클래식">클래스</option>
     <option value="배트맨">배트맨</option>
     <option value="앤트맨">앤트맨</option>
     <option value="대부">대부</option>
     </select>
    </td>
   </tr>
   <tr height="50">
    <td width="150" align="center">연령대</td>
    <td width="350" align="center">
    <input type="radio" name="age" value="20">20대 
    <input type="radio" name="age" value="30">30대 
    <input type="radio" name="age" value="40">40대 
    <input type="radio" name="age" value="50">50대 
    </td>
   </tr>
   <tr height="50">
    <td width="150" align="center">남기고 싶은말</td>
    <td width="350" align="center">
    <textarea rows="5" cols="30" name="info"></textarea>
    </td>
   </tr>
   <tr height="50">
    <td width="150" colspan="2">
     <input type="submit" value="회원가입">
     <input type="reset" value="취소">
    </td>
   </tr>
 </table>
</form>
</body>
</html>
