<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TMI 구매 관리</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<style>


</style>
</head>
<body>
	<%@ include file="/views/common/cateheader2.jsp" %>

	<%@ include file="/views/common/buyNav.jsp" %>
	
	<section>
        <h3>구매 관리</h3>



		<div class="ui secondary pointing menu">
			<a class="active item"> 주문목록 </a> <a class="item"> 진행중 </a> <a class="item"> 완료 </a> <a class="item"> 취소 </a>
		</div>
		<div class="ui segment">
			<p>ㅈㅈ주ㅜㅜㅜㅜ무ㅜㅜㅜㄴㄴㄴㄴㄴㄴㅁㅁㅁ모ㅗㅗㅗㄱㄱㄱㄹㄹ록</p>
		</div>
		<div class="ui segment">
			<p>진ㄴㄴ행ㅇㅇㅇㅇㅇ중</p>
		</div>
		<div class="ui segment">
			<p>완ㄴㄴㄴㄴ료</p>
		</div>
		<div class="ui segment">
			<p>취ㅣㅣㅣ소</p>
		</div>






		<br><br><br><br>
            <a href="/semi/index.jsp">홈으로 돌아가기</a>
    </section>

	
	


	<%@ include file="/views/common/footer.jsp" %>
</body>
</html>