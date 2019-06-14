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





<style>

	input{margin-bottom: 18px;}
	.term-box{
		width:350px;
		height:150px;
		margin-left:20px;
	}
	
</style>
<title>TMI - 회원가입 </title>
</head>


<body>
  <div id="Wrapper" style="width:100%; height:100%;">
  	<nav id="logo" style="height:100px; border-bottom: 2px solid gray;">
		<img src="/semi/resources/images/KakaoTalk_20190606_164601739.png" style="width:130px;height:120px; position:absolute; left:50%; margin-left:-65px; cursor:pointer;" onclick="toMain();">	
	</nav>
	
	
  <div id="memberJoinContainer" style="width:900px; height:500px; margin:0 auto; display:flex; position: absolute; top:20%;left:50%; margin-left:-450px; margin-top:10px;">
  	
  	<div id="form-container" style="width:500px;border-right:1px solid gray; margin-right:40px; padding-right:20px; ">
		<form action="/semi/mInsert.do" method="post" onsubmit="return validate();">
				
				<label>이메일</label><br>
				<input type="email" name="email" id="email" style="width :300px; height:40px; display:inline-block;" required="required" placeholder="이메일을 입력해주세요" class="form-control"/>
				<button id="emailDupCheckBtn" style="margin: -2px 0px 0px 15px; height:40px;" class="btn btn-primary">중복 확인</button>
				<input type="hidden" name="isSNS" id="isSNS" value="N">
				<label>비밀번호</label><br>
				<input type="password" name="userPwd" id="userPwd" style="width : 200px;  height:40px;" required="required" placeholder="비밀번호를 입력해주세요" class="form-control"/>
				<label>비밀번호 확인</label><br>
				<input type="password" name="userPwd2" id="userPwd2" style="width : 200px;  height:40px; margin-bottom:0px;" required="required" placeholder="비밀번호를 재입력해주세요" class="form-control"/>
				<label id="pwdResult" style="font-size:10px;  display:block;"></label>
				<label>이름</label>
				<input type="text" name="userName" style="width : 80px; height:30px;" required="required" class="form-control"/>
		     	<label>주민등록번호</label><br>
			    <input type="text" name="memberSSN1" id="memberSSN1" style="width :85px; height:30px; display:inline; margin-bottom:0px;" required="required" class="form-control"/> - <input type="password" name="memberSSN2" id="memberSSN2" style="width : 85px; height:30px; display:inline; margin-bottom:0px;" required="required" class="form-control"/>
				<br>
				<label id="ssnResult"></label><br>
				<label>연락처</label>
				<br>
				<input type="tel" name="phone1" required="required" style="width:65px; height:30px; display:inline;" class="form-control"/>&nbsp- &nbsp<input type="tel" name="phone2" required="required" style="width:65px; height:30px; display:inline;" class="form-control"/>&nbsp-&nbsp<input type="tel" name="phone3" required="required" style="width:65px; height:30px; display:inline;" class="form-control"/>
			    <input type="submit" id="submitBtn" value=" 동의 후 회원 가입" class="btn btn-primary" style="width: 350px; height:50px; position:absolute; top:80%; left:57.5%;" disabled/>
	     </form>
	  </div>
	  	
	  	<div id="term-container" style=" width:450px;height:400px; padding-left:5px; margin-top : 10px;">
	     <div class="custom-control custom-checkbox">
     		 <input type="checkbox" class="custom-control-input" id="term1" onchange="isChecked();">
      		 <label class="custom-control-label" for="term1">서비스 이용약관 동의(필수)</label><br>	
      		  <textarea class="term-box" readonly>국회의원과 정부는 법률안을 제출할 수 있다. 국회의 정기회는 법률이 정하는 바에 의하여 매년 1회 집회되며, 국회의 임시회는 대통령 또는 국회재적의원 4분의 1 이상의 요구에 의하여 집회된다. 국회의원은 그 지위를 남용하여 국가·공공단체 또는 기업체와의 계약이나 그 처분에 의하여 재산상의 권리·이익 또는 직위를 취득하거나 타인을 위하여 그 취득을 알선할 수 없다. 국회의원은 현행범인인 경우를 제외하고는 회기중 국회의 동의없이 체포 또는 구금되지 아니한다. 정기회의 회기는 100일을, 임시회의 회기는 30일을 초과할 수 없다. 타인의 범죄행위로 인하여 생명·신체에 대한 피해를 받은 국민은 법률이 정하는 바에 의하여 국가로부터 구조를 받을 수 있다.
		     </textarea>
    	 </div>
    	 <br>
    	  <div class="custom-control custom-checkbox">
     		 <input type="checkbox" class="custom-control-input" id="term2" onchange="isChecked();">
      		 <label class="custom-control-label" for="term2">개인정보 수집•이용에 대한 동의 (필수)</label>
      		 <textarea class="term-box" readonly>국회의원과 정부는 법률안을 제출할 수 있다. 국회의 정기회는 법률이 정하는 바에 의하여 매년 1회 집회되며, 국회의 임시회는 대통령 또는 국회재적의원 4분의 1 이상의 요구에 의하여 집회된다. 국회의원은 그 지위를 남용하여 국가·공공단체 또는 기업체와의 계약이나 그 처분에 의하여 재산상의 권리·이익 또는 직위를 취득하거나 타인을 위하여 그 취득을 알선할 수 없다. 국회의원은 현행범인인 경우를 제외하고는 회기중 국회의 동의없이 체포 또는 구금되지 아니한다. 정기회의 회기는 100일을, 임시회의 회기는 30일을 초과할 수 없다. 타인의 범죄행위로 인하여 생명·신체에 대한 피해를 받은 국민은 법률이 정하는 바에 의하여 국가로부터 구조를 받을 수 있다.
		     </textarea>
    	  </div>
	      
	  </div>
	</div>
</div>	
	 
	<%@ include file="../common/footer.jsp" %>
</body>

<script>

	var emailDupCheckNum = -1;
	// SNS 가입 시 이메일 자동 채움 함수
	$(function(){
		var email = "<%=request.getParameter("email")%>";
		// 이메일 입력란 readonly처리
		if(email != 'null'){
			 $('#email').attr({
				 'value' : email,
				 readonly : true
				 
			 });
			 
			 // 이메일 중복확인 키 무효화
			 $('#emailDupCheckBtn').attr('disabled',true);
		 	 
			 $('#isSNS').attr('value','Y');
			 
			 // 이메일 중복확인 유효성체크
			 this.emailDupCheckNum = 0;
		}
		
	 });

	// 이메일 중복체크 함수
		function isDupEmail(){
			
			$.ajax({	
				url : "/semi/emailDupCheck.do",
				type : "get",
				data : {email : $("#email").val()},
				success : function(data){
					var isDup = data;
					
					if(isDup == 1){
						alert("이미 사용 중인 이메일입니다!");
						$('#email').val("").select();
						emailDupCheckNum = 1;
						return false;
					}else{
						emailDupCheckNum = 0;
						alert("사용 가능한 이메일입니다.");
						return true;
					}
				},

				error : function(data){
					console.log("에러!");
					
				}
			});
			
		}
	
		$("#emailDupCheckBtn").click(function(){
			isDupEmail();
		});
		
		// 비밀번호 유효성 체크 정규표현식 함수(영문,숫자,특수문자 8자리 이상 20자리 이하)
		function pwdRegEx(pwd){  
			var pwdRegEx = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,20}$/;
		
			return pwdRegEx.test(pwd);
		}
		
		// 두 비밀번호가 같은지 체크하는 함수
		function isSamePwd(pwd1,pwd2){
			if(pwd1 == pwd2){
				return true;
			}else return false;
			
		}
		
		
		// 비밀번호 유효성체크 이벤트 함수
		$('[name^="userPwd"]').change(function(){
			var pwd1 = $('#userPwd').val();
			var pwd2 = $('#userPwd2').val();
		
			if(!isSamePwd(pwd1,pwd2)){
				$('#pwdResult').html("비밀번호가 일치하지 않습니다.").css('color','red');
			}else if(!pwdRegEx(pwd2)){
				$('#pwdResult').html("");
				$('#pwdResult').html("비밀번호는 숫자,영문 대소문자, 특수문자로 구성된 8자리 이상 20자리 이하이어야 합니다.").css('color','red');
			}else{
				$('#pwdResult').html("사용 가능한 비밀번호입니다.").css('color','green');
			}
			
		});
		
		// 주민등록번호 유효성 체크 정규표현식 함수
		function ssnRegEx(ssn1,ssn2){
			// 선생님 코드
			
			//^\d{2}(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])-//
			var regEx1 = /^\d{2}(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/
			var regEx2 = /^[1-4][0-9]{6}$/;
			console.log(regEx1.test(ssn1));
			console.log(regEx2.test(ssn2));
			if(regEx1.test(ssn1) && regEx2.test(ssn2)){
				$('#ssnResult').html("");
				return true;
			}else{
				$('#ssnResult').html("유효하지 않은 주민등록번호입니다.").css({
					'color': 'red',
					'font-size' : '11px'
			
				});
				return false;
			}
		}
		
		// 주민등록번호 이벤트 함수
		
		$('[name^="memberSSN"]').change(function(){
			var ssn1 = $('#memberSSN1').val();
			var ssn2 = $('#memberSSN2').val();
			
			ssnRegEx(ssn1,ssn2);
			
		});

		
		// 제출 시 유효성 검사 함수
		function validate(){
			
			// 비밀번호
			var pwd1 = $('#userPwd').val();
			var pwd2 = $('#userPwd2').val();
			// 주민등록번호 
			var ssn1 = $('#memberSSN1').val();
			var ssn2 = $('#memberSSN2').val();
			
			
			
			// 이메일 중복 체크
			if(emailDupCheckNum == 1){
				alert("이미 사용 중인 이메일입니다!");
				return false;
			} else if(emailDupCheckNum == -1){
				alert("이메일 중복검사를 해주세요");
				return false;
			}
			
			// 비밀번호 체크
			if(!isSamePwd(pwd1,pwd2)){	
			 alert("비밀번호가 일치하지 않습니다.");
			 	return false;
			}
			
			if(!pwdRegEx(pwd2)){
				alert("올바르지 않은 형식의 비밀번호입니다.");
				return false;
			}
			
			
			// 주민등록번호 체크
			if(!ssnRegEx(ssn1,ssn2)){
				alert("올바르지 않은 형식의 주민등록번호입니다.");
				return false;
			}

			if(!$('#term1').prop('checked')|| !$('#term2').prop('checked')){
		
				return false;
			}
		}
		
		function toMain(){
			location.href = "/semi/index.jsp";
		}
		
		function isChecked(){
					if($('#term1').prop('checked') && $('#term2').prop('checked')){
						$('#submitBtn').attr('disabled', false);
					
					}else{
						$('#submitBtn').attr('disabled',true);		
					}
		}
</script>


</html>