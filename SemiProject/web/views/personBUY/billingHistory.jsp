<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //import="java.util.*, com.kh.jsp.notice.model.vo.*" %>
<% //구매내역 리스트 가져오기//ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list"); %>
<%@ page import="member.model.vo.*" %>
<% Member m = (Member)session.getAttribute("member"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TMI 캐시 내역</title>
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
	
	.pllist{
		column-rule-style: dashed;
	}
	
	.listcontent{
		padding-left:30px
	}
	
	.purchaseListArea{
		width : 800px;
		margin: 0 auto;
	}
	
	#nblist{
		letter-spacing : -2px;
		font-size : 13px;
	}
	
	.bhnoticebox{
		border : 1px solid silver;
		background-color : #dcdcdc;
	}
	
	.nb-info{
		padding-left : 3%;
		border : 1px solid tomato;
	}
	

</style>
</head>
<body>
	<%@ include file="/views/common/cateheader2.jsp" %>

	
	<section>
		<div class="container1">
        <h3>캐시 내역</h3>
		</div>
		<div class="container1 clearFix">

				<div class="purchaseListArea">
				
				<!-- 이 자리에 Arraylist로 반복문 넣어야 결제 내역이 목록화되어 나옴. -->
				
					<div class="ui items" style="border:1px solid lightgray; padding:10px;">
						<div class="item" >
							<div class="pllist">
								<p style="color:orange; font-size:30px">사용</p>
							</div>
							<div class="listcontent">
								<div class="header"><h2>서비스 구매</h2></div>
								<div class="meta">
									<span class="price"><i class="won sign icon"></i>99900원</span>
								</div>
								<div class="description">
									<p>여기는 구매 날짜</p>
									<p>여기는 판매글 제목(판매글로 링크를 걸어볼까.......)</p>
								</div>
							</div>
						</div>
					</div>
					
					<div class="ui items" style="border:1px solid lightgray; padding:10px;">
						<div class="item" >
							<div class="pllist">
								<p style="color:greenyellow; font-size:30px;">충전</p>
							</div>
							<div class="listcontent">
								<div class="header"><h2>캐시 충전</h2></div>
								<div class="meta">
									<span class="price"><i class="won sign icon"></i>990000000원</span>
								</div>
								<div class="description">
									<p>캐시 충전 날짜</p>
								</div>
							</div>
						</div>
					</div>


		<div class="bhnoticebox">
		<h4><i class="exclamation triangle icon"></i>꼭 확인해주세요</h4>
		<div class="nb-info">
		<ul>
			<li id="nblist">세금계산서는 거래 주체인 전문가가 의뢰인에게 발행합니다.</li>
			<li id="nblist">세금계산서는 사업자 인증 받은 기업전문가에게 요청하실 수 있습니다.</li>
			<li id="nblist">이벤트 쿠폰 사용 금액은 할인된 금액이기 때문에 세금계산서에 포함되지 않습니다.</li>
			<li id="nblist">거래명세서는 결제가 완료되었음을 증명하는 용도로만 활용 가능하며 세무상의 지출증빙 효력이 없습니다.</li>
			<li id="nblist">현금영수증은 개인의 소득공제용으로만 사용 가능하며, 결제 당시 지출 증빙용으로 선택하셨더라도 매입세액공제를 받으실 수 없습니다.</li>
		</ul>
		</div>
		</div>

				</div>

				
		<%-- 페이징 처리 --%>
		<%--
		<div class="pagingArea" align="center">
			<button onclick="location.href='<%= request.getContextPath() %>/selectList.bo?currentPage=1'"><<</button>
			<%  if(currentPage <= 1){  %>
			<button disabled><</button>
			<%  }else{ %>
			<button onclick="location.href='<%= request.getContextPath() %>/selectList.bo?currentPage=<%=currentPage - 1 %>'"><</button>
			<%  } %>
			
			<% for(int p = startPage; p <= endPage; p++){
					if(p == currentPage){	
			%>
				<button disabled><%= p %></button>
			<%      }else{ %>
				<button onclick="location.href='<%= request.getContextPath() %>/selectList.bo?currentPage=<%= p %>'"><%= p %></button>
			<%      } %>
			<% } %>
				
			<%  if(currentPage >= maxPage){  %>
			<button disabled>></button>
			<%  }else{ %>
			<button onclick="location.href='<%= request.getContextPath() %>/selectList.bo?currentPage=<%=currentPage + 1 %>'">></button>
			<%  } %>
			<button onclick="location.href='<%= request.getContextPath() %>/selectList.bo?currentPage=<%= maxPage %>'">>></button>
		</div> --%>
				
				
            </div>
           
            
            
            
            
		
            <br><br><br><br>
            <a href="/semi/index.jsp">홈으로 돌아가기</a>
    </section>

	<script>
		
	
	
	
	
	</script>
	
	

	<%@ include file="/views/common/footer.jsp" %>
</body>
</html>