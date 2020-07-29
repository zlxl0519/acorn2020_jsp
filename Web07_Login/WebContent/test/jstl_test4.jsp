<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	//test 를 위해 sample data를 request 영역에 담기
	request.setAttribute("jumsu", 85);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/jstl_test4.jsp</title>
</head>
<body>
	<c:if test="${10%2 eq 0 }">
		<p>10 은 짝수 입니다.</p>
	</c:if>
	<c:if test="${11%2 eq 0 }">
		<p>11은 짝수 입니다.</p>
	</c:if>
	<%-- session 영역에 id 라는 키값으로 저장된 값이 비어있지 않다면
		(저장된 값이 있다면) (로그인된 상태라면) --%>
	<c:if test="${not empty sessionScope.id }">
		<p><strong>${id }</strong>님 로그인중 ...</p>
	</c:if>
	
	<p> 획득한 점수는 <strong>${jumsu }</strong>입니다.</p>
	<p>
		학점은
		<c:choose>
			<c:when test="${jumsu ge 90 }">A</c:when><%--if --%>
			<c:when test="${jumsu ge 80 }">B</c:when><%--else if --%>
			<c:when test="${jumsu ge 70 }">C</c:when><%--else if --%>
			<c:when test="${jumsu ge 60 }">D</c:when><%--else if --%>
			<c:otherwise>F</c:otherwise><%--else --%>
		</c:choose>
		입니다.
	</p>
</body>
</html>