<%@page import="test.board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//삭제할 글번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//해당 글을 삭제한다.
	BoardDao.getInstance().delete(num);
	//응답한다.
	String cpath=request.getContextPath();
	response.sendRedirect(cpath+"/board/list.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/delete.jsp</title>
</head>
<body>

</body>
</html>