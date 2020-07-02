<%@page import="test.member.dto.MemberDto"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	
	MemberDao dao=MemberDao.getInstance();
	MemberDto dto=new MemberDto();
	dto.setName(name);
	dto.setAddr(addr);

%>
	
	

	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insert.jsp</title>
</head>
<body>
	
		<script>
		 if(name!=null){
		<%dao.insert(dto); %>
			alert("새로운 회원정보가 저장되었습니다.");
			location.href="${pageContext.request.contextPath }/member/list.jsp";
		

		}else{
			alert("정보를 입력해주세요.");
			location.href="${pageContext.request.contextPath }/member/list.jsp";
		}
		</script>
</body>
</html>