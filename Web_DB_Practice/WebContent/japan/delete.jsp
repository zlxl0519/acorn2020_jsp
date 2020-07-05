<%@page import="test.japan.dao.JapanDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//1. 요청한 값을 파리미터로 받는다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. 파리미터 값을 가져와서 삭제한다.
	JapanDao dao=JapanDao.getInstance();
	dao.delete(num);
	//3. 응답 위에 지우는 것을 수행하고 바로 list 로 갈수 있다.
	String cpath=request.getContextPath();
	response.sendRedirect(cpath+"/japan/list.jsp");
%>
