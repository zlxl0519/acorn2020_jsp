<%@page import="test.board.dto.BoardDto"%>
<%@page import="test.board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//GET 방식 파리미터로 전달되는 자세히 보여줄 글의 번호 읽어오기 ?num=xx
	int num=Integer.parseInt(request.getParameter("num"));
	//BoardDao 객체를 이용해서 해당글의 정보를 얻어온다.
	BoardDto dto=BoardDao.getInstance().getDate(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/detail.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<h1>글 자세히 보기 페이지 입니다.</h1>
	<table class="table table-hover">
	<colgroup>
		<col width="10%"/>
		<col width=""/>
	</colgroup>
		<tr class="thead-dark">
			<th >글번호</th>
			<td><%=dto.getNum() %></td>
		</tr>
		<tr class="thead-dark">
			<th>작성자</th>
			<td><%=dto.getWriter() %></td>
		</tr>
		<tr class="thead-dark">
			<th>제목</th>
			<td><%=dto.getTitle() %></td>
		</tr>
		<tr class="thead-dark">
			<th>내용</th>
			<td><textarea cols="100" rows="5" disabled><%=dto.getContent() %></textarea></td>
		</tr>
		<tr class="thead-dark">
			<td></td>
			<td>
				<a href="updateform.jsp?num=<%=dto.getNum() %>">수정</a>
				<a href="javascript: deleteConfirm(<%=dto.getNum() %>)">삭제</a>
			</td>
		</tr>
	</table>
</div>
<script>
	function deleteConfirm(num){
		var isDelete=confirm(num+" 번 글을 삭제 하시겠습니까?");
		if(isDelete){
			location.href="delete.jsp?num="+num;
		}
	}		
</script>
</body>
</html>