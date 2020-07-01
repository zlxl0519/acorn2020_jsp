<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/time.jsp</title>
</head>
<body>
	<% //servlet 의 service 영역에 만들어진다.
	
		Date d=new Date();
		String now=d.toString();
	%>
	<p>현재시간: <%out.println(now); %></p>
	
	<p>현재시간 : <%=now %></p>
</body>
</html>