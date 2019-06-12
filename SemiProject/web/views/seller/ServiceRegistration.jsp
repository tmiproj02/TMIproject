<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap css 파일 추가하기 -->
<link  	rel="stylesheet" 
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
		integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
		crossorigin="anonymous">
<!-- bootstrap js 파일 추가하기 -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 

<script> 
       $(document).ready( function() {

        $("#header").load("Cateheader.html");

        //~이렇게 한줄만 해주면 알아서 contents에 testContents.html파일을 넣어 준다.

        });
    </script>
<title>SellerRegistration Page</title>
<style>
	.panel{
		width:800px;
		height:auto;
		background:lightgray;
		color:gray;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
		font: 16px "Open Sans", Helvetica, Arial, sans-serif;
		border: 1px solid #22d;
		padding: 12px;
		text-align: center;
	}

</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<div id="regist" class="panel">
    <h1 align="center">판매자 등록 페이지</h1>
    <p>By clicking "OK" you agree to be awesome every day!</p>
    
    <button type="button" id="nextButton" class="btn btn-outline-secondary">다음단계</button>
	</div>

	<div id="account" class="panel" hidden>
	    <h1>Thanks!</h1>
	    <p>Thank you
	        <button type="button" id="backButton" class="btn btn-outline-secondary">이전단계</button>
	    </p>
	</div>
	
	<script>
	    document.getElementById("nextButton").addEventListener("click", function() {
	        document.getElementById("regist").hidden = true;
	        document.getElementById("account").hidden = false;}, false);
	
	    document.getElementById("backButton").addEventListener("click", function() {
	    document.getElementById("regist").hidden = false;
	    document.getElementById("account").hidden = true;}, false);   
	</script>	

</body>
</html>