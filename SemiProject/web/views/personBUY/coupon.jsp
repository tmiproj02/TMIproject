<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TMI 쿠폰</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<style>
	.container1 {
		width: 1200px;
		margin: 0 auto;
		border : 1px solid red;
	}
	
	.clearFix::after {
		width: 100%;
		content: '';
		clear: both;
		display: block;
	}
	
	#cplist{
		letter-spacing : -2px;
		font-size : 13px;
	}
	
	.cpnoticebox{
		border : 1px solid silver;
		background-color : #dcdcdc;
		width : 800px;
		margin : 0 auto;
		margin-top : 40px;
	}
	
	.cp-info{
		padding-left : 3%;
		border : 1px solid tomato;
	}
	
	.coupontable, .ccount{
		width : 800px;
		margin: 0 auto;
		margin-top : 20px;
		border : 1px solid yellowgreen;
	}
	
	.cpp1 {
		font-size:20px;
		font-weight:bold;
	}
	
	#cpinput{
		margin-left:35%;
	}
	
	

</style>

</head>
<body>
	<%@ include file="/views/common/cateheader2.jsp" %>

	<section>
		<div class="container1">
        	<h3>쿠폰</h3>
		</div>
		<div class="container1 clearFix">
			<div class="ccount">
			<span class="cpp1">보유한 쿠폰 </span><span class="cpp1" style="color:red;">0</span><span class="cpp1">개</span>
				<div class="ui right labeled left icon input" id="cpinput">
  					<i class="tags icon"></i>
					<input type="text" placeholder="프로모션 코드 입력" id="couponNumber">
					<input type="submit" id="couNum" value="입력" style="border: 1px solid #BDD4F2; background-color:#BDD4F2;">
				</div>
				<p id="couponerr" style="text-align:right; color:tomato;"></p>
				
			</div>
			<div class="coupontable">
				<table class="ui blue table">
  <thead>
    <tr>
      <th>쿠폰명</th>
      <th>할인액</th>
      <th>적용조건</th>
      <th>유효기간</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>신규 가입 환영 쿠폰</td>
      <td><i class="won sign icon"></i>5,000원</td>
      <td>5,000원 이상 구매 시</td>
      <td>(가입일 + 10일)</td>
    </tr>
    <tr>
      <td>그냥 넣어본 칸</td>
      <td><i class="won sign icon"></i>1,000,000,000,000</td>
      <td>쿠폰의 금액 이상 구매 시</td>
      <td>(가입일 + 365일)</td>
    </tr>
    <tr id="addcoupon" hidden>
      <td>추가쿠폰!!!</td>
      <td><i class="won sign icon"></i>999,000,000,000,000</td>
      <td>쿠폰의 금액 이상 구매 시</td>
      <td>6/30까지</td>
    </tr>
  </tbody>
</table>



			</div>

			<div class="cpnoticebox">
				<h4><i class="exclamation triangle icon"></i>꼭 확인해주세요</h4>
				<div class="cp-info">
					<ul>
						<li id="cplist">주문 1회당 쿠폰 1개에 한하여 적용되며, 타 이벤트 할인과 중복 적용되지 않습니다</li>
						<li id="cplist">서비스 구매 시 총 결제 금액에서 할인이 적용되며, 쿠폰 금액 이상 구매 시 적용 가능합니다.</li>
						<li id="cplist">구매 금액에 따라 조건에 맞는 쿠폰을 발급받아 사용할 수 있으며, 할인 쿠폰별로 적용 대상이 다를 수 있습니다.</li>
						<li id="cplist">쿠폰 사용 후 다른 쿠폰으로의 변경은 불가합니다.</li>
					</ul>
				</div>
			</div>

		</div>
		
		
		
		
            <br><br><br><br>
            <a href="/semi/index.jsp">홈으로 돌아가기</a>
    </section>

	<script>
	
	// 발행 쿠폰 코드
	var couponMagNum = "hi hello";
	console.log("발행쿠폰: " + couponMagNum);
	
	
	// 쿠폰 번호 일치 여부 확인
	$('#couNum').click(function(event){

		
		//  일치하지 않을 때 || 입력하지 않았을 때
		if(($('#couponNumber').val() != couponMagNum)||($('#couponNumber').val() == "")){
			$('#couponerr').text('프로모션 코드를 다시 확인하세요.').show();
			
		}

		
		// 정상 입력 시
		else {
			$('#couponerr').text('알맞은 쿠폰 번호 입력').show();
			document.getElementById("addcoupon").hidden = false;
		}
		
		event.preventDefault();
	});
	
	
	
	</script>
	
	

	
	<%@ include file="/views/common/footer.jsp" %>
</body>
</html>