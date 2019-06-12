<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TMI - 회원가입 </title>
</head>
<script src="<%= request.getContextPath() %>/resources/js/jquery-3.4.1.min.js"></script>
 <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
	html,body,div,nav{margin:0px; padding:0px;}
	input{margin-bottom: 20px;}
	td{width:100px;}
	
	
</style>

<body>
  <div id="memberJoinContainer" style="width:100%; height:100%; position:relative;">
  	<nav id="logo" style="height:100px;">
		<img src="/semi/resources/images/KakaoTalk_20190606_164601739.png" style="width:130px;height:120px; position:absolute; left:50%; margin-left:-65px;">	
	</nav>
	<hr>
	
	<form action="/semi/mInsert.do" method="post" onsubmit="return validate();" style="width:900px; margin:0 auto; position: absolute; left:50%; margin-left:-450px">
			
		<table style="display:inline;">
			<tr>
				
				<td></td>   
				<td><input type="email" name="email" id="email" style="width :300px; height:40px;" required="required" placeholder="이메일" class="form-control"/></td>
				<td><button id="emailDupCheckBtn" style="margin:0 0px 20px 20px;" class="btn btn-secondary">중복 확인</button></td>
				<input type="hidden" name="isSNS" id="isSNS" value="N">
			</tr>	
			
			<tr>
				<td></td>
				<td><input type="password" name="userPwd" id="userPwd" style="width : 250px;  height:40px;" required="required" placeholder="비밀번호" class="form-control"/></td>
				<td></td>
			</tr>
			
		
			
			<tr>
				<td></td>
				<td><input type="password" name="userPwd2" id="userPwd2" style="width : 250px;  height:40px; margin-bottom:0px;" required="required" placeholder="비밀번호 확인" class="form-control"/></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td><label id="pwdResult" style="font-size:10px;"></label></td>
			</tr>
			
				<tr>
				<td></td>
				<td><label>이름</label></td>
				<td></td>
			</tr>
			
			
			<tr>
				<td></td>
				<td><input type="text" name="userName" style="width : 80px;" required="required" class="form-control"/></td>
				<td></td>
			</tr>
			
			
			<tr>
				<td></td>
				<td><label>주민등록번호</label></td>
				<td></td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="text" name="memberSSN1" id="memberSSN1" style="width :85px; display:inline; margin-bottom:0px;" required="required" class="form-control"/> - <input type="text" name="memberSSN2" id="memberSSN2" style="width : 85px; display:inline; margin-bottom:0px;" required="required" class="form-control"/></td>
				<td></td>
			</tr>
			
			<tr>
				<td></td>
				<td><label id="ssnResult"></label></td>
				<td></td>
			</tr>
			
			<tr>
				<td></td>
				<td><label>연락처</label></td>
				<td></td>
			</tr>
			
			
			
			<tr>
				<td></td>
				<td><input type="tel" name="phone1" required="required" style="width:50px; display:inline;" class="form-control"/>&nbsp- &nbsp<input type="tel" name="phone2" required="required" style="width:50px; display:inline;" class="form-control"/>&nbsp-&nbsp<input type="tel" name="phone3" required="required" style="width:50px; display:inline;" class="form-control"/></td>
				<td></td>
			</tr>
		
			<tr>
				<td></td>
				<td colspan = "2">
					<input type="submit" value="회원 가입" class="btn btn-success"/>
				</td>
			</tr>
		</table>
		
	</form>
</div>	
	 
	<%@ include file="../common/footer.jsp" %>
</body>

<script>
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
						return false;
					}else{
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
				$('#ssnResult').html("유효하지 않은 주민등록번호입니다.").css('color','red');
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
			
			// 비밀번호 체크
			var pwd1 = $('#userPwd').val();
			var pwd2 = $('#userPwd2').val();
			// 주민등록번호 체크
			var ssn1 = $('#memberSSN1').val();
			var ssn2 = $('#memberSSN2').val();
			
			
			// 이메일 체크 함수 동작
			//if(!isDupEmail()){
				//return false;
			//}
			
			
			if(!isSamePwd(pwd1,pwd2)){	
			 alert("비밀번호가 일치하지 않습니다.");
			 	return false;
			}
			
			if(!pwdRegEx(pwd2)){
				alert("올바르지 않은 형식의 비밀번호입니다.");
				return false;
			}
			
			if(!ssnRegEx(ssn1,ssn2)){
				alert("올바르지 않은 형식의 주민등록번호입니다.");
				return false;
			}
						
		}

	
	
	
</script>




</html>










