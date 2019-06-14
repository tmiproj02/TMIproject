<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매관리</title>
<style>
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
	
	
	
	.sell{
		margin-top : 40px;
	}
</style>
</head>
<body>
	<%@ include file="../common/cateheader2.jsp" %>
	<div class="my-page-sell">
		<div class="scontainer">
			<div class="scontainer1">
				<div class = "sell">
					<h3>판매</h3>
				</div>
			</div>
			<div class="scontainer2">
				<div class="width-25per">
					<div class="user-profile-body">
						<img src="/semi/resources/images/myprofile" alt="" />
					</div>
					<ul>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
				<div class="width-75per">
				</div>
			</div>
		</div>
	</div>
</body>
</html>