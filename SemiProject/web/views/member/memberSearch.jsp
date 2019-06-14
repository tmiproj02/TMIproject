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
 
 
<title>아이디 비밀번호 찾기</title>

</head>
<body>
   <div id="Wraper">
   	<nav id="logo" style="height:100px; border-bottom: 2px solid gray; margin-bottom:20px;">
		<img src="/semi/resources/images/KakaoTalk_20190606_164601739.png" style="width:130px;height:120px; position:absolute; left:50%; margin-left:-65px; cursor:pointer; " onclick="toMain();">	
	</nav>	
	<div id="serchIdContainer" style="display:flex;  align-items:center; flex-direction:column; margin-top:10%;">
		 <div class="panel panel-info" style="width:300px; height:221px;">
	            <div class="panel-heading">
	              <h3 class="panel-title">아이디 찾기</h3>
	            </div>
	            <div class="panel-body">
	          	  <form action="/semi/searchId.do" method = "post">
					<label for="sName">이름</label><br>
		           	<input type ="text" name = "sName" class="form-control" style="width:100px; height:30px;margin-bottom:6px;">
		           	<label for="sSsn1">주민등록번호</label><br>
		            <input type = "text" name = "sSsn1" class="form-control" style="width:80px; height:30px; display:inline;">&nbsp;-&nbsp;<input type = "password" name = "sSsn2" class="form-control" style="width:80px; height:30px; display:inline;">
		           	
		            <input type="submit" value="아이디 찾기" class="btn btn-info" style="margin-top:7px;">
		       
				  </form>
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
</div>
	
	
	<%@ include file = "/views/common/footer.jsp" %>
</body>
<script>
	function toMain(){
		location.href = "/semi/index.jsp";
	}


</script>


</html>