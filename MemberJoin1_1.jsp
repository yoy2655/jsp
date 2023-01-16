<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<center>
	<h2>회원가입</h2>
	<form action="JoinProc.jsp" method="post">
		<table width="500" border="1">
			<tr height="50">
				<td width="150" align="center">아이디</td>
				<td widht="350" align="center"><input type="text" name="id"
					size="40"></td>
			<tr height="50">
				<td width="150" align="center">패스워드</td>
				<td widht="350" align="center"><input type="password"
					name="pass1" size="40"></td>
			<tr height="50">
				<td width="150" align="center">패스워드확인</td>
				<td widht="350" align="center"><input type="password"
					name="pass2" size="40"></td>
			<tr height="50">
				<td width="150" align="center">이메일</td>
				<td widht="350" align="center"><input type="email" name="email"
					size="40"></td>
			<tr height="50">
				<td width="150" align="center">전화번호</td>
				<td widht="350" align="center"><input type="tel" name="tel"
					size="40"></td>
			<tr height="50">
				<td width="150" align="center">당신의관심분야</td>
				<td width="350" align="center"><input type="checkbox"
					name="hobby" value="코딩">코딩 <input type="checkbox"
					name="hobby" value="등산">등산 <input type="checkbox"
					name="hobby" value="IT">IT <input type="checkbox"
					name="hobby" value="독서">독서</td>
			</tr>
			<tr height="50">
				<td width="150" align="center">당신의직업은</td>
				<td width="350" align="center"><select name="job">
						<option value="교사">교사</option>
						<option value="개발자">개발자</option>
						<option value="의사">의사</option>
						<option value="언론인">언론인</option>
				</select></td>
			</tr>
			<tr height="50">
				<td width="150" align="center">당신의연령은</td>
				<td width="350" align="center"><input type="radio" name="age"
					value="10">10대 <input type="radio" name="age" value="20">20대
					<input type="radio" name="age" value="30">30대 <input
					type="radio" name="age" value="40">40대</td>
			</tr>
			<tr height="50">
				<td width="150" align="center">하고싶은말</td>
				<td width="350" align="center"><textarea rows="5" cols="40"
						name="info"></textarea></td>
			</tr>
			<tr height="50">
				<td align="center" colspan="2"><input type="submit"
					value="회원가입"> <input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</center>
</body>
</html>
