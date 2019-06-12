<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String email = (String)request.getAttribute("email"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 재설정</title>
</head>
<body>
	<%@ include file = "common/header.jsp" %>
	
	<h1>비밀번호 재 설정</h1>
	<h3><%= email %>님의 비밀번호를 수정하세요.</h3>
	<form action="/semi/rePwd.do" method = "post">
		<fieldset>
            <legend>비밀번호 수정</legend>
            <input type="hidden" name="email" value = "<%= email %>" />
           	<input type = "text" name = "userPwd" placeholder = "비밀번호"> <br />
            <input type = "text" name = "userPwd2" placeholder = "비밀번호 확인">
            <br>
            <input type="submit" value="비밀번호 재설정" />
        </fieldset>
	</form>
	
	<%@ include file = "common/footer.jsp" %>
</body>
</html>