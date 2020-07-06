<%@page import="java.util.List"%>
<%@page import="test.japan.dao.JapanDao"%>
<%@page import="test.japan.dto.JapanDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JapanDao dao=JapanDao.getInstance();
	List<JapanDto> list=dao.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/japan/list.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<h1>일본 가고 싶은 여행지 목록입니다.</h1>
	<table class="table">
		<thead>
			<tr>
				<th>번호</th>
				<th>지역명</th>
				<th>간단노트</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<%for(JapanDto tmp:list){%>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getName() %></td>
					<td><%=tmp.getNote() %></td>
					<td><a href="${pageContext.request.contextPath }/japan/updateform.jsp?num=<%=tmp.getNum() %>">수정</a></td>
					<td><a href="${pageContext.request.contextPath}/japan/delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
				</tr>
			<% }%>
		</tbody>
	</table>
	<a href="insertform.jsp">여행지 추가하기</a>
</div>
</body>
</html>