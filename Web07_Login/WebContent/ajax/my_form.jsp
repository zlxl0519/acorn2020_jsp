<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my_form.jsp</title>
<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
</head>
<body>
<div class="container">
	<form id="myForm" action="save.jsp" method="post">
		<label for="name">이름</label>
		<input type="text" name="name" id="name" />
		<label for="phone">전화번호</label>
		<input type="text" name="phone" id="phone" />
		<button type="submit">전송</button>
	</form>
</div>
<script>
	$("#myForm").on("submit", function(){
		var action=$(this).attr("action");
		var method=$(this).attr("method");
		var name=$("#name").val();
		var phone=$("#phone").val();
		$.ajax({
			url:action,
			method:method,
			data:{name:name, phone:phone},
			success:function(data){
				console.log(data);
			}
		});
		return false;
	});
</script>
</body>
</html>