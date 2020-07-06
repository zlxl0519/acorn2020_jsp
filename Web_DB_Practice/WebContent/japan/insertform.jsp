<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function formCheck(){
		if(document.insertform.name.value==""){
			alert("일본 가고싶은 곳을 제대로 작성해주세요.");
			document.insertform.name.focus();
			return false;//문제가 있을시 입력을 못하도록 한다.
		}
		
		
	}
</script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<h1>일본 여행지 추가하기</h1>
	<form name="insertform" onsubmit="return formCheck()" action="insert.jsp" method="post">
		<div class="form-group">
			<input class="form-control" type="text" name="name"  placeholder="일본 가고싶은 곳을 적으세요..." />
		</div>
		<div class="form-group">
			<input class="form-control" type="text" name="note" placeholder="지역에 관한 간단메모..."/>
		</div>
		<button class="btn btn-outline-primary" type="submit">추가하기</button>
	</form>
</body>
</html>