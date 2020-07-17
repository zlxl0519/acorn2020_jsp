<%@page import="test.users.dto.UsersDto"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//세션에 저장된 아이디
	String id=(String)session.getAttribute("id");
	//수정할 회원의 정보를 읽어온다.
	UsersDto dto=UsersDao.getInstance().getData(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/private/updateform.jsp</title>
<style>
	/* 프로필 업로드 폼을 화면에서 숨긴다.*/
	#profileForm{
		display:none;
	}
	/* 이미지를 작은 원형으로 만든다. */
	#profileImage{
		width : 50px;
		height : 50px;
		border : 1px solid #cecece;
		border-radius : 50%;
		cursor: pointer;
	}
</style>
</head>
<body>
<div class="container">
	<h1>회원정보 수정 폼 입니다.</h1>
	<%if(dto.getProfile()==null){ %>
		<%--이미지가 안들어가 있을때는 기본 이미지가 출력된다. 둘중 하나만 이미지 출력되니까 id를 같은걸로 해도 상관없음--%>
		<img id="profileImage" src="${pageContext.request.contextPath }/images/yellowbird.png" />
	<%}else{ %>
		<%--이미지가 들어가 있을때는 넣은 이미지를 출력한다. --%>
		<img id="profileImage" src="${pageContext.request.contextPath }<%=dto.getProfile() %>" />
	<%} %>
	<form action="update.jsp" method="post">
		<input type="hidden" name="profile" id="profile" value="<%=dto.getProfile() %>" />
		<div class="form-group">
			<label for="id">아이디</label>
			<input type="text" id="id" value="<%=dto.getId() %>" disabled />
		</div>
		<div class="form-group">
			<label for="email">이메일</label>
			<input type="text" id="email" name="email" value="<%=dto.getEmail() %>" />
		</div>
		<button type="submit">수정확인</button>
		<button type="reset">취소</button>
	</form>
	
	<form id="profileForm" action="profile_upload.jsp" method="post" enctype="multipart/form-data">
		<%--이것은 css 로 숨겨놓고 프로필 이미지를 누르면 이거를 강제 클릭시켜서 이미지 선택한것이 옆에 뜬다.이게 change evanet)
		 서버로가서 데이터를 받아서 클라이언트 프로필 사진에 나오도록 한다. --%>
		<input id="image" type="file" name="image" accept=".jpg, .jpeg, .png, .JPG, .JPEG" />
	</form>
</div>
<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.form.min.js"></script>
<script>
	//프로필 이미지를 클릭했을때 실행할 함수 등록 
	$("#profileImage").on("click", function(){
		//input type="file" 을 강제 클릭한다.
		$("#image").click();
	});
	
	//이미지를 선택했을때 실행할 함수 등록
	$("#image").on("change", function(){
		//폼을 강제 제출한다.
		$("#profileForm").submit();
	});
	
	//폼이 ajax 로 제출될수 있도록 플러그인을 동작 시킨다.
	$("#profileForm").ajaxForm(function(data){
		//프로필 이미지를 업데이트 한다. data => {imageSrc:"/upload/xxx.jpg"}
		$("#profileImage")
		.attr("src","${pageContext.request.contextPath }"+data.imageSrc);
		//회원정보 수정폼 전송될때 같이 전송 되도록 한다.
		$("#profile").val(data.imageSrc); //input type="hidden" 의 value 값
	});
</script>
</body>
</html>