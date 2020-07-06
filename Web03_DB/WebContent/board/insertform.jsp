<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/insertform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<h1>새글 작성 폼 입니다.</h1>
	<form action="insert.jsp" method="post">
		<div class="form-group">
			<label for="writer">작성자</label>
			<input class="form-control" type="text"  name="writer" id="writer"/><br/>
		</div>
		<div class="form-group">
			<label for="title">제목</label>
			<input class="form-control" type="text" name="title" id="title"/><br/>
		</div>
		<div class="form-group">
			<label for="content">내용</label><br/>
			<textarea class="form-control" name="content" id="content" cols="20" rows="5"></textarea><br/>
		</div>
		<input type="submit" value="등록" />
		<input type="reset" value="취소"/>
	</form>
</div>
	
</body>
</html>