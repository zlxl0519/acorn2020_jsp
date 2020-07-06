<%@page import="test.board.dto.BoardDto"%>
<%@page import="test.board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//GET 방식 파라미터로 전달되는 수정할 글 번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//BoardDao 객체를 이용해서 수정할 글 정보를 얻어온다.
	BoardDto dto=BoardDao.getInstance().getDate(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/updateform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
<div class="container">

	<form action="update.jsp" method="post">
		<div class="form-group">
			<input type="hidden" name="num" value="<%=dto.getNum() %>"/>
			<label for="num">번호</label>
			<input class="form-control" type="text" name="num" value="<%=dto.getNum() %>" disabled/><br/>
		</div>
		<div class="form-group">
			<label for="writer">작성자</label>
			<input class="form-control" type="text" name="writer" value="<%=dto.getWriter() %>"/><br/>
		</div>
		<div class="form-group">
			<label for="title">제목</label>
			<input class="form-control" type="text" name="title" value="<%=dto.getTitle() %>"/><br/>
		</div>
		<div class="form-group">
			<label for="content">내용</label><br/>
			<%--textarea 는 <%=%> 이거를 이너텍스트 쓰는 자리에 쓴다. --%>
			<textarea class="form-control" name="content" id="content" cols="20" rows="5"><%=dto.getContent() %></textarea><br/>
		</div>
		<input class="btn btn-primary" type="submit" value="수정확인"/>
		<input class="btn btn-warning" type="reset" value="취소"/>
	</form>
</div>
</body>
</html>