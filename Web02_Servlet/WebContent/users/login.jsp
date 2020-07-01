<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//폼 전송되는 아이디와 비밀번호는 읽어온다.
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/login.jsp</title>
<link rel="stylesheet" href="/Web02_Servlet/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<%if(id.equals("gura") && pwd.equals("1234")){ %>	
		<p class="alert alert-success"><%=id %>님 로그인 되었습니다<a class="alert-link "href="../index.html">확인</a></p>
	<%}else{ %>
		<p class="alert alert-danger">아이디 혹은 비밀번호가 틀려요<a class="alert-link "href="../index.html">확인</a></p>
	<%} %>
	
</div>
</body>
</html>