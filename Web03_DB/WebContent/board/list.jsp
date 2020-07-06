<%@page import="test.board.dto.BoardDto"%>
<%@page import="test.board.dao.BoardDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//BoardDao 객체를 이용해서 글 목록 얻어오기
	List<BoardDto> list=BoardDao.getInstance().getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/list.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<div class="navbar navbar-expand-sm navbar-dark bg-primary">
		<a class="navbar-brand" href="${pageContext.request.contextPath }">Acorn</a>
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class=" nav-link" href="${pageContext.request.contextPath }/member/list.jsp" >Member</a>
			</li>
			<li class="nav-item">
				<a class="nav-link " href="${pageContext.request.contextPath }/todo/list.jsp" >Todo</a>
			</li>
			<li class="nav-item">
				<a class="nav-link active" href="${pageContext.request.contextPath }/board/list.jsp">Board</a>
			</li>
			
		</ul>
	</div>
	<div class="container">
		<h1>글 목록 입니다.</h1>
		<table class="table table-striped">
			<thead class="table-info">
				<tr>
					<th>글번호</th>
					<th>작성자</th>
					<th>제목</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
			<%for(BoardDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getWriter() %></td>
					<td><a href="detail.jsp?num=<%=tmp.getNum() %>"><%=tmp.getTitle() %></a></td>
					<td><%=tmp.getRegdate() %></td>
				</tr>
			<%} %>
			</tbody>
		</table>
		<a href="insertform.jsp">글 추가하기</a>
	</div>
</body>
</html>