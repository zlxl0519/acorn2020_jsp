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
	//TodoDao 객체의 참조값 얻어오기
	TodoDao dao=TodoDao.getInstance();
	List<TodoDto> list=dao.getList();
%>

<body>
	
	
<div class="container">	
	<div class="navbar navbar-expand-sm navbar-dark bg-primary">
		<a class="navbar-brand" href="${pageContext.request.contextPath }">Acorn</a>
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class=" nav-link" href="${pageContext.request.contextPath }/member/list.jsp" >Member</a>
			</li>
			<li class="nav-item">
				<a class="nav-link active" href="${pageContext.request.contextPath }/todo/list.jsp" >Todo</a>
			</li>
		</ul>
	</div>
	<h1>할 일 목록입니다.</h1>
	<div class="form-group col-md-6">
		<form action="${pageContext.request.contextPath }/todo/insert.jsp" method="post">
			<div class="form-row mb-2">
				<div class="col">
					<input class="form-control" placeholder="할일 입력.." type="text" name="work" id="work" />
				</div>
				<div class="col">
					<button class="btn btn-outline-primary" type="submit">추가</button>
				</div>				
			</div>			
		</form>
	</div>
	
	<table class="table table-hover">
		
		<thead class="table-success">
			<tr class="d-flex">
				<th class="col-2" scope="col">번호</th>
				<th class="col-5" scope="col">할 일</th>
				<th class="col-3" scope="col">등록일</th>
				<th class="col-2" scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<%for(TodoDto tmp:list){ %>
				<tr class="d-flex">
					<td class="col-2"><%=tmp.getNum() %></td>
					<td class="col-5"><%=tmp.getWork() %></td>
					<td class="col-3"><%=tmp.getRegdate() %></td>
					<td class="col-2"><a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
				</tr>
			<%} %>
		</tbody>
	</table>
</div>	
</body>
</html>