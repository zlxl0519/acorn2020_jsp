<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/index.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #e3f2fd;">
		<a href="${pageContext.request.contextPath}/index.jsp" class="navbar-brand mb-0 h1"" >
			Japan Travel
			
		</a>
		 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		 	<span class="navbar-toggler-icon"></span>
		 </button>
		 
		 <div class="collapse navbar-collapse" id="navbarSupportedContent">
		 	
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a href="japan/list.jsp">일본여행지</a></li>
			</ul>
		 </div>
	</nav>
	<div class="container">
		<ul>
			<li><a href="${pageContext.request.contextPath }/japan/list.jsp ">일본여행지 목록</a></li>
		</ul>
	
	</div>
</body>
</html>