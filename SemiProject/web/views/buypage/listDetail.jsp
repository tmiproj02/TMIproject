<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>


<link rel="stylesheet" href="../resources/css/listDetail.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&display=swap" rel="stylesheet">

<title>Insert title here</title>
<style>
@charset "UTF-8";

html{
	font-family: 'Noto Sans KR', sans-serif;
}
.clearFix::after{
	content: '';
	display: block;
	width: 100%;
	clear: both;
}

/* container 고정레이아웃 */
.container1{
	width: 1200px;
	margin: 0 auto;

}

.detailbox{
	margin-top: 80px;
}

.detailbox1{
	
	width:550px;
	margin-right: 92px;
	display: inline-block;
	float: left;
}
.detailbox2{
	
	width:550px;
	display: inline-block;
	float: left;
	
}
.imgbox{
	
	width: 100%;
	height:500px;

}
.starbox{
	width: 100%;
	text-align: center;
	margin-top: 10px;
}
.starbox p{
	 
}

.detailsTab .tabcontent{
	display: none;
}
.detailsTab .tabcontent.current{
	display: block;
}
.detailsTab li.current{
	border: solid 1px #0066a0;
	border-bottom: none;
}
.detailsTab ul li{
	float: left;
	cursor: pointer;
	padding: 18px 14px; 
	border: solid 1px #ccc;
}
li{
	list-style: none;
}

.detailTit p:nth-child(1){
	font-size: 18px;
	font-weight: 700; 
	color: #333;
}
.detailTit p:nth-child(2){
	font-size: 24px;
	color: #4d4d4d;
	font-weight: 900;
	text-align: right;
	
}
.buybtntext{
	float: left;
	margin-left: 20px;
}
.buybtntext p{
	margin: 10px 0;	
}

.shildbox{
	border: 1px solid #e6e6e6;
}
.sellerInfobox{
	border: 1px solid #e6e6e6;
	margin-top: 30px;
}
.sellerinfo{
	margin-top: 20px;
}
.selleridbox{
	text-align: center; 
}
.selleridbox p{
	font-size: 21px;
	font-weight: 700;
}
.sellerwork{
	display: inline-block;
	padding: 0 30px;
	border-right: 1px solid #ccc;
	font-size: 16px;
}
.sellergrade{
	display: inline-block;
	padding: 10px 30px;
	font-size: 16px;
}
.sellerintrodu{
	margin: 20px 0;
	padding-top: 20px;
	border-top: 1px dashed #000;
}
.sellerpadding{
	padding: 30px;	
}

</style>
</head>
<body>


<section class="detailbox container1 clearFix">
	<div class="detailbox1">
		
		<div class="img">
			<div class="imgbox" style="background:url('../resources/img/detailimg.jpg');">
				
			</div>
			
			<div class="starbox">
				<div class="ui massive star rating" data-rating="3" data-max-rating="5"></div>
				
				<script>
				$('.ui.rating')
				  .rating()
				;
				</script>
			</div>
			</div>
		<div class="detailsTab">
			<ul class="tab clearFix" style="padding:0;">
	 			<li class="current" data-tab="tab1">
	 				
	 				<p>서비스설명</p>
	 			</li>
	 			<li data-tab="tab2">
	 				
	 				<p>가격정보</p>
	 			</li>
	 			<li data-tab="tab3">
	 				
	 				<p>수정 및 재진행</p>
	 			</li>
	 			<li data-tab="tab4">
	 				
	 				<p>취소 및 환불 규정</p>
	 			</li>
	 			<li data-tab="tab5">
	 				
	 				<p>서비스 평가</p>
	 			</li>
 		</ul>
			<div id="tab1" class="tabcontent current">
	      		<p>서비스 설명
1. 기업부설연구소/연구개발전담부서/디자인연구소 인증 컨설팅을 해드립니다. <br>

기업부설연구소/연구개발전담부서/디자인연구소 인증을 통해 법인기업 및 개인사업자의 <br>

세금혜택 외에도 각종 정부지원사업 지원 및 기업평가시 가산점을 획득할 수 있으나<br>

설립요건 및 인증 심사의 까다로움으로 전문가의 도움을 받는것이 필요합니다.<br>

* 오랜기간 전문인력이 부족한 중소기업을 위해 각종기업인증(연구소,벤처,이노비즈 등) 및<br>

정책자금 컨설팅을 수행해 온 경험과 노하우로 최소의 비용으로 최적의 컨설팅을 약속<br>

드립니다.<br>

* 연구소설립시 지원혜택 : https://www.koita.or.kr/certificate/rndsupport.aspx <br>



2. 컨설팅 절차<br>

(1) 전화상담 : 기업의 대략적인 정보와 현황 파악<br>

(2) 자료수령 : 인증에 필요한 서류를 이메일로 수령<br>

(3) 방문상담 및 실사 : 고객사를 방문하여 구체적인 상담 및 실사 후 인증업무 진행<br>

(4) 인증완료 : 인증서 발급 및 사후관리 안내<br>



3. 컨설팅비용<br>

550,000원(수도권 기준이며 지역에따라 별도의 출장비 발생할 수 있음)<br>

전화상담은 횟수 제한없이 가능합니다.</p>
	 		</div>
	 		<div id="tab2" class="tabcontent">
	      		<p>wwewe</p>
	 		</div>
	 		<div id="tab3" class="tabcontent">
	      		<p>수정 및 재진행 <br>
추가 비용없이 인증완료시까지 보완사항 발생시 무제한 서비스해드립니다.</p>
	 		</div>
	 		<div id="tab4" class="tabcontent">
	      		<p>취소 및 환불 규정<br>
			가. 기본 환불 규정<br>
			1. 전문가와 의뢰인의 상호 협의 하에 청약 철회 및 환불이 가능합니다.<br>
			2. 상담(컨설팅)이 완료된 이후 또는 자료, 프로그램 등 서비스가 제공된 이후에는 환불이 불가합니다. (소비자보호법 17조 2항의 5조. 용역 또는 「문화산업진흥 기본법」 제2조제5호의 디지털콘텐츠의 제공이 개시된 경우에 해당)<br>
			
			나. 전문가 책임 사유<br>
			1. 전문가의 귀책사유로 당초 약정했던 서비스 미이행 혹은 보편적인 관점에서 심각하게 잘못 이행한 경우 결제 금액 전체 환불이 가능합니다.<br>
			
			다. 의뢰인 책임 사유<br>
			1. 서비스 진행 도중 의뢰인의 귀책사유로 인해 환불을 요청할 경우, 사용 금액을 아래와 같이 계산 후 총 금액의 10%를 공제하여 환불합니다.<br>
			
			총 상담 시간의 1/3 경과 전 : 이미 납부한 요금의 2/3해당액<br>
			총 상담 시간의 1/2 경과 전 : 이미 납부한 요금의 1/2해당액<br>
			총 상담 시간의 1/2 경과 후 : 반환하지 않음<br>
			
			2. 상담 진행 중 의뢰인의 폭언, 욕설 등이 있을 경우 상담은 종료되며 잔여 이용요금은 환불되지 않습니다.</p>
	 		</div>
	 		<div id="tab5" class="tabcontent">
	      		<p>서비스평가</p>
	 		</div>
		</div>
		
	<script> //탭기능 스크립트
		$(function() {
			$('ul.tab li').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('ul.tab li').removeClass('current');
				$('.tabcontent').removeClass('current');
				$(this).addClass('current');
				$('#' + activeTab).addClass('current');
			})
		});
	</script>	
	</div>
	
	
	<div class="detailbox2">
		<div class="detailTit">
			<p>기업부설연구소/연구개발전담부서 인증 컨설팅해드립니다.</p>
			<p>10,000원 ~</p>
		</div>
		
		<div class="ui styled accordion" style="margin-top:30px;">
			  <div class="active title">
			    <i class="dropdown icon"></i>
			    프리미엄 100,000원
			  </div>
			  <div class="active content">
			    <p>동해물과백두산이</p>
			    <a href="buyPage.jsp" style="padding: 10px 100px;
	background: #bdd4f2;
	border-radius: 8px;">구매하기</a>
			  </div>
			  <div class="title">
			    <i class="dropdown icon"></i>
			    똥값 100,000원
			  </div>
			  <div class="content">
			    <p>동해물과백두산이</p>
			    <a href="buyPage.jsp" style="padding: 10px 100px;
	background: #bdd4f2;
	border-radius: 8px;">구매하기</a>
			  </div>
			  <div class="title">
			    <i class="dropdown icon"></i>
			    쓰레기  100,000원
			  </div>
			  <div class="content">
			    <p>동해물과백두산이</p>
			    <p>동해물과백두산이</p>
			    <a href="buyPage.jsp" style="padding: 10px 100px;
	background: #bdd4f2;
	border-radius: 8px;">구매하기</a>
			  </div>
		</div>
		
		
	<div class="shildbox container2 clearFix" style="margin-top: 20px;">
		<img src="../resources/img/shild.png" alt="" style="float: left; margin-left:10px; margin-top:10px;">
		<div class="buybtntext">
		<p>TMI는 안전한 거래 환경을 제공합니다.</p>
		<p>TMI를 통해 결제 진행 시 관련 정책에 의해 보호 받을 수 있습니다.</p>
		</div>

	</div>
	<script>
		 $('.ui.accordion')
		  .accordion()
		;
	</script>


	 <div class="sellerInfobox">
	 <div class="sellerpadding">
		 	<div class="selleridbox">
				<img src="" alt="" />
				<p>닉네임닉네임</p>	 	
		 	</div>
		 	
		 	<div style="text-align: center;">
		 	<div class="sellerinfo clearFix">
				<div class="sellerwork">
					<p>10건</p>
					<p>작업갯수</p>
				</div>
				<div class="sellergrade">
					<p>10</p>
					<p>평점</p>
				</div> 	
		 	</div>
		 	</div>
		 	<div class="sellerintrodu">
		 		<p>소개글소개글소개글소개글소개글소개글소개글소개글소개글소개글소개글소개글소개글소개글소개글</p>
		 	</div>
		 	
		 </div>
	 </div>
	</div>
</section>

<br><br><br><br><br><br><br><br><br>
</body>
</html>