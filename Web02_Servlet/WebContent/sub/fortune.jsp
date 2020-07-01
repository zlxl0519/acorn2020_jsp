<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/sub/fortune.jsp</title>
</head>
<body>
<%
	//sample 운세 5개를 미리 배열에 준비하기
	String[] fortune= new String[5];
	fortune[0]="행운이 대박";
	fortune[1]="좀 조심하세요";
	fortune[2]="오늘은 무난한 날이되겠네요.";
	fortune[3]="최악이네요.";
	fortune[4]="간간히 좋은일이 있네요.";
	//Random 객체
	Random ran=new Random();
	//fortune 안에 있는것 랜덤으로 뽑기
	int r=ran.nextInt(fortune.length);
	
%>
<p>오늘의 운세: <%=fortune[r] %></p>
</body>
</html>