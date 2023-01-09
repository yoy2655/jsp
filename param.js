function ch(){
	if(document.fr.id.value==""){
		alert("id 입력해라");
		return false;
	}
	else if(document.fr.age.value==""){
		alert("나이 입력해라");
		return false;
	}
	else if(isNaN(document.fr.age.value)){
		alert("숫자로 입력해라");
		return false;
	}
	else{
		return true;
	}
}
