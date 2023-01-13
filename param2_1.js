function ch(){
	var id=document.getELEgetElementsByName(id)[0];
	var age=document.getElementsByName("age")[0];
	
	if(isEmpty(id.value)||isEmpty(age.value)){
		alert("필수입력항목입니다.");
		return false;
	}
	if(isNaN(age.value)){
		alert("숫자를 입력하세요");
		return false;
	}
	return true;
}
