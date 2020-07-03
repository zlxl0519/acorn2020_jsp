<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 요청한 값을 파리미터로 받는다.
	request.getParameter("num");
	//2. request contextPath 를 가져온다.
	String cpath=request.getContextPath();
	//3. 리다일렉트로 응답한다.
	response.sendRedirect(cpath+"list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>