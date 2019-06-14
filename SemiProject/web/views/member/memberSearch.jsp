<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <script src="<%= request.getContextPath() %>/resources/js/jquery-3.4.1.min.js"></script>
 <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
 
 
 
 
<title>아이디 비밀번호 찾기</title>

</head>
<body>
  <div id="Wrapper">
   	<nav id="logo" style="height:100px; border-bottom: 2px solid gray; margin-bottom:20px;">
		<img src="/semi/resources/images/KakaoTalk_20190606_164601739.png" style="width:130px;height:120px; position:absolute; left:50%; margin-left:-65px; cursor:pointer; " onclick="toMain();">	
	</nav>	
	<div id="serchIdContainer" style="display:flex;  align-items:center; flex-direction:column; margin-top:10%;">
		 <div class="panel panel-info" style="width:300px; height:221px;">
	            <div class="panel-heading">
	              <h3 class="panel-title">아이디 찾기</h3>
	            </div>
	            <div class="panel-body">
	          	
					<label for="sName">이름</label><br>
		           	<input type ="text" id="userName" name = "sName" class="form-control" style="width:100px; height:30px;margin-bottom:6px;">
		           	<label for="sSsn1">주민등록번호</label><br>
		            <input type = "text" id="userSSN1" name = "sSsn1" class="form-control" style="width:80px; height:30px; display:inline;">&nbsp;-&nbsp;<input type = "password" id="userSSN2"name = "sSsn2" class="form-control" style="width:80px; height:30px; display:inline;">
		            <input type="button" value="아이디 찾기" id="findIdBtn" class="btn btn-info"  data-toggle="modal" data-target=".bd-example-modal-sm" style="margin-top:7px;">
	            </div>
		</div>   
	  
		<div class="panel panel-info" style="width:300px;">
	            <div class="panel-heading">
	              <h3 class="panel-title">비밀번호 찾기</h3>
	            </div>
	            <div class="panel-body">
	          	  <form action="/semi/searchPwd.do" method = "post">
			    	<label for="sName">이메일</label><br>
		           	<input type = "text" name = "sEmail" class="form-control" style="width:200px; height:30px;">
		           	<label for="sName">이름</label><br>
		            <input type = "text" name = "sName" class="form-control" style="width:100px; height:30px;">
		            <label for="sName">주민등록번호</label><br>
		            <input type = "text" name = "sSsn1" class="form-control" style="width:80px; height:30px; display:inline;">&nbsp;-&nbsp;<input type = "password" name = "sSsn2" class="form-control" style="width:80px; height:30px; display:inline;">
		            
		            <input type="submit" value="비밀번호 찾기" style="margin-top:7px;" class="btn btn-info">
	        
				  </form>
	            </div>
	     </div>
	</div>	  
	
	<!-- 숨겨져 있는 메세지 박스 -->
	<div class="modal fade bd-example-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  		<div class="modal-dialog modal-sm">
    	
	     	<div class="ui success message" style="width:350px;height:100px; margin-top:100%; text-align:center; position:absolute; /* visibility:hidden; */">
				 	 <i class="close icon"></i>
				 	 <div class="header">
				 	  	회원님의 이메일 주소 
				 	 </div>
				 	 <p style="font-size : 20px;"><strong id="successText"></strong></p>
				</div>
				
				<div class="ui negative message" id="idFailAlert" style="margin-top:100%; width:350px;height:100px;position:absolute; visibility:hidden;">
				 	 <i class="close icon"></i>
				 	 <div class="header">
						아이디 찾기 실패!
				  	 </div>
				     <p style="font-size : 20px;"><strong id="failText"></strong></p>
			    </div>
      
       </div>
   </div>

   
	
	
</div>





	<%@ include file = "/views/common/footer.jsp" %>
</body>
<script>
	// TMI 로고 클릭시 메인으로 보내는 함수
	function toMain(){
		location.href = "/semi/index.jsp";
	}
	
	// 아이디를 찾아주는 함수
	$('#findIdBtn').on('click', function(){
		$.ajax({
			url : "/semi/searchId.do",
			type : "post",
			data : {userName: $('#userName').val(), userSSN1: $('#userSSN1').val(), userSSN2: $('#userSSN2').val()},
			success : function(data){
				
				var emailRegEx = /@+/;
			
				if(emailRegEx.test(data)){
					$('#myModal').modal('show');
					$('#successText').html(data); 
					$('#idAlert').css('visibility','visible');
				}else{
					console.log($('#myModal').attr(modal));
					if($('#myModal').attr(modal) == 'show')
					$('#myModal').modal('show');
					$('#failText').html(data);
					$('#idFailAlert').css('visibility','visible');
				}
				
			
			}, error : function(){
				alert("아이디 찾기에서 에러");
			}
	
		});

	});
	
	// 팝업 메세지를 닫아주는 함수
	$('.close').on('click',function(){
		$('#myModal').modal('hide');
	
	});
	
</script>


</html>