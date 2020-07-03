<%@page import="java.util.List"%>
<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/list.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
<%
	//MemberDao 객체와 참조값 얻어오기
	MemberDao dao=MemberDao.getInstance();
	//회원 목록 얻어오기
	List<MemberDto> list=dao.getList();
%>

<div class="container">
	<div class="navbar navbar-expand-sm navbar-dark bg-primary">
		<a class="navbar-brand" href="${pageContext.request.contextPath }">Acorn</a>
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class=" nav-link active" href="${pageContext.request.contextPath }/member/list.jsp" >Member</a>
			</li>
			<li class="nav-item">
				<a class="nav-link " href="${pageContext.request.contextPath }/todo/list.jsp" >Todo</a>
			</li>
		</ul>
	</div>
	<h1>회원 목록입니다.</h1>
	
	<table class="table table-hover">
		<thead class="table-success">
			<tr>
				<th scope="col">번호</th>
				<th scope="col">이름</th>
				<th scope="col">주소</th>
				<th>수정</th>
				<th scope="col">삭제</th>
			</tr>
		</thead>
		<tbody>
			<%for(MemberDto tmp:list){ %>
				<tr>
					<th scope="row"><%=tmp.getNum() %></th>
					<td><%=tmp.getName() %></td>
					<td><%=tmp.getAddr() %></td>
					<td><a href="updateform.jsp?num=<%=tmp.getNum()%>">수정</a></td>
					<td><a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
				</tr>
			<%} %>
		</tbody>
	</table>
	<a href="insertform.jsp">회원 추가 하러가기</a>
</div>

</body>
</html>