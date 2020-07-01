<%@page import="test.dto.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Web02_Servlet/css/bootstrap.css" />
</head>
<body>
	<%
	List<MemberDto> list= new ArrayList<>();
	list.add(new MemberDto(1, "김구라", "노량진"));
	list.add(new MemberDto(2, "해골", "행신동"));
	list.add(new MemberDto(3, "원숭이", "상도동"));
	%>
	
	<div class="container">
		<h1>회원 목록 입니다.</h1>
		<table class="table">
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
			</tr>
			<%for(MemberDto dto:list){ %>
				<tr>
					<td><%=dto.getNum() %></td>
					<td><%=dto.getName() %></td>
					<td><%=dto.getAddr() %></td>
				</tr>
			<%} %>
		</table>
	</div>
</body>
</html>