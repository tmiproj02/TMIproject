<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.model.vo.Member"%>
<% 
	Member m = (Member)session.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세미 프로젝트 웹 사이트</title>
</head>

<body>
	<%@ include file="views/common/header.jsp" %>
	<% if(m == null){ %>
	<h3>
		<a href="views/LoginForm.jsp">1. 로그인 폼</a>
	</h3>
	
	
	<h3>
		<a href="views/member/memberJoin.jsp">2. 회원가입 폼</a>
	</h3>
	<% } else{ %>
	
	
	<h3>
		<a href="views/member/memberUpdateForm.jsp">3. 계정 설정</a>
	</h3>
	
	<h3>
		<a href="views/personBUY/buyingcontrol.jsp">4. 구매 관리</a>
	</h3>
	
	<h3>
		<a href="views/myPage/myPageManageSell.jsp">5. 판매 관리</a>
	</h3>
	
	<h3>
		<a href="/semi/logout.do">로그아웃 하기 </a>
	</h3>
	
	<%} %>
	
	


	<%@ include file="views/common/footer.jsp" %>


</body>
</html>