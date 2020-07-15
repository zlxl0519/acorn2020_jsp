<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//ajax 전송 파라미터를 읽어온다. (data : "inputId="+inputId)
	String inputId=request.getParameter("inputId");
	//UsersDao 를 이용해서 해당 아이디가 존재하는지 여부를 리턴받는다.
	boolean isExist=UsersDao.getInstance().isExist(inputId);
%>
<%--object 로 바껴서(jquery가 해줌) 응답해줘서 ajax 에 나타난다. {isExist:true} or {isExist:false}
json 형식에 안맞는 문자열로 응답하면 오류가 나서 아무data 도 안보내준다. --%>
{"isExist":<%=isExist %>}