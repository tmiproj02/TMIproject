<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.1.1.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<title>판매관리</title>
<style>
	.font-noto{
		font-family: 'Noto Sans KR', sans-serif;
    	font-weight: 400;
	}
	.my-page-sell{
		border : 1px solid red;
		margin:0 auto;
	}
	.scontainer{
		border : 1px solid blue;
		width : 1024px;
		margin:0 auto;
	}
	.scontainer1{
		border : 1px solid black;
		padding-left : 15px;
		padding-right : 15px;
		margin:0 auto;
	}
	.scontainer2{
		border : 1px solid black;
		margin:0 auto;
	}
	.scontainer2>div{
		display:inline-block;
	}
	.width-25per{
		width:25%;
		border : 1px solid green;
	}
	.width-75per{
		width:75%;
		border : 1px solid yellow;
	}
	.user-profile-body{
		text-align : center;
	}
	.user-profile-box>li{
		border : 1px solid lightgreen;
		list-style : none;
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
			<div class="scontainer2">
				<div class="width-25per padding-15">
					<div class="user-profile-body">
						<img src="/semi/resources/images/myprofile.png" alt="" />
					</div>
					<ul class="user-profile-box">
						<li><div style="text-align : center">
							<div><a href="">회원닉네임</a></div>
							<label for="" class="seller-check">전문가 인증</label>
						</div></li>
						<li><div class="income-out">
							<div class="income-out-div">
								<div class="font-noto">출금가능 수익금</div>
							</div>
							<div class="font-noto won"><b>원</b></div>
						</div></li>
						<li><div class="income-out">
							<div class="income-out-div">
								<div class="font-noto">회원 보유캐시</div>
							</div>
							<div class="font-noto won"><b>원</b></div>
						</div></li>
					</ul>
				</div>
				<div class="width-75per">
				</div>
			</div>
		</div>
	</div>
</body>
</html>