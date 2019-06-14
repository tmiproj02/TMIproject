<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //import="java.util.*, com.kh.jsp.notice.model.vo.*" %>
<% //구매내역 리스트 가져오기//ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list"); %>
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
	

</style>
</head>
<body>
	<%@ include file="/views/common/cateheader2.jsp" %>

	<%@ include file="/views/common/buyNav.jsp" %>
	
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
								<p style="color:lightgray; font-size:30px">결제</p>
							</div>
							<div class="listcontent">
								<div class="header"><h2>서비스 구매</h2></div>
								<div class="meta">
									<span class="price"><i class="won sign icon"></i>9999999999999원</span>
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
								<p style="color:lightgray; font-size:30px;">결제</p>
							</div>
							<div class="listcontent">
								<div class="header"><h2>서비스 구매</h2></div>
								<div class="meta">
									<span class="price"><i class="won sign icon"></i>990000000원</span>
								</div>
								<div class="description">
									<p>여기는 구매 날짜</p>
									<p>여기는 판매글 제목(판매글로 링크를 걸어볼까.......)</p>
								</div>
							</div>
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

	
	

	<%@ include file="/views/common/footer.jsp" %>
</body>
</html>