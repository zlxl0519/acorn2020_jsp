<%@page import="test.japan.dao.JapanDao"%>
<%@page import="test.japan.dto.JapanDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num=Integer.parseInt(request.getParameter("num"));
	JapanDao dao=JapanDao.getInstance();
	JapanDto dto=dao.getDate(num);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/japan/updateform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<h1>일본여행리스트 수정 폼입니다.</h1>
	<form action="${pageContext.request.contextPath}/japan/update.jsp" method="post">
		<label for="num">번호</label>
		<input type="hidden" name="num" id="num" value=<%=dto.getNum() %> />
		<input type="text" id="num" value=<%=dto.getNum() %> disabled/><br/>
		<label for="name">일본 가고싶은 지역</label>
		<input type="text" name="name" id="name" value=<%=dto.getName() %> /><br/>
		<label for="note">추가사항</label>
		<input type="text" name="note" id="note" value=<%=dto.getNote() %>/><br/>
		<div class="btn-toolbar" role="toolbar" aria-label="toolbar with button groups">
			<div class="btn-group mr-2">
				<button class="btn btn-primary" type="submit">수정하기</button>
				<button class="btn btn-primary" type="reset">취소</button>
			</div>
		</div>
		
	</form>
</div>
</body>
</html>