<%@page import="test.japan.dto.JapanDto"%>
<%@page import="test.japan.dao.JapanDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//1. 요청했을때  오는 값들 읽어오기
	int num=Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	String note=request.getParameter("note");
	//2. 읽어온 값을 dto 에 저장하기
	JapanDao dao=JapanDao.getInstance();
	JapanDto dto=new JapanDto(num, name, note);
	//3. dao에 있는 수정하는 메소드 사용하기
	boolean isSuccess=dao.update(dto);
	//4. 응답하기
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/japan/update.jsp</title>
</head>
<body>
	<%if(isSuccess){ %>
		<script>
			alert("수정되었습니다.")
			location.href="${pageContext.request.contextPath}/japan/list.jsp";
		</script>
		
	<%} else{%>
		<script>
			alert("수정에 실패했습니다.")
			location.href="${pageContext.request.contextPath}/japan/list.jsp";
		</script>
	<%} %>
</body>
</html>
    
