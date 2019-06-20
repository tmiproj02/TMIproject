<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="buy.buy.model.vo.* , java.util.*, member.model.vo.*" %>
<%
SellerBoard b = (SellerBoard)request.getAttribute("sellerboard");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

<style>
.clearFix::after {
	content: '';
	display: block;
	width: 100%;
	clear: both;
}

/* container 고정레이아웃 */
.container1 {
	width: 1200px;
	margin: 0 auto;
}

.paycontainer1{
	width: 700px;
	float: left;
}
.paycontainer2{
	width: 500px;
	float: left;
}
</style>
</head>
<body>
	<%@ include file="/views/common/cateheader1.jsp"%>
	
	<section class="container1 clearFix">
	<div class="paycontainer1">
		<div>
			<img src="/semi/resources/images/detailimg.jpg" alt="" />
		</div>
		<div>
			<p>결제가 완료되었습니다.</p>
			<div>
				<p>결제금액 1000원</p>
				<p>쿠폰 10,000원</p>
			</div>
			<p>주문 내역은 "우측상단 닉네임>구매>구매관리"에서 확인 가능합니다.<br>
				기타 문의사항이 있을 경우, 고객센터를 이용해 주세요.
			</p>
		</div>
	</div>
	
	<div class="paycontainer2">
		<p>주문 후 확인하세요 !</p>
		
		<div>
			<p>작업전 요청사항을 입려가세요.</p>
			
			<p>전문가님이 작업을 시작하실 수 있도록 요청되는 자료를 제공해주세요</p>
		</div>
		
		<div>
			<p>작업일을 확인하세요.</p>
			
			<p>전문가님의 작업물 발송을 확인하여 정확한 날짜에 작업물을 받아보세요.</p>
		</div>
		
		<div>
			<p>평가 해 주세요.</p>
			<p>작업물과 전문가에 대한 솔직한 의견은 다른 의뢰인들의 선택에 많은 도움이 됩니다.</p>
		</div>
		
		
		<div>
			<button>
				거래화면으로
			</button>		
		</div>
	</div>
	</section>
</body>
</html>









