<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "member.model.vo.Member"%>

<% 				
				// 오브젝트로 가져오기 때문에 다운캐스팅
	Member m = (Member)session.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<!-- 네이버 로그인 API(CDN) -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<!-- 카카오 로그인 API(CDN) -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- 제이쿼리 -->
<script src="<%= request.getContextPath() %>/resources/js/jquery-3.4.1.min.js"></script>
 
 <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 
 
 
<title>TMI - 로그인</title>
</head>
<body>
  <div id="loginPageContainer" style="width:100%;height:100%; ">
	<nav id="logo" style="height:100px;">
		<img src="/semi/resources/images/KakaoTalk_20190606_164601739.png" style="height:120px; position:absolute; left:50%; margin-left:-65px; cursor:pointer;" onclick="toMain();">	
	</nav>
	<hr>
	
	 <div id="#loginDiv" style="position: absolute; top:50%;left:50%; width:500px; height:500px;margin-top: -250px; margin-left:-170px;">
		<form action="/semi/login.do" method="post" style="margin-top:100px;"> 
			<input type="text" name="userEmail" class="form-control" placeholder="이메일" style="width:350px;height:50px; margin-bottom:-10px;"><br>
			<input type="password" name="userPwd" class="form-control" placeholder="비밀번호" style="width:350px;height:50px; margin-bottom:-15px;"><br>
			<button type="submit" class="btn btn-primary" style="width:350px; margin-bottom:7px;">로그인</button>
		</form>
		<a id="searchIPBtn" onclick="searchIP()" style="cursor:pointer;">아이디/비밀번호 찾기</a>
		
		<a href="./member/memberJoin.jsp" id="memberJoin" style="cursor:pointer; margin-left:160px;">회원 가입</a>
		<br>
		<!-- 카카오톡 로그인 버튼 -->
		<div style="margin-bottom:11px;">
		<a id="kakao-login-btn"></a>
		</div>
		<!-- 네이버 로그인 버튼 -->
		<div id="naverIdLogin"></div>
	</div>
    <a href="http://developers.kakao.com/logout"></a>
  </div>
			
	
	<%@ include file="common/footer.jsp" %>
	
	
	
</body>


<script>
	// 아이디 / 비밀번호 찾기 함수
	function searchIP(){
		location.href = '../views/member/memberSearch.jsp';
	}
	
	
	// 로그아웃 함수
	function logout(){
		location.href = '/semi/logout.do';
	}
	
	// 카카오 로그인
    Kakao.init('cc56a05cae8352b3084c302df2e23e3f');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function() {
   
    	  Kakao.API.request({ 
              url: '/v2/user/me', 
              success: function(res) { 
            	  var email = res.kakao_account.email;
            	  $.ajax({
            		 	url : "/semi/emailDupCheck.do",
            		 	type : "post",
            		 	data : {email : email},
                        success : function(data){
                        		var isDup = data;
                        		// 이미 가입된 메일이라는 뜻. 로그인 시켜준다.
                        		if(isDup == 1){
                        			location.href = '/semi/login.do?userEmail='+email+ '&userPwd=0&isSNS=Y';
                        		} else{ // 가입자가 아니므로 가입절차 후 로그인
                        			location.href = '/semi/views/member/memberJoin.jsp?email=' + email + '&isSNS=Y';
                        		}
                        },
                        error : function(){
                        	console.log("카톡 로그인 중복체크에서 에러났어여");
                        }
            	  });
                   
             	}, 
             fail: function(error) { 
                   console.log(JSON.stringify(error)); 
          	  } 
  
        	//location.href = '/semi/index.jsp';
      	  });
    	  
    	  
     	},
     	 fail: function(err) {
         alert(JSON.stringify(err));
      	 }
    });
	
	// 네이버 로그인

	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "jO850s5j4AkPe49KkkVW",
			callbackUrl: "http://localhost:8088/semi/views/LoginForm.jsp",
			isPopup: false, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "green", type: 3, width:350, height: 60} /* 로그인 버튼의 타입을 지정 */
		}
	);
	
	/* 설정정보를 초기화하고 연동을 준비 */
	naverLogin.init();
	
	$('#naverIdLogin').on('click', function () {
		naverLogin.getLoginStatus(function (status) {
			if (status) {
				/* (5) 필수적으로 받아야하는 프로필 정보가 있다면 callback처리 시점에 체크 */
				var email = naverLogin.user.getEmail();
				if( email == undefined || email == null) {
					alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
					/* (5-1) 사용자 정보 재동의를 위하여 다시 네아로 동의페이지로 이동함 */
					naverLogin.reprompt();
					return;
				}
				
				 $.ajax({
         		 	url : "/semi/emailDupCheck.do",
         		 	type : "post",
         		 	data : {email : email},
                     success : function(data){
                     		var isDup = data;
                     		// 이미 가입된 메일이라는 뜻. 로그인 시켜준다.
                     		if(isDup == 1){
                     			location.href = '/semi/login.do?userEmail='+email+ '&userPwd=0&isSNS=Y';
                     		} else{ // 가입자가 아니므로 가입절차 후 로그인
                     			location.href = '/semi/views/member/memberJoin.jsp?email=' + email + '&isSNS=Y';
                     		}
                     },
                     error : function(){
                     	console.log("네이버 로그인 중복체크에서 에러났어여");
                     }
         	   });
	
			} else {
				console.log("callback 처리에 실패하였습니다.");
			}
		});
	});
	
	function toMain(){
		location.href = "/semi/index.jsp";
	}
    
</script>




</html>