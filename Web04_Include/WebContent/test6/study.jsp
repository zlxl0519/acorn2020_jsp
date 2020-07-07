<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test6/study.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<jsp:include page="../include/navbar2.jsp">
		<jsp:param value="study" name="thisPage"/>
	</jsp:include>
	<div class="container">
		<h1>study.jsp 페이지 입니다.</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit veniam ipsa deleniti saepe incidunt aliquam dignissimos voluptates atque impedit quaerat iste similique adipisci odit beatae ducimus vitae cumque eveniet numquam.</p>
	</div>
</body>
</html>