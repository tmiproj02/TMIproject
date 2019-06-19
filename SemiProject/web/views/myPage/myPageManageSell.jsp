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
<title>판매관리</title>
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
	
	.padding-all-15{
		padding : 15px;
	}
	.menu-slot{
		width:100%;
		
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
	.selling-history{
	    vertical-align: 1px;
	    font-size: 11px;
	    color: #878787;
	    padding: 1px 6px;
	    background-color: #ddd;
	    border-radius: 500px !important;
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
								<%
								  String income = dc.format(s.getIncome()); 	  
								  String cash = dc.format(m.getCash());
								%>
								<div class="font-noto won"><b><%=income %>원</b></div>
							</div></li>
							<li><div class="income-out">
								<div class="income-out-div">
									<div class="font-noto">회원 보유캐시</div>
								</div>
								<div class="font-noto won"><b><%= cash %>원</b></div>
							</div></li>
						</ul>
					</div>
					<div class="menu-box">
						<div class="padding-15">
							<div class="menu-line" style="text-align:center">
								<a href="/semi/views/myPage/myPageManageSell.jsp"><div class="padding-all-15 menu-slot active" style="border-right:solid #E6E6E6 1px;">							
									<div><img src="/semi/resources/images/selling_active.png" alt="" /></div>
									<h6>판매관리</h6>							
								</div></a>
								<a href="/semi/views/myPage/myPageManageIncome.jsp"><div class="padding-all-15 menu-slot">
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
				<div class="padding-15">
					<h3 class="font-noto" style="font-weight:700">판매관리</h3>
				</div>
				<div style="margin-top:20px">
					<div class="padding-15">
						<ul class="sell-ing">
							<li>
								<a style="color:#000" href="">요청사항 미작성 &nbsp; <span class="selling-history select">0</span></a>
							</li>
							<li>
								<a href="">진행중 &nbsp; <span class="selling-history">0</span></a>
							</li>
							<li>
								<a href="">발송중 &nbsp; <span class="selling-history">0</span></a>
							</li>
							<li>
								<a href="">완료 &nbsp; <span class="selling-history">0</span></a>
							</li>
							<li>
								<a href="">취소 &nbsp; <span class="selling-history">0</span></a>
							</li>
						</ul>
					</div>
				</div>
				<div style="margin-top:20px">
					<div class="padding-15 font-noto">
						<div class="ui right action left icon input">
					  <i class="search icon"></i>
					  <input type="text" placeholder="검색">
					  <div class="ui basic floating dropdown button">
					    <div class="text font-noto">닉네임</div>
					    <i class="dropdown icon"></i>
					    <div class="menu">
					      <div class="item font-noto">닉네임</div>
					      <div class="item font-noto">주문번호</div>
					      <div class="item font-noto">이름</div>
					      <div class="item font-noto">전화번호</div>
					      <div class="item font-noto">이메일</div>
					    </div>
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