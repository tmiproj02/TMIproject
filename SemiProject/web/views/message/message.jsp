<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="member.model.vo.ClientRequest" %>
<%@ page import="message.model.vo.PageInfo" %>
<%
	ArrayList<ClientRequest> requestList = (ArrayList<ClientRequest>)request.getAttribute("requestList"); 
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();    
%>   
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.1.1.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<link rel="icon" href="/semi/resources/images/pic.jpg"/>
<link rel="stylesheet" href="../dist/css/swiper.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>
<title>메세지</title>

<style>
*{
font-family: 'Noto Sans KR', sans-serif;
}
.section1{
	margin: 0 auto;
}
.section2{
	margin: 0 auto;
	width: 1170px;
	
}
.section3{
	margin:0 auto;
	margin-left:22px;
	margin-top : 50px;
}
.section4{
	overflow:hidden;
	margin:0 auto;
}
.section4>div{
 	display:inline-block;
}
.mp1{
	width:22%;
	margin:0 auto;
	float : left;
}
.mp2{
	width:78%;
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

.active{
	background:#E8F0F5;
}

.dbox>div{
display: inline-block;
}
.dbox>div>a{
font-size:16px;
font-family: 'Noto Sans KR', sans-serif;
}
.dbox>div>h4{
font-family: 'Noto Sans KR', sans-serif;
}
.selling-history{
    vertical-align: 1px;
    font-size: 11px;
    color: #878787;
    padding: 1px 6px;
    background-color: #ddd;
    border-radius: 500px !important;
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
.select{
		background-color: #BDD4F2;
		color : #000;
	}
</style>
</head>

<body>
<%@ include file="../common/cateheader2.jsp" %>

<div class="section1">
	<div class="section2">
	
		<div class="section3" style="font-family: 'Noto Sans KR', sans-serif;">
			<h2>메세지</h2>
		</div>
		
			<div class="section4">
				<div class="mp1">
					<div style="margin : 22px 0px 0px 22px;">
						<h3>구매 / 판매 메세지</h3>
						<a href="/semi/messageList"><h3>1:1 문의 답변</h3></a>
					</div>
				
						
				</div>
		 
				
			<div class="mp2">
				<h2 style="margin-left:5%;">1:1문의 답변</h2>
				<table class="ui blue table" style="width:85%; margin-left:5%;">
				  <thead>
				    <tr><th>No</th>
				    <th style="width:50%; margin-right: 5%;">제목</th>
				    <th>보낸이</th>
				  </tr>
				  </thead>
				  
				  <tbody>
				   	<%
				   	int num = 1;
				   	for(ClientRequest cr : requestList){
				   		if(cr.getReplyTitle()!=null){
				   		%>
				   	  <tr>
				   	  	<input type="hidden" value="<%=cr.getReplyContent()%>"/>
				   	  	<td><%=num %></td>	
				   	  	<td><span class="detailSpans" style="cursor:pointer;" onclick="replyDetail();"><%=cr.getReplyTitle()%></span></td>
				   	  	<td>관리자
				   	  			<!-- Modal -->
								<div class="ui modal" id="replyDetailModal<%=num%>">
								  <div class="header">제목 : <%=cr.getReplyTitle()%></div>
								  <div class="content">
								    <p><%=cr.getReplyContent()%></p>
								    
								  </div>
								</div>
				   	  	</td>
				   	  	
				   	  </tr>
					  <% } %>
				   	<% num++; } %>

				  </tbody>
				</table>

			<div class="pagingArea" align="center">
			<button onclick="location.href='<%= request.getContextPath() %>/messageList?currentPage=1'"><<</button>
			<%  if(currentPage <= 1){  %>
			<button disabled><</button>
			<%  }else{ %>
			<button onclick="location.href='<%= request.getContextPath() %>/messageList?currentPage=<%=currentPage - 1 %>'"><</button>
			<%  } %>
			
			<% for(int p = startPage; p <= endPage; p++){
					if(p == currentPage){	
			%>
				<button disabled><%= p %></button>
			<%      }else{ %>
				<button onclick="location.href='<%= request.getContextPath() %>/messageList?currentPage=<%= p %>'"><%= p %></button>
			<%      } %>
			<% } %>
				
			<%  if(currentPage >= maxPage){  %>
			<button disabled>></button>
			<%  }else{ %>
			<button onclick="location.href='<%= request.getContextPath() %>/messageList?currentPage=<%=currentPage + 1 %>'">></button>
			<%  } %>
			<button onclick="location.href='<%= request.getContextPath() %>/messageList?currentPage=<%= maxPage %>'">>></button>
			
		</div> 
			
				
			</div>
		
			
			
		</div>
	</div>
</div>

 <%@ include file="../common/footer.jsp" %>
</body>
<script>
	$('.detailSpans').each(function(){
		$(this).click(function(){
			var num = $(this).parent().parent().find('td').eq(0).text();
			var modalId = "#replyDetailModal"+num;
			$(modalId).modal('show');
		});
		
	});


</script>



</html>