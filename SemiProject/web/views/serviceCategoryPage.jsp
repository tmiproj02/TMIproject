<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.1.1.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<title>Insert title here</title>
<style>
*{
    font-family: 'Noto Sans KR', sans-serif;
    margin: 0;
    padding: 0;
}
.categoryBody{
	min-width: 100%;
	height: 75px;
	float: left;	
}

.cb1{
	width: 100%;
	margin-left: 300px;
    margin-top: 30px;
}
.cb2{
	margin-top: 20px;
	margin-left: 1300px;
}



</style>

</head>
<body>
	<%@include file= "/views/common/cateheader1.jsp"%>
	
	 
	<div class="row">
		<div class="categoryBody">
			<div class="cb1">
				<h1 style="font-size:30px;">디자인</h1>		
			</div>
			
			<div class="cb2">
				<h3 style="font-size:15px;"><a href="">홈></a></h3>
				<h3 style="font-size:15px;"><a href="">디자인</a></h3>		
			</div>

			<div class="cb3">
				<select class="input">
					<option value="recom">추천순</option>
					<option value="rank">랭킹순</option>
					<option value="new">신규등록순</option>
				</select>
			</div>
		</div>
	</div>
	
</body>
</html>