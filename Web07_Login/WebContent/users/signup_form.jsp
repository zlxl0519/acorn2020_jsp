<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup_form.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<h1>회원 가입 폼 입니다.</h1>
	<form action="signup.jsp" method="post">
		<div class="form-group">
			<label for="id">아이디</label>
			<input class="form-control" type="text" name="id" id="id"/>
		</div>
		<div class="form-group">
			<label for="pwd">비밀번호</label>
			<input class="form-control" type="text" name="pwd" id="pwd"/>
		</div>
		<div class="form-group">
			<label for="email">이메일</label>
			<input class="form-control" type="text" name="email" id="email" />
		</div>
		<button class="btn btn-primary" type="submit">가입</button>
	</form>
</div>
</body>
</html>