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
</head>
<body>
	<form action="update.jsp" method="post">
		<input type="hidden" name="num" value="<%=dto.getNum() %>"/>
		<label for="num">번호</label>
		<input type="text" name="num" value="<%=dto.getNum() %>" disabled/><br/>
		<label for="writer">작성자</label>
		<input type="text" name="writer" value="<%=dto.getWriter() %>"/><br/>
		<label for="title">제목</label>
		<input type="text" name="title" value="<%=dto.getTitle() %>"/><br/>
		<label for="content">내용</label><br/>
		<%--textarea 는 <%=%> 이거를 이너텍스트 쓰는 자리에 쓴다. --%>
		<textarea name="content" id="content" cols="20" rows="5"><%=dto.getContent() %></textarea><br/>
		<input type="submit" value="수정확인"/>
		<input type="reset" value="취소"/>
	</form>
</body>
</html>