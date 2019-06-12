<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 비밀번호 찾기</title>
<style>
	fieldset {
		weight : 5px;
		height : 100px;
	}
</style>

</head>
<body>
	<%@ include file = "/views/common/header.jsp" %>
	
	<form action="/semi/searchId.do" method = "post">
		<fieldset>
            <legend>아이디 찾기</legend>
           	<input type = "text" name = "sName" placeholder = "이름"> <br />
            <input type = "text" name = "sSsn1" placeholder = "주민등록번호" style="width:80px;">-<input type = "text" name = "sSsn2" placeholder = "주민등록번호" style="width:80px;">
            <br>
            <input type="submit" value="아이디 찾기" />
        </fieldset>
	</form>
	<br />
	<form action="/semi/searchPwd.do" method = "post">
		<fieldset>
            <legend>비밀번호 찾기</legend>
           	<input type = "text" name = "sEmail" placeholder = "이메일"> <br />
            <input type = "text" name = "sName" placeholder = "이름"><br>
            <input type = "text" name = "sSsn1" placeholder = "주민등록번호" style="width:80px;">-<input type = "text" name = "sSsn2" placeholder = "주민등록번호" style="width:80px;">
            <br>
            <input type="submit" value="비밀번호 찾기" />
        </fieldset>
	</form>
		
	
	
	
	
	

	<%@ include file = "/views/common/footer.jsp" %>
</body>
</html>