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
<script>
	function formCheck(){
		if(document.insertform.name.value==""){
			alert("일본 가고싶은 곳을 제대로 작성해주세요.");
			document.insertform.name.focus();
			return false;//문제가 있을시 입력을 못하도록 한다.
		}
		
		
	}
</script>
</head>
<body>
<div class="container">
	<h1>일본 여행지 추가하기</h1>
	<form name="insertform" onsubmit="return formCheck()" action="insert.jsp" method="post">
		<div class="form-group">
			<input class="form-control" type="text" name="name"  placeholder="일본 가고싶은 곳을 적으세요..." />
		</div>
		<div class="form-group">
			<input class="form-control" type="text" name="note" placeholder="지역에 관한 간단메모..."/>
		</div>
		<button class="btn btn-outline-primary" type="submit">추가하기</button>
	</form>
	
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
</div>
</body>
</html>