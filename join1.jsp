<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
.st {
	color: orange;
	font-weight: bold;
}
</style>
</head>
<body>
	<form action="JoinServlet1" method="get" name="fr">
		<table>
			<tr>
				<td>이름</td>
				<td class="st">*</td>
				<td><input type="text" placeholder="홍길동" name="name"></td>

			</tr>
			<tr>
				<td>주민등록번호</td>
				<td class="st">*</td>
				<td><input type="text" placeholder="861123" name="jumin1">
					- <input type="text" placeholder="1012123" name="jumin2"></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td class="st">*</td>
				<td><input type="text" placeholder="hong" name="id"></td>

			</tr>
			<tr>
				<td>비밀번호</td>
				<td class="st">*</td>
				<td><input type="password" placeholder="1234" name="pwd1"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td class="st">*</td>
				<td><input type="password" placeholder="1234" name="pwd2"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td></td>
				<td><input type="text" placeholder="pinksung" name="email1">
					@ <input type="text" placeholder="nate.com" name="email2">
					<select><option>nate.com</option>
						<option>naver.com</option>
						<option>daum.net</option></select></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td></td>
				<td><input type="text" placeholder="321-212" name="zipcode"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td></td>
				<td><input type="text" placeholder="서울시 종로구 관철동" name="addr1">
					<input type="text" placeholder="현대 아파트 201동 103호" name="addr2"></td>

			</tr>
			<tr>
				<td>핸드폰번호</td>
				<td></td>
				<td><input type="text" placeholder="010-1234-5678" name="phone"></td>

			</tr>
			<tr>
				<td>직업</td>
				<td></td>
				<td><textarea name="job" rows="3" cols="15">학생<%="\n"%>컴퓨터/인터넷<%="\n"%>언론<%="\n"%>프로그래머</textarea></td>

			</tr>
			<tr>
				<td>메일/SMS 정보 수신</td>
				<td></td>
				<td><input type="radio" name="no">수신<input type="radio"
					name="no" checked>수신거부</td>

			</tr>
			<tr>
				<td></td>
				<td colspan="2" style="text-align: right;"><input type="submit"
					id="join" value="회원가입" onclick="return chk()"> <input
					type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
	<script>
		function chk() {
			if (fr.id.value.length < 4) {
				alert("아이디는 네글자 이상이어야함");
				return false;
			} else if (fr.zipcode.value.indexOf("-")==-1) {
				alert("zipcode는 -를 포함해야함");
				return false;
			} else if (fr.pwd1.value!=fr.pwd2.value) {
				alert("비밀번호와 비밀번호확인 값이 같아야함")
				return false;
			} else {
				return true;
			}
		}
	</script>
</body>
</html>
