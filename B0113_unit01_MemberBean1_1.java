<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
1. MemberJoin.jsp
(HTML로 폼 구조 만듬)-"회원가입" 버튼을 누르면
JoinProc.jsp로 페이지 이동

2. JoinProc.jsp
-MemberJoin.jsp에서 입력했던 값들을 읽어들인다.(useBean사용)
-회원들 삽입,삭제,수정을 위해 MemberDAO클래스를 만듬
-insertMember라는 함수를 호출했다(MemberDAO에서 만들었다.)
-회원가입을 하면 목록이 뜨도록 MemberArray.jsp로 페이지 이동

3. MemberDAO.java
-오라클 데이터 베이스에 연결하고 select,insert,update,delete작업을
실행해 주는 클래스
insertMember(): 한 사람의 회원 정보를 저장한다(추가)
입력폼에서 적은 데이터들을 테이블에 저장한다(setString)

allSelectMember() : 모든 회원들을 조회한다(select * from member)
모든 회원들이기 때문에 가변적길이인 Vector를 사용해서
입력폼에서 적은 데이터들을 테이블에서 가져와 저장한다 MemberBean의 필드에 저장(setString)

oneMember() : 한 사람 회원을 조회(id를 기준으로)
한 사람 회원이기때문에 모든 정보를 담고 있는 MemberBean클래스를 
사용해서 입력폼에서 적은 데이터들을 테이블에 저장한다

getPass(String id): 매개변수 id를 기준으로 비밀번호가 맞는지 판단한다.

updateMember(MemberBean mbean) : 회원정보를 수정하고 싶으면
비밀번호를 입력해 비밀번호가 맞으면 수정가능할 수 있도록 구현(update)

deleteMember(String id) : 비밀번호를 입력해 비밀번호가 맞으면
한 사람의 회원 삭제할 수 있도록 delete명령 써서 구현

4. MeberBean.java
-useBean을 사용해 데이터를 읽어들일 수 있도록 만듬(set:저장, get:얻기)

5. MemberArray.jsp
- 모든 회원의 정보를 출력해야하므로 MemberDAO에서 만든 Vector객체
생성하고 allSelectMember()함수 호출한다.
웹에 모든 회원정보를 출력해야 한다.
즉 <table>태그를 사용해 id는 하이퍼링크 형태, 나머지 값은 폼에서
입력했던 값이 저장되었던 MemberBean.java에 있는 get()를 호출하여 출력한다.

6. MemberIn.jsp
- MemberArray에서 넘긴 id를 받아주고, 데이터베이스에서 한 회원의 정보를 가져옴
- 버튼을 만들어 페이지 이동시킨다(수정,삭제,전체회원,회원가입)
-table태그를 이용하여 회원의 정보를 리턴받는다.

7.MemberUpdate.jsp
- 회원정보수정하기 위해 id를 기준(쿼리스트링)으로 MemberDAO에서 만든
oneMember()를 호출한다.
-"전체목록"버튼도 만들어 MemberArray.jsp로 이동
-"회원수정"버튼을 누르면 UpdateProc.jsp로 이동

8. UpdateProc.jsp
- "회원수정"버튼 누르면 수정할 수 있도록 비밀번호가 일치하는지
확인하기 위해 MemberDAO에서 만든 getPass함수 호출해
입력했던 비밀번호(DB에서 꺼내옴)과 현재 입력한 비밀번호를 확인
비밀번호가 일치하면 MemberDAO에서 만든 update()함수 호출해서
수정할 수 있도록 구현
(update set where~~)수정 후 다시 MemberArray.jsp로 이동(잘 수정되었는지 보기 위해)
비밀번호 안맞으면 자바스크립트로 경고창 뜨게함(alert)


9.MemberDeleter.jsp
-회원정보삭제하기 위해 id를 기준으로 id값 불러온다.
-"회원전체"버튼을 만들어 MemberArray.jsp로 이동
-"삭제"버튼을 누르면 DeleteProc.jsp페이지로 이동

10.DeleteProc.jsp
UpdateProc.jsp와 비슷하게 비밀번호 확인해서 일치하면
MemberDAO에서 만든 delete()함수 호출해 삭제됨
(delete from where)삭제 후 다시 MemberArray.jsp로 이동(잘 삭제되었는지 보기 위해)
비밀번호 안맞으면 자바스크립트로 경고창 뜨게함(alert)


</body>
</html>
