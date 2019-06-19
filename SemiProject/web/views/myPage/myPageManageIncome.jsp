<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&display=swap" rel="stylesheet">
<script
  src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="/semi/resources/js/semantic.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<title>수익관리</title>
<style>
	.font-noto{
		font-family: 'Noto Sans KR', sans-serif;
    	font-weight: 400;
	}
	.my-page-sell{
		margin:0 auto; 
	}
	.scontainer{

		width : 1024px;
		margin:0 auto;
		overflow : hidden;
	}
	.scontainer1{
		padding-left : 15px;
		padding-right : 15px;
		margin:0 auto;
	}
	.scontainer2{

		margin:0 auto;
		float : left;
	}
	
	.profile{
		margin-top:20px;
	}
	.width-25per{
		width:25%;

	}
	.width-75per{
		width:75%;

	}
	.user-profile-body{
		border: solid #E6E6E6 1px;
		border-bottom:none;
		text-align : center;
		padding-top : 20px;
	}
	.user-profile-box>li{
		border: solid #E6E6E6 1px;
		border-bottom:none;
		list-style : none;
		overflow : hidden;
	}
	
	.sell{
		margin-top : 40px;
	}
	.seller-check{
		display: inline;
	    border-radius: 10px;
	    padding: 1px 7px 2px 7px;
	    font-size: 75%;
	    line-height: 1;
	    color: #fff;
	    text-align: center;
	    white-space: nowrap;
	    vertical-align: baseline;
	    background : #364559;
	}
	.padding-15{
		padding:0 15px;
	}
	.income-out{
		padding :15px 0;
	}
	.income-out>div{
		display : inline-block;
		
	}
	.income-out-div{
		text-align:left; 
		width:50%;
		padding-left:15px; 
		padding-right: 0px;
		float:left;
		
	}
	.won{
		text-align:right; 
		width:50%;
		padding-right:15px; 
		padding-left:0;
	}
	.menu-line{
		border: solid #E6E6E6 1px;
		border-bottom:none;
		overflow:hidden;
	}
	.menu-line>a{
		display : inline-block;
		width:50%;
		margin-bottom : 0;
		float:left;
	}
	.menu-box img{
		width : 40px;
	}
	.menu-box{
	
	}
	.menu-box>div>div{

	}
	.padding-all-15{
		padding : 15px;
	}
	.menu-slot{
		width:100%;
		
	}

	.select{
		background-color: #BDD4F2;
		color : #000;
	}
	
	.ad-request{
		border-radius: 4px;
		padding: 5px 10px;
		color: #4d4d4d;
	    background-color: #fff;
	    display: inline-block;
	    margin-bottom: 0;
	    text-align: center;
	    vertical-align: middle;
	    touch-action: manipulation;
	    cursor: pointer;;
	    border: 1px solid #e6e6e6;	    
	    font-size: 13px;
	    line-height: 1.5438;
	    user-select: none;
	}
	.ad-request:hover{
	    color: #4d4d4d;
	    background: #f0f0f0;
	    border-color: #c7c7c7;
	}
	.ad-request>h5{
		color:#666;
	}
	.income-box{
	    padding: 8px;
	    box-shadow: 0 0 10px 0 #E6E6E6;
	}
	.withdraw-income{
	    border-right: solid #E6E6E6 1px;
	    padding-left: 25px;
        margin-bottom: 10px;
        margin-top: 10px;
        width: 50%;
        overflow:hidden;
        float:left;
	}
	.row{
		overflow:hidden;
	}
	.row>div{
		display:inline-block;
	}
	.predict-income{
	    border-right: solid #E6E6E6 1px;
	    margin-bottom: 10px;
        margin-top: 10px;
        width: 25%;
		float:left;
        text-align:center;
        
	}
	.margin-10{
		margin:10px 0;
	}
	.plain{
		font-family: 'Noto Sans KR', sans-serif;
		font-weight:400;	
		text-decoration: none;
    	color: #4d4d4d;	
	}
	.NGB{
		font-family: 'Noto Sans KR', sans-serif;
		font-weight:500;
	}
	.sell-ing{
		padding-bottom : 15px;
		 border-bottom:solid #E6E6E6 1px;
	}
	.sell-ing>li{
		list-style: none;
		display : inline-block;
		margin-right : 15px;
		
	}
	.sell-ing>li>a{
		color : #878787;
		font-family: 'Noto Sans KR', font;
		font-weight : 500;
	}
	.detail-box{
		border-top: solid #E6E6E6 1px !important;
	    border-bottom: solid #E6E6E6 1px !important;
	}
	.detail-list{
		border: solid #E6E6E6 1px !important;
		padding : 85px 0;
		text-align : center;
		margin-top : 20px;
	}
	.active{
		background:#E8F0F5;
	}
	.select{
		background-color: #BDD4F2;
		color : #000;
	}
</style>
</head>
<body>
	<%@ include file="../common/cateheader2.jsp" %>
	<div class="my-page-sell">
		<div class="scontainer">
			<div class="scontainer1">
				<div class = "sell font-noto">
					<h3>판매</h3>
				</div>
			</div>
			<div class="scontainer2 width-25per">
					<div class="profile">
						<div class="padding-15">
						<div class="user-profile-body">
							<img src="/semi/resources/images/myprofile.png" style="border-radius: 500px;width:100px;height:100px"/>
						</div>
						<ul class="user-profile-box">
							<li style=" border-top:none;"><div style="text-align : center; margin-bottom:20px;">
								<div class="font-noto" style="margin-top:5px;margin-bottom:10px;"><a href=""><%= m.getUserName() %></a></div>
								<div><label for="" class="seller-check font-noto">전문가 인증</label></div>
							</div></li>
							<li><div class="income-out">
								<div class="income-out-div">
									<div class="font-noto">출금가능 수익금</div>
								</div>
								<div class="font-noto won"><b><%=s.getIncome() %>원</b></div>
							</div></li>
							<li><div class="income-out">
								<div class="income-out-div">
									<div class="font-noto">회원 보유캐시</div>
								</div>
								<div class="font-noto won"><b><%= m.getCash() %>원</b></div>
							</div></li>
						</ul>
					</div>
					<div class="menu-box">
						<div class="padding-15">
							<div class="menu-line" style="text-align:center">
								<a href="/semi/views/myPage/myPageManageSell.jsp"><div class="padding-all-15 menu-slot" style="border-right:solid #E6E6E6 1px;">							
									<div><img src="/semi/resources/images/selling_active.png" alt="" /></div>
									<h6>판매관리</h6>							
								</div></a>
								<a href="/semi/views/myPage/myPageManageIncome.jsp"><div class="padding-all-15 menu-slot active">
									<div><img src="/semi/resources/images/profits_new_active.png" alt="" /></div>
									<h6>수익관리</h6>			
								</div></a>
							</div>
							<div class="menu-line" style="text-align:center;border-bottom:solid #E6E6E6 1px;">
								<a href="/semi/views/myPage/myPageManageAd.jsp"><div class="padding-all-15 menu-slot" style="border-right:solid #E6E6E6 1px;">							
									<div><img src="/semi/resources/images/advertisement_active.png" alt="" /></div>
									<h6>광고관리</h6>							
								</div></a>
								<a href="/semi/views/myPage/myPageMyService.jsp"><div class="padding-all-15 menu-slot">
									<div><img src="/semi/resources/images/my_gigs_active.png" alt="" /></div>
									<h6>나의 서비스</h6>			
								</div></a>
							</div>
						</div>
					</div>
					
				</div>
				
			</div>
			<div class="scontainer3 width-75per" style="float:left">
				<div class="row">
					<div class="padding-15" style="width:66.66667%; float:left">
						<h3 class="font-noto" style="font-weight:700;margin-top:5px;">수익관리</h3>
					</div>
					<div class="padding-15" style="width:33.33333%; float:left; text-align:right;">
						<a href="" class="ad-request">
							<h5>광고 신청</h5>
						</a>
					</div>
				</div>
				<div class="row">
					<div class="padding-15" style="width:100%">
						<div style="margin-top:10px;margin-bottom:20px;">
							<div class="income-box">
								<div class="row">
									<div class="withdraw-income">
										<div style="width:25%;float:left"><img width=80% src="/semi/resources/images/profits_new_active.png" alt="" /></div>
										<div style="width:75%;padding-right:15px;float:left">
											<h5 class="font-noto" style="margin-top:5px;margin-bottom:10px">출금가능 수익금</h5>
											<h2 class="font-noto" style="margin:0;margin-bottom:10px">0원</h2>
										</div>
									</div>
									<div class="predict-income padding-15">
										<h6 class="margin-10">예상 수익금</h6>
										<h5 class="margin-10" style="margin-bottom:10px">0원</h5>
									</div>
									<div class="predict-income padding-15" style="border-right:none;">
										<h6 class="margin-10">출금 완료 수익금</h6>
										<h5 class="margin-10" style="margin-bottom:10px">0원</h5>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="padding-15" style="text-align:right;width:100%">
						<a href="javascript:void(0);" class="plain NGB" id="monthly" onclick="getProfitsMChart()">월별</a> &nbsp;
						<a href="javascript:void(0);" class="plain" id="daily" onclick="getProfitsDChart()">일별</a>		
					</div>
					<div class="income-chart" style="width:100%;float:right">
						<div class="padding-15">
							<canvas id="myChart" width=600px></canvas>
							<script>
								new Chart(document.getElementById("myChart"),{
									"type":"line"
									,"data":{"labels":["2018-06","2018-07","2018-08","2018-09","2018-10","2018-11","2018-12","2019-01","2019-02","2019-03","2019-04","2019-05","2019-06"]
									,"datasets":[{"label":"My First Dataset","data":[65,59,80,81,56,55,40,56,30,70,65,80,81]
									,"fill":false
									,"borderColor":"rgb(75, 192, 192)","lineTension":0.1}]}
									,"options":{}});
					
							</script>
						</div>
					</div>
					<script>
						function getProfitsMChart(){
							$("#monthly").addClass('NGB');
							$("#daily").removeClass();
							new Chart(document.getElementById("myChart"),{
								"type":"line"
								,"data":{"labels":["2018-06","2018-07","2018-08","2018-09","2018-10","2018-11","2018-12","2019-01","2019-02","2019-03","2019-04","2019-05","2019-06"]
								,"datasets":[{"label":"My First Dataset","data":[65,59,80,81,56,55,40,56,30,70,65,80,81]
								,"fill":false
								,"borderColor":"rgb(75, 192, 192)","lineTension":0.1}]}
								,"options":{}});
						}
						function getProfitsDChart(){
							$("#daily").addClass('NGB');
							$("#monthly").removeClass('NGB');
							new Chart(document.getElementById("myChart"),{
								"type":"line"
								,"data":{"labels":["06-01","06-02","06-03","06-04","06-05","06-06","06-07","06-08","06-09","06-10","06-11","06-12","06-13","06-14","06-15",
									"06-16","06-17","06-18","06-19","06-20","06-21","06-22","06-23","06-24","06-25","06-26","06-27","06-28","06-29","06-30"]
								,"datasets":[{"label":"My First Dataset","data":[65,59,80,81,56,55,40,56,30,70,65,80,81,59,80,81,56,55,40,56,30,70,65,80,59,80,81,56,55,40]
								,"fill":false
								,"borderColor":"rgb(75, 192, 192)","lineTension":0.1}]}
								,"options":{}});
						}
					</script>
				</div>
				<div style="margin-top:20px">
					<div class="padding-15">
						<ul class="sell-ing">
							<li>
								<a style="color:#000" href="">수익금 내역 &nbsp;</a>
							</li>
							<li>
								<a href="">출금내역 &nbsp;</a>
							</li>
							<li>
								<a href="">월별 수수료 세금계산서 &nbsp;</a>
							</li>
						</ul>
					</div>
				</div>
				<div style="margin-top:20px">
					<div class="padding-15 font-noto">
						<div class="ui compact selection dropdown" style="width:85px">
						  <i class="dropdown icon"></i>
						  <div class="text">전체</div>
						  <div class="menu">
						   	  <div class="item">전체</div>
						      <div class="item">완료</div>
						      <div class="item">진행중</div>
						      <div class="item">취소</div>
						  </div>
						</div>
					<script>
            			$('.ui.dropdown').dropdown();
        			</script>
					</div>
				</div>
				<div>
					<div class="padding-15" style="margin-top:10px">
						<div class="detail-box">
							<div class="detail-list">
								<div><img src="/semi/resources/images/nothing.png" style="width:50px;vertical-align: middle;border:0" /></div>
								<h5 class="font-noto" style="margin:10px 0;">내역이 없습니다.</h5>
							</div>
						</div>
					</div>
				</div>	
				
			</div>
		</div>
	</div>
	<%@ include file="/views/common/footer.jsp" %>
</body>
</html>