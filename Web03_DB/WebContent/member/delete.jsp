<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 
	int num=Integer.parseInt(request.getParameter("num"));
	MemberDao dao=MemberDao.getInstance();
	dao.delete(num);
	//3. 응답
	//리다일렉트 이동시키기 위해 context path 를 먼저 읽어온다. // 요청하는 곳의 context path를 읽어오는것. 
	String cPath=request.getContextPath();
	// 회원 목록보기 요청을 하도록 강요하는 응답을 한다.(리다일렉트 이동 시키기)
	response.sendRedirect(cPath+"/member/list.jsp");
%>
