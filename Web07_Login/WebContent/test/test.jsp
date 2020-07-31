<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String animals="cat_dog_elephant";
	request.setAttribute("animals", animals);
	
	int price=35000;
	request.setAttribute("price", price);
%>
<c:forEach var="i" begin="5" end="9">
	<p>${i }</p>
</c:forEach>

<ul>
	<c:forTokens var="tmp" items="${animals }" delims="_">
		<li>${tmp }</li>		
	</c:forTokens>
</ul>

<p><fmt:formatNumber value="${price }" type="currency" currencySymbol="$"/> 원</p>
</body>
</html>