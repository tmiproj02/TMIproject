<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String name = (String)request.getAttribute("name");
	String email = (String)request.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기 성공 화면</title>
</head>
<body>
	<%@ include file = "common/header.jsp" %>
	
	<h1>이메일 찾기 성공!!</h1>
	
	<h3><%= name %>님의 이메일은 <br />
	<%= email %>입니다.</h3>
	
	<button onclick = "backlogin()">로그인 화면으로</button>
	
	<script>
		function backlogin(){
			location.href = "views/LoginForm.jsp";
		}
	</script>
	
	<%@ include file = "common/footer.jsp" %>
</body>
</html>