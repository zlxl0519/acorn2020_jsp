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
<script language="javascript">
		function insert_onclick(){
			var f=document.input
			if(f.name.value==""){
				alert("이름을 정확히 입력해주세요");
				return f.name.focus();
				
			}
			if(f.addr.value==""){
				alert("주소을 정확히 입력해주세요");
				return f.addr.focus();
			}
			
		}	
</script>
<div class="container">
	<h1>회원 목록입니다.</h1>
	<form name="input" action="${pageContext.request.contextPath }/member/insert.jsp">
		<label for="name">이름</label>
		<input type="text" name="name" id="name"/>
		<label for="addr">주소</label>
		<input type="text" name="addr" id="addr"/>
		<input type="submit" value="추가하기" onclick="insert_onclick()">
	</form>
	<table class="table table-hover">
		<thead>
			<tr class="bg-info">
				<th scope="col">번호</th>
				<th scope="col">이름</th>
				<th scope="col">주소</th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<%for(MemberDto tmp:list){ %>
				<tr>
					<th scope="row"><%=tmp.getNum() %></th>
					<td><%=tmp.getName() %></td>
					<td><%=tmp.getAddr() %></td>
					<td><a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
				</tr>
			<%} %>
		</tbody>
	</table>
</div>
</body>
</html>