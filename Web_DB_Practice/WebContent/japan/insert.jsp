<%@page import="test.japan.dao.JapanDao"%>
<%@page import="test.japan.dto.JapanDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name");
	String note=request.getParameter("note");
	
	JapanDto dto=new JapanDto();
	dto.setName(name);
	dto.setNote(note);
	JapanDao dao=JapanDao.getInstance();
	boolean isSuccess=dao.insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/japan/insert.jsp</title>
</head>
<body>
	<%if(isSuccess){ %>
		<script>
			alert("여행지가 추가되었습니다.")
			location.href="${pageContext.request.contextPath }/japan/list.jsp"
		</script>
		
	<%}else{ %>
		<script>alert("여행지 추가에 실패하였습니다.")</script>
		location.href="${pageContext.request.contextPath }/japan/list.jsp"
	<%} %>
</body>
</html>