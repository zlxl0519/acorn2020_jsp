<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");//filter 가 있어서 안해도 된다.
	String msg=request.getParameter("msg");
	System.out.println(msg);
%>
{"isSuccess":true}