<%@page import="test.cafe.dto.CafeDto"%>
<%@page import="test.cafe.dao.CafeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int num=Integer.parseInt(request.getParameter("num"));
	boolean isSuccess=CafeDao.getInstance().delete(num);

	CafeDto dto=CafeDao.getInstance().getData(num);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cafe/private/delete.jsp</title>
</head>
<body>
<script>
	<%if(isSuccess){ %>
		alert("삭제되었습니다");
		location.href="${pageContext.request.contextPath }/cafe/list.jsp";
	<%}else{ %>
		alert("삭제에 실패 했습니다");
		location.href="${pageContext.request.contextPath }/cafe/detail.jsp?num=<%=dto.getNum() %>";
	<%} %>
</script>
</body>
</html>