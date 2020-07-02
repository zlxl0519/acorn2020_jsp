
<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//	1. 폼 전송되는 할일을 읽어온다.
	request.setCharacterEncoding("utf-8");//한글이 깨지지 않도록 인코딩
	String work=request.getParameter("work");
	//	2. DB 에 저장한다.
	TodoDao dao=TodoDao.getInstence();
	if(work!=null){
		dao.insert(work);
	}
	//	3. 클라이언트 웹브라우저에 응답한다.
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/insert.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
 
	<p class="alert alert-success">할일을 추가 했습니다. <a href="list.jsp">확인</a></p>
	
	
</body>
</html>