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

<!-- include summernote css/js -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>

<title>SellerServicergration Page</title>
<style type="text/css">
	.jumbotron{
		width:800px;
		height:auto;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
		border: 0px solid #22d;
		padding: 12px;
		text-align: left;
	}
	
	
	.ui checkbox{
		text-align: right;
	}
	
	.field textarea {
		 position: relative; 
		 width: 300px; height: 118px; min-height: 118px; 
		 padding: 3px 3px 3px 6px; 
		 border: 1px solid #ececec; 
		 border-top-color: #e1e1e1; 
		 border-left-color: #e1e1e1; 
		 background: white; 
		 border-radius: 3px; 
		-moz-border-radius: 3px; 
		-webkit-border-radius: 3px; 
	}
	
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>

<!-- 완료버튼이 눌렸을때 servlet로 가야 하지만 보기 편하게 바로 완료페이지로 가게 만들었다. -->
<form action="/semi/views/seller/SellerComplete.jsp" method="post" style="margin-top:100px;">
	<div id="Servicerg" class="jumbotron" style = "position: absolute; top:10%;left:20%; width:800px; height:auto;" align="center">
	<p class="lead">판매를 시작하여 수익을 올려보세요!!</p>
	<hr class="my-4">
	<h5 class="modal-title">&nbsp;&nbsp;기본사항</h5>
	<div class="ui segment">
		<div class="ui two column very relaxed grid">
			<div class="column">
			    <h5 class="modal-title">서비스 제목</h5>
			    <br><br>
			    <hr class="my-4">
			    
			    <h5 class="modal-title">카테고리</h5>
			</div>
			
			<div class="column">
			    <div class="ui input focus">
					<input type="text" placeholder="예) 마음을 담아 재미있고 개성있는 캐리커쳐를 그려 드립니다." style="position: relative; left:-200px; width:500px; height:40px;" value="">
				</div>
				<br><br><br>
			    <h5 class="modal-title" style="position: relative; left:-200px; width:500px; height:40px;">상위카테고리</h5>
			    <div class="col-auto my-1">
					<select class="custom-select mr-sm-2" id="category1" style="position: relative; left:-200px; width:250px; height:40px;">
						<option selected>카테고리</option>
						<option value="11">상위카테고리1</option>
						<option value="12">상위카테고리2</option>
						<option value="13">상위카테고리3</option>
						<option value="14">상위카테고리4</option>
						<option value="15">상위카테고리5</option>
						<option value="16">상위카테고리6</option>
						<option value="17">상위카테고리7</option>
					</select>
					<br><br><br>
				</div>
				
			    <h5 class="modal-title"style="position: relative; left:-200px; width:500px; height:40px;">하위카테고리</h5>
			    <div class="col-auto my-1">
					<select class="custom-select mr-sm-2" id="category2" style="position: relative; left:-200px; width:250px; height:40px;">
						<option selected>카테고리</option>
						<option value="21">하위카테고리1</option>
						<option value="22">하위카테고리2</option>
						<option value="23">하위카테고리3</option>
						<option value="24">하위카테고리4</option>
						<option value="25">하위카테고리5</option>
						<option value="26">하위카테고리6</option>
						<option value="27">하위카테고리7</option>
					</select>
					<br><br><br>
				</div>
			</div>
		</div>
		</div>	
		<div align="right">
			<hr class="my-4">
			<a class="btn btn-primary btn-lg" id="next1Button" role="button" href="#" >저장 및 다음단계</a>
		</div>
   
	</div>

	<div id="amount" class="jumbotron" style = "position: absolute; top:10%;left:20%; width:800px; height:auto;" align="center" hidden>
	<p class="lead">판매를 시작하여 수익을 올려보세요!!</p>
	<hr class="my-4">
	<h5 class="modal-title">가격설정</h5>
	<div class="ui segment">
		<div class="ui two column very relaxed grid">
			<div class="column">
			    <h5 class="modal-title">금액</h5>
			    <br><br>
			</div>
			<br>
			<div class="column">
			    <div class="ui input focus" style="position: relative; left:-200px; width:200px; height:40px;">
					₩ &nbsp;&nbsp; <input type="text" placeholder="예) 1000" value="">
				</div>
			</div>
			<br>
			<div class="column">
			    <h5 class="modal-title">수정횟수</h5>
			    <br><br>
			</div>
			<div class="column">
			    <div class="ui input focus" style="position: relative; left:-180px; width:180px; height:40px;">
					<input type="text" placeholder="예) 1" value=""> &nbsp;&nbsp;회
				</div>
			</div>
			<br>
			<div class="column">
			    <h5 class="modal-title">작업기간</h5>
			    <br><br>
			</div>
			<div class="column">
			    <div class="ui input focus" style="position: relative; left:-180px; width:180px; height:40px;">
					<input type="text" placeholder="예) 30" value=""> &nbsp;&nbsp;일
				</div>
			</div>
			
		</div>	
	</div>
	<h5 class="modal-title">&nbsp;&nbsp;추가옵션</h5>
	<div class="ui segment">
		<div class="ui two column very relaxed grid">
			<div class="column">
			    <h5 class="modal-title">빠른작업</h5>
			    <br><br>
			    <h5 class="modal-title">추가수정</h5>
			</div>
			
			<div class="column">

			</div>
		</div>	
	</div>
	<br><br>
	<a class="btn btn-primary btn-lg" id="backButton1" role="button" href="#">뒤로가기</a>
	<div align="right">
	<hr class="my-4">
	<a class="btn btn-primary btn-lg" id="next2Button" role="button" href="#" >저장 및 다음단계</a>
	</div>
	
</div>
	
	<!-- 본문 글 동록부분 -->	
	<div id="board" class="jumbotron" style = "position: absolute; top:10%;left:20%; width:800px; height:auto;" align="center" hidden>
		<p class="lead">판매를 시작하여 수익을 올려보세요!!</p>
		<hr class="my-4">
		<h5 class="modal-title">이미지 등록</h5>
		<div class="ui segment">
			<h5 class="modal-title">메인 이미지 등록</h5>
			<br><br>
			<div id="titleImgArea">
				<img id="titleImg" width="350" height="200" text="">
			</div>
			<div class="fileArea" id="fileArea">
				<input type="file" id="thumbnailImg1" name="thumbnailImg1" onchange="loadImg(this, 1);" />
			</div>
			<br>
			<label>상자를 눌러 대표 이미지를 등록하세요</label>

			<script>
				// 사진 게시판 미리보기 기능 지원 스크립트
				$(function(){
					$('#fileArea').hide();
					$('#titleImgArea').click(() => {$('#thumbnailImg1').click();});
				});
				
				function loadImg(value, num){
					if(value.files && value.files[0])  {
						var reader = new FileReader();
						reader.onload = function(e){
							switch(num) {
							case 1 : $('#titleImg').attr('src', e.target.result);
								break;
							}
						}
						reader.readAsDataURL(value.files[0]);
					}
				}
			</script>
		</div>
		<h5 class="modal-title">서비스설명</h5>
		<div class="ui segment">
			<h5 class="modal-title">본문 내용</h5>
			<br><br>
			<div id="summernote"></div>
		</div>
		
		<br><br>
		<a class="btn btn-primary btn-lg" id="backButton2" role="button" href="#">뒤로가기</a>
		<hr class="my-4">
		<div align="right">
			<input type="submit" value="등록하기" class="btn btn-success" style="width:180px; height:50px; font-size:20px;"/>
		</div>
	</div>
</form>



	<!--  버튼 구현부분 next버튼 Servicerg 버튼 -->
	<script>
	    document.getElementById("next1Button").addEventListener("click", function() {
	        document.getElementById("Servicerg").hidden = true;
	        document.getElementById("amount").hidden = false;}, false);
	    
	    document.getElementById("next2Button").addEventListener("click", function() {
	        document.getElementById("amount").hidden = true;
	        document.getElementById("board").hidden = false;}, false);
	
	    document.getElementById("backButton1").addEventListener("click", function() {
	    	document.getElementById("Servicerg").hidden = false;
	    	document.getElementById("amount").hidden = true;}, false);   
	    
	    document.getElementById("backButton2").addEventListener("click", function() {
	    	document.getElementById("amount").hidden = false;
	    	document.getElementById("board").hidden = true;}, false);  
	</script>	
	
	<script>
		$('#summernote').summernote({
			placeholder: '내용을 입력하세요',
			tabsize: 2,
			height: 300
			
		});
	</script>
	<%@ include file="../common/footer.jsp" %>
</body>
</html>