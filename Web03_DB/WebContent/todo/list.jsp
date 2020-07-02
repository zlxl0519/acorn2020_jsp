<%@page import="java.awt.Button"%>
<%@page import="java.util.List"%>
<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<%
	TodoDao dao=TodoDao.getInstence();
	List<TodoDto> list=dao.getList();
%>

<body>
	
	
<div class="container">	
	<h1>할 일 목록입니다.</h1>
	<form action="${pageContext.request.contextPath }/todo/insert.jsp" method="post">
		<label for="work">할일 메모</label>
		<input type="text" name="work" id="work" />
		<button class="btn btn-outline-primary" type="submit">추가</button>
	</form>
	
	<table class="table table-hover">
		<thead>
			<tr class="table-success">
				<th scope="col">번호</th>
				<th scope="col">할 일</th>
				<th scope="col">등록일</th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<%for(TodoDto tmp:list){ %>
				<tr>
					<th scope="row"><%=tmp.getNum() %></th>
					<td><%=tmp.getWork() %></td>
					<td><%=tmp.getRegdate() %></td>
					<td><a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
				</tr>
			<%} %>
		</tbody>
	</table>
</div>	
</body>
</html>