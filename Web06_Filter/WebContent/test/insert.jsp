<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//post 방식 전송했을때 한글깨지지 않도록 // 모든 곳에서 일괄적으로 해주고 싶다.
	
	//msg 라는 파라미터명으로 전송된 문자열을 읽어온다.
	String msg=request.getParameter("msg");
	//서버측 콘솔창에 출력해보기
	System.out.println("msg:"+msg);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/insert.jsp</title>
</head>
<body>
	<h1>요청을 처리 했습니다.</h1>
	<p> 당신이 전송한 문자열 :<strong><%=msg %></strong></p>
</body>
</html>