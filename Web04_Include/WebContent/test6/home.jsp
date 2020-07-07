<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test6/home.jsp</title>
<%-- include 된 페이지에 필요한 css 도 여기서 로딩을 해야 된다. --%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<%-- include 될 jsp 페이지는 반드시 상대경로로 찾아 가야 한다. --%>
	<%-- thisPage 라는 파라미터 명으로 home 이라는 문자열 전달하기 
		?thisPage=home //GET 방식 요청
		각 페이지마다 include 내용이 달라질수 있기 때문에 필요--%>
	<jsp:include page="../include/navbar2.jsp">
		<jsp:param value="home" name="thisPage"/>
	</jsp:include>
	<div class="container">
		<h1>home.jsp 입니다.</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptas voluptatibus ab itaque quasi incidunt cupiditate necessitatibus excepturi nesciunt inventore ullam explicabo aliquid tenetur autem soluta sed non officia! Quisquam inventore?</p>
	</div>
	
	<jsp:include page="../include/footer.jsp">
		<jsp:param value="home" name="thisPage"/>
	</jsp:include>
</body>
</html>