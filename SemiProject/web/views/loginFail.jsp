<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   String errorMsg = (String)request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 실패 화면!!</title>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>
	
	<h1>로그인 실패!!</h1>
	
	<h3 style="color : red;">로그인에 실패하였습니다.</h3>
	<p>
		로그인 실패 사유 : <%= errorMsg %>
	</p>
	
	<br /><br /><br /><br />
	
	<a href="/semi/index.jsp">처음으로 돌아가기</a>
	
	<%@ include file="/views/common/footer.jsp" %>
</body>
</html>