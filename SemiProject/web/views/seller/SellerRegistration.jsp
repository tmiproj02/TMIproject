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
	<%@ include file="../common/sellerHeader.jsp" %>

<form>
	
	<div id="regist" class="jumbotron" style = "width:50%; height:50%;">
	
    <h3  class="display-3" align="left" fontsize="2px">판매자 등록</h3>
    <br><br>
    <div id="crossside">
    
    	<p class="lead">연락가능번호</p>
		<div class="ui input focus">
			<input type="text" placeholder="-없이입력" value="">
		</div>
		<br>
		<br><br>
  		<p class="lead">연락가능시간</p>
		<div class="ui input focus">
			<input type="text" placeholder="시간입력" value="">
		</div>
		
   		<br><br>
		<div class="field">
		
		<p class="lead">전문가 소개</p><br>
		  <textarea rows="2" placeholder="내용을 입력하세요"></textarea>
		</div>
	
    
		<br><br>
		<p class="lead">경력사항</p><br>
		<table>
		<tr>
			<td>
				<p class="lead">취득년도</p><br>
			</td>
			<td>
				<p class="lead">내용</p><br>
			</td>
		</tr>
		<tr>
			<td>
			<div class="ui input exp">
				<input type="text" placeholder="" value="">
			</div>
			</td>
			<td>
			<div class="ui input exp">
				<input type="text" placeholder="" value="">
			</div>
			</td>
		</tr>
		</table>
		<br><br>
		<p class="lead">자격증</p><br>
		<table>
		<tr>
			<td>
				<p class="lead">취득년도</p><br>
			</td>
			<td>
				<p class="lead">내용</p><br>
			</td>
		</tr>
		<tr>
			<td>
			<div class="ui input exp">
				<input type="text" placeholder="" value="">
			</div>
			</td>
			<td>
			<div class="ui input exp">
				<input type="text" placeholder="" value="">
			</div>
			</td>
		</tr>
		</table>
		
		
		
		<label>약관 동의</label><br>
		<div class="ui form">
			<div class="inline field">
	  			<textarea rows="2" readonly>여러분을 환영합니다.
TMI 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 TMI 서비스의 이용과 관련하여 TMI 서비스를 제공하는 TMI 주식회사(이하 ‘TMI’)와 이를 이용하는 TMI 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 TMI 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
TMI 서비스를 이용하시거나 TMI 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.

다양한 TMI 서비스를 즐겨보세요.
TMI는 www.naver.com을 비롯한 TMI 도메인의 웹사이트 및 응용프로그램(어플리케이션, 앱)을 통해 정보 검색, 다른 이용자와의 커뮤니케이션, 콘텐츠 제공, 상품 쇼핑 등 여러분의 생활에 편리함을 더할 수 있는 다양한 서비스를 제공하고 있습니다.
여러분은 PC, 휴대폰 등 인터넷 이용이 가능한 각종 단말기를 통해 각양각색의 TMI 서비스를 자유롭게 이용하실 수 있으며, 개별 서비스들의 구체적인 내용은 각 서비스 상의 안내, 공지사항, TMI 웹고객센터(이하 ‘고객센터’) 도움말 등에서 쉽게 확인하실 수 있습니다.

TMI는 기본적으로 여러분 모두에게 동일한 내용의 서비스를 제공합니다. 다만, '청소년보호법' 등 관련 법령이나 기타 개별 서비스 제공에서의 특별한 필요에 의해서 연령 또는 일정한 등급을 기준으로 이용자를 구분하여 제공하는 서비스의 내용, 이용 시간, 이용 횟수 등을 다르게 하는 등 일부 이용을 제한하는 경우가 있습니다. 자세한 내용은 역시 각 서비스 상의 안내, 공지사항, 고객센터 도움말 등에서 확인하실 수 있습니다.

TMI 서비스에는 기본적으로 본 약관이 적용됩니다만 TMI가 다양한 서비스를 제공하는 과정에서 부득이 본 약관 외 별도의 약관, 운영정책 등을 적용하는 경우(예, TMI페이, V LIVE 등)가 있습니다. 그리고 TMI 계열사가 제공하는 특정 서비스의 경우에도(예, LINE, SNOW등) 해당 운영 회사가 정한 고유의 약관, 운영정책 등이 적용될 수 있습니다. 이러한 내용은 각각의 해당 서비스 초기 화면에서 확인해 주시기 바랍니다.

회원으로 가입하시면 TMI 서비스를 보다 편리하게 이용할 수 있습니다.
	  			</textarea>
	  
	    		<div class="ui checkbox">
			      	<input tabindex="0" class="agree" type="checkbox">
			      	<label>약관에 동의합니다.</label>
	    		</div>
	  		</div>
		</div>
	
		<script type="text/javascript">
			$('.ui.checkbox').checkbox();
		</script>
    
    
		<!-- 다음 버튼부분 -->
		<div align="right">
		<button type="button" id="nextButton" class="btn btn-outline-secondary" >다음단계</button>
		</div>
	</div>
</div>

	<!-- hidden으로 숨겨놓은 부분 next를 누르면 이화면으로 바뀌게함 이유인즉 하나하나 DB에 넣는게 아니라 한번에 다넣는 방식을 채택함 -->
	<div id="account" style = "width:50%; height:50%;" class="jumbotron" hidden>
	    <h1>출금계좌 등록</h1>
	    <p></p>

	<div class="form-row align-items-center">
		<div class="col-auto my-1">
		<select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
			<option selected>은행명</option>
			<option value="1">신한은행</option>
			<option value="2">국민은행</option>
			<option value="4">우리은행</option>
			<option value="5">외환은행</option>
			<option value="6">기업은행</option>
			<option value="7">하나은행</option>
			<option value="8">카카오뱅크</option>
		</select>
		<br><br><br><br><br>
		</div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div>
			<div>
				<label>계좌번호</label><br>
				<div class="ui input focus">
					&nbsp;
					<input type="text" placeholder="-없이입력해 주세요" value="">
				</div>
			</div>
			<br><br>
			<div>
				<label>예금주</label><br>
				<div class="ui input focus">
					&nbsp;
					<input type="text" placeholder="실명을 입력해주세요" value="">
				</div>
			</div>
		</div>
		
	</div>
	<br><br><br>
		<table>
		<tr>
			<td width="690px" height="100px">
				<button type="button" id="backButton" class="btn btn-outline-secondary">이전단계</button>
			</td>
			<td align="right">
				<button type="submit" id="comButton" class="btn btn-outline-secondary">등록완료</button>
			</td>
		</tr>
		</table>
		
		<!-- 만약 값을 보내지 못하면 &nbsp로 할것 -->
		
	</div>
	
	
</form>

	
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