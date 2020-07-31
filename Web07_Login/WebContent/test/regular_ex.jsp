<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/regular_ex.jsp</title>
</head>
<body>
<h1>Regular Expression 테스트</h1>
<input type="text" id="id" placeholder="아이디 입력..." />
<button id="checkBtn">가입</button>
<p>영문자 소문자로 시작하고 5~10글자 이내, 특수문자를 하나이상 입력</p>
<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<script>

	//영문자 소문자로 시작하는지 여부를 알아 낼수 있는 정규 표현식 객체
	var reg1=/^[a-z]/;
	//var reg2=/.{5,10}/; // 맞는게 있으면 뒤에 나오는것은 상관하지 않고 true 를 반환한다.
	//최소 5글자 최대 10글자 인지 여부를 검증할수 있는 정규 표현식 객체
	var reg2=/^.{5,10}$/; //맞는것만!! 적을수 있도록 정규 표현식은 시작과 끝을 나타내 주어야 한다.
	//특수 문자가 포함되어 있는지 여부를 검증할수 잇는 정규 표현식 객체
	var reg3=/[^a-zA-Z0-9]/; 
	//영문자 소문자 시작 + 최대 5 글자 최대 10 글자 인지 여부를 검증할수 있는 정규 표현식 객체
	var reg4=/^[a-z].{4,9}$/; //  [ ] 이게 한글자가 있어서 최소 4번, 최대9번이라고 한것
	//버튼을 클릭했을때 실행할 함수 등록
	$("#checkBtn").on("click", function(){
		//1. 입력한 문자열을 읽어와서
		var str=$("#id").val();
		//2. 검증한다.
		var result1=reg1.test(str);
		if(result1){
			alert("영문자 소문자로 시작 했군요!");
		}
		
		var result2=reg2.test(str);
		if(result2){
			alert("최소 5글자!최대10글자 이군요!");
		}
	});
</script>
</body>
</html>