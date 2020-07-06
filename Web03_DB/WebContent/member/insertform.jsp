<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insertform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
<script type=text/javascript>
	function formTest(){
		if(!document.insertForm.name.value){//input name 칸에 값이 없을때
			alert("이름을 입력해주세요.")//입력 안했을시 알림창뜬다.
			
			document.insertForm.name.focus();//입력하는 곳에 focus 를 맞춰준다.
			
			return false;// return 값이 false
		}
		
		if(!document.insertForm.addr.value){
			alert("주소를 입력해주세요.");
			document.insertForm.addr.focus();
			return false;
		}
	}
</script>
<style>
	body{
		margin : 0 auto;
	}
	body>div{
		margin : 0 auto;
	}
	.container{
		
	}
</style>
</head>
<body>
<div class="navbar navbar-expand-sm navbar-dark bg-primary">
	<a class="navbar-brand" href="${pageContext.request.contextPath }">Acorn</a>
	<ul class="navbar-nav">
		<li class="nav-item">
			<a class=" nav-link active" href="${pageContext.request.contextPath }/member/list.jsp" >Member</a>
		</li>
		<li class="nav-item">
			<a class="nav-link " href="${pageContext.request.contextPath }/todo/list.jsp" >Todo</a>
		</li>
	</ul>
</div>
<div class="container">
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="../index.jsp">Home</a></li>
		<li class="breadcrumb-item"><a href="list.jsp">회원목록</a></li>
		<li class="breadcrumb-item active">추가양식</li>
	</ol>
   <h1>회원정보 추가폼입니다.</h1>
   <%--onsubmit="return formTest()" 이란 부분이 서브밋 버튼을 클릭했을때 
   	formTest()이라는 자바스크립트 함수에서 리턴값을 받아서 그 값이 true 일때만 action 페이지로 넘어가게 된다.  --%>
   <form name="insertForm" onsubmit="return formTest()" action="insert.jsp" method="post">
   <div class="form-row align-items-center">
	   <div class="form-gruop ">
	      <label for="name">이름</label>
	      <input class="form-control" type="text" name="name" id="name"/><br/>
	   </div>
	   <div class="col-auto">
	   	  <label for="addr">주소</label>
	      <input class="form-control" type="text" name="addr" id="addr"/><br/>
	   </div>
   </div>
	   <button class="btn btn-primary" type="submit">추가</button>
	   <button class="btn btn-warning" type="reset">취소</button>
   </form>
  
</div>

</body>
</html>