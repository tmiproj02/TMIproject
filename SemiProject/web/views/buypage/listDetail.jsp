<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="buy.buy.model.vo.* ,buy.comment.model.vo.*, java.util.*" %>

<% Board b = (Board)request.getAttribute("board"); 
ArrayList<BoardComment> clist = (ArrayList<BoardComment>)request.getAttribute("clist");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>

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

.detailsTab ul li{ 
	float: left;
	cursor: pointer;
	padding: 18px 14px; 
	border: solid 1px #ccc;
	background: #fff;
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

.pricebox{
	border: 1px solid #e6e6e6; 
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

.fixed {
    position: fixed;
    top: 0px;
      }

</style>

<script>
function fnMove(seq){
    var offset = $(".tabcontent" + seq).offset();
    var winH = $(".tabcontent"+ seq).height();
    $('html, body').animate({scrollTop : (offset.top - winH/3)}, 400); 
};


$( document ).ready( function() {
    var Offset = $( '.tab' ).offset();
    
    
    $( window ).scroll( function() {
      if ( $( document ).scrollTop() > Offset.top ) {
        $( '.tab' ).addClass( 'fixed' );
      }
      else {
        $( '.tab' ).removeClass( 'fixed' );
      }
    });
  });
</script>
</head>
<body>


<section class="detailbox container1 clearFix">
	<div class="detailbox1">
		
		<div class="img">
			<div class="imgbox" style="background:url('../../resources/images/detailimg.jpg');">
				
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

	 			<li onclick="fnMove('1')">
	 				
	 				<p>서비스설명</p>
	 			</li>
	 			<li onclick="fnMove('2')">
	 				
	 				<p>가격정보</p>
	 			</li>
	 			<li onclick="fnMove('3')">
	 				
	 				<p>수정 및 재진행</p>
	 			</li>
	 			<li onclick="fnMove('4')">
	 				
	 				<p>서비스 평가</p>
	 			</li>
 		</ul>
			<div class="tabcontent1" style="margin-bottom:1000px;">
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
	 		
	 		<div class="tabcontent2" style="margin-bottom:1000px;">
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
	 		<div class="tabcontent3" style="margin-bottom:1000px;">
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
	 		
	 		<div class="tabcontent4" style="margin-bottom:1000px;">
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
	      		<%-- <div id="replySelectArea">
      		<!-- 게시글의 댓글을 보여주는 부분 -->
      		<% if (clist != null){%>
      			<% for(BoardComment bco : clist){ %>
	      			<table id="replySelectTable">
	              <tr>
	                 <td rowspan="2"> </td>
	               <td><b><%= bco.getCwriter() %></b></td>
	               <td><%= bco.getCdate() %></td>
	               <td align="center">
	               <%if(m.getUserId().equals(bco.getCwriter())) { %>
	                  <input type="hidden" name="cno" value="<%=bco.getCno()%>"/>
	                       
	                  <button type="button" class="updateBtn" 
	                     onclick="updateReply(this);">수정하기</button>
	                     
	                  <button type="button" class="updateConfirm"
	                     onclick="updateConfirm(this);"
	                     style="display:none;" >수정완료</button> &nbsp;&nbsp;
	                     
	                  <button type="button" class="deleteBtn"
	                     onclick="deleteReply(this);">삭제하기</button>
	                     
	               <% } else if( bco.getClevel() < 3) { %>
	                  <input type="hidden" name="writer" value="<%=m.getUserId()%>"/>
	                  <input type="hidden" name="refcno" value="<%= bco.getCno() %>" />
	                  <input type="hidden" name="clevel" value="<%=bco.getClevel() %>" />
	                  <button type="button" class="insertBtn" 
	                      onclick="reComment(this);">댓글 달기</button>&nbsp;&nbsp;
	                      
	                  <button type="button" class="insertConfirm"
	                     onclick="reConfirm(this);"
	                     style="display:none;" >댓글 추가 완료</button> 
	                     
	               <% } else {%>
	                  <span> 마지막 레벨입니다.</span>
	               <% } %>
	               </td>
	            </tr>
	            <tr class="comment replyList<%=bco.getClevel()%>">
	               <td colspan="3" style="background : transparent;">
	               <textarea class="reply-content" cols="105" rows="3"
	                readonly="readonly"><%= bco.getCcontent() %></textarea>
	               </td>
	            </tr>
	         </table>
      		<% } } else { %>
      		 <p>현재 등록된 댓글이 없습니다.</p>
      		<%} %>
         </div>
         <--%>
	 		</div> 
		</div>
		
	
	</div>
	
	
	<div class="detailbox2">
		<div class="detailTit">
			<p>기업부설연구소/연구개발전담부서 인증 컨설팅해드립니다.</p>
			<p>10,000원 </p>
		</div>
		<!-- <div class="ui styled accordion" style="margin-top:30px;">
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
		</div> -->
		
		<div class="pricebox" style="border: 1px solid #e6e6e6;">
			<p>거래설명</p>
			<a href="buyPage.jsp" style="padding: 10px 100px;
			background: #bdd4f2;
			border-radius: 8px;">구매하기(가격)</a>
		</div>
		
		
	<div class="shildbox container2 clearFix" style="margin-top: 20px;">
		<img src="../../resources/images/shild.png" alt="" style="float: left; margin-left:10px; margin-top:10px;">
		<div class="buybtntext">
		<p>TMI는 안전한 거래 환경을 제공합니다.</p>
		<p>TMI를 통해 결제 진행 시 관련 정책에 의해 보호 받을 수 있습니다.</p>
		</div>

	</div>



	 <div class="sellerInfobox">
	 <div class="sellerpadding">
		 	<div class="selleridbox1">
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