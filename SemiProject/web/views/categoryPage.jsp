<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.1.1.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<title>디자인 카테고리 페이지</title>
<style>
*{
	font-family: 'Noto Sans KR', sans-serif;
}
.section1{
	margin:0 auto;
}
.section2{
	width : 1200px;
	margin:0 auto;
}
.sbody{
	width : 1200px;
	margin:0 auto;
	position: relative;
	z-index: 1;
	
}
.sbody>div{
	display:inline-block;
	float:left;
}
.cb1{
	margin-top: 50px; 
	padding-left:40px;
	padding-right:10px;
		
}
.cb2{
    margin-top: 40px; 
    padding: 0 5px;
}
.cb3{
	text-align:right;
	margin-top: 50px;
	z-index:0;
}

.scontent{
	margin:0 auto;
	background:transparent;
	
}
.left-menu{
	width:18%;
}
.post{
	margin:0 auto;
	padding: 0 15px;
	display:inline-block;
}
.posting{
	padding: 0 20px;
	margin-bottom: 20px;
}
.post-row{
position: relative;
z-index: 2;
}

.posting>div{
	display:inline-block;
	box-shadow: 5px 5px 10px 0 #E6E6E6;
	margin-right: 20px;
}
.paging {
	margin-top: 15px;
	text-align: center;
	font-size: 0;
}
.paging a,
.paging strong {
	display: inline-block;
	width: 20px;
	height: 18px;
	margin: 0 1px;
	border: 1px solid #dbdbdb;
	color: #767676;
	font-size: 11px;
	font-weight: bold;
	line-height: 20px;
	vertical-align: middle;
  text-decoration: none;
}
.paging a:hover,
.paging a:active,
.paging a:focus {
	border: 1px solid #4c8500;	
}
.paging strong {
	color: #fff;
	background: #4c8500;
	border: 1px solid #4c8500;
}
.paging .direction {
	background: url('http://leroro.net/images/ui/sp_btn_paging.gif') no-repeat;
}
.paging .direction.first {
	background-position: left top;
}
.paging .direction.prev {
	margin: 0 12px 0 1px;
	background-position: -20px 0;
}
.paging .direction.next {
	margin: 0 1px 0 12px;
	background-position: -40px 0;
}
.paging .direction.last {
	background-position: right top;
}
.paging .direction span {
	position: absolute;
	display: block;
	width: 20px;
	height: 18px;
	overflow: hidden;
	z-index: -1;
}


</style>

</head>
<body>
<%@include file= "/views/common/cateheader1.jsp"%>

<div class="section1">
	<div class="section2">
			<div class="sbody">
				<div class="cb1" style="width:18%" >
					<h1 style="font-size:30px;">디자인</h1>		
				</div>
			
				<div class="cb2" style="width:50%;"> 
					<h3 style="font-size:15px;display:inline-block;"><a href="../views/common/mainheader.jsp">홈 ></a></h3>
					<h3 style="font-size:15px;display:inline-block;"><a href="../views/serviceCategoryPage.jsp">디자인</a></h3>		
				</div>

				<div class="cb3" style="width:31%;padding:0 20px;">
					<div class="ui compact selection dropdown" style="width:110px; height:2px;margin-right:20px;">
						  <i class="dropdown icon"></i>
						  <div class="text">추천순</div>
						  <div class="menu transition hidden" >
						   	  <div class="item">추천순</div>
						      <div class="item">랭킹순</div>
						      <div class="item">신규등록순</div>
						  </div>
					</div>
						<script>
		            			$('.ui.dropdown').dropdown();
		        		</script>
				</div>
			</div>
			
			<div class="scontent">
				<div class="left-menu">
					<div class="accordion" style="padding:10px 30px;">
					<div class="ui vertical accordion menu" style="float:left; width:160px;font-family: 'Noto Sans KR', sans-serif;">
					  <div class="item">
					    <a class="active title">
					      <i class="dropdown icon"></i>
					      	<b>디자인</b>
					    </a>
					    <div class="active content">
					      <div class="ui form">
					        <div class="grouped fields">
					          <div class="field">
					            <div class="ui radio checkbox">
					              <a href="">로고디자인</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					               <a href="">의류디자인</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href=""> 간판디자인</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">일러스트</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">웹툰</a>
					            </div>
					          </div>
					        </div>
					      </div>
					    </div>
					  </div>
					 
					 <div class="item">
					    <a class="title">
					      <i class="dropdown icon"></i>
					      	<b>IT/프로그래밍</b>
					    </a>
					    <div class="content">
					      <div class="ui form">
					        <div class="grouped fields">
					          <div class="field">
					            <div class="ui radio checkbox">
					              <a href="">웹사이트 개발</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					               <a href="">프로그램 개발</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">서버 및 기술지원</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">게임</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">모바일앱/웹</a>
					            </div>
					          </div>
					        </div>
					      </div>
					    </div>
					  </div>
					  
					  <div class="item">
					    <a class="title">
					      <i class="dropdown icon"></i>
					      	<b>마케팅</b>
					    </a>
					    <div class="content">
					      <div class="ui form">
					        <div class="grouped fields">
					          <div class="field">
					            <div class="ui radio checkbox">
					              <a href="">sns마케팅</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					               <a href="">종합광고대행</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">블로그</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">마케팅 노하우</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">유튜브 크리에이터</a>
					            </div>
					          </div>
					        </div>
					      </div>
					    </div>
					  </div>
					  
					  <div class="item">
					    <a class="title">
					      <i class="dropdown icon"></i>
					      	<b>콘텐츠제작</b>
					    </a>
					    <div class="content">
					      <div class="ui form">
					        <div class="grouped fields">
					          <div class="field">
					            <div class="ui radio checkbox">
					              <a href="">영상</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					               <a href="">더빙/녹음</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">음악/사운드</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">엔터테이너</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">사진</a>
					            </div>
					          </div>
					        </div>
					      </div>
					    </div>
					  </div>
					  
					  <div class="item">
					    <a class="title">
					      <i class="dropdown icon"></i>
					      	<b>번역/통역</b>
					    </a>
					    <div class="content">
					      <div class="ui form">
					        <div class="grouped fields">
					          <div class="field">
					            <div class="ui radio checkbox">
					              <a href="">번역</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					               <a href="">영상번역</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">통역</a>
					            </div>
					          </div>
					        </div>
					      </div>
					    </div>
					  </div>
					  
					  <div class="item">
					    <a class="title">
					      <i class="dropdown icon"></i>
					      	<b>문서/취업</b>
					    </a>
					    <div class="content">
					      <div class="ui form">
					        <div class="grouped fields">
					          <div class="field">
					            <div class="ui radio checkbox">
					              <a href="">논문</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					               <a href="">타이핑</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">글작성/대본</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">면접/취업코딩</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">자소서/이력서</a>
					            </div>
					          </div>
					        </div>
					      </div>
					    </div>
					  </div>
					  
					  <div class="item">
					    <a class="title">
					      <i class="dropdown icon"></i>
					      	<b>기프트/커스텀</b>
					    </a>
					    <div class="content">
					      <div class="ui form">
					        <div class="grouped fields">
					          <div class="field">
					            <div class="ui radio checkbox">
					              <a href="">라이프</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					               <a href="">패션</a>
					            </div>
					          </div>
					          <div class="field">
					            <div class="ui radio checkbox">
					            <a href="">푸드</a>
					            </div>
					          </div>
					        </div>
					      </div>
					    </div>
					  </div>
					 </div>						
						  <script>
						  $('.ui.accordion')
						  .accordion();
						  </script>
				</div>
				</div>
				
				<div class="post">
					<div class="post-row" style="z-index:-1">
						<div class="posting">
						 <div style="width:210px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header">Kristy</a>
							    <div class="meta">
							      <span class="date">Joined in 2013</span>
							    </div>
							    <div class="description">
							      Kristy is an art director living in New York.
							    </div>
							  </div>
							  <div class="extra content">
							    <a>
							      <i class="ui" style="height:33px;"></i>
							      <div class="ui heart rating" data-rating="1" data-max-rating="1"></div>
							      <div class="ui star rating" data-rating="3" style="float:right;"></div>
							    </a>
							  </div>
							</div>
							<script>
							$('.special.cards .image').dimmer({
								  on: 'hover'
								});
							$('.ui.rating')
							  .rating({
							    initialRating: 3,
							    maxRating: 5
							  })
							;
							</script>
						 	
						 </div>
						 
						 <div style="width:210px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header">Kristy</a>
							    <div class="meta">
							      <span class="date">Joined in 2013</span>
							    </div>
							    <div class="description">
							      Kristy is an art director living in New York.
							    </div>
							  </div>
							  <div class="extra content">
							    <a>
							      <i class="ui" style="height:33px;"></i>
							      <div class="ui heart rating" data-rating="1" data-max-rating="1"></div>
							      <div class="ui star rating" data-rating="3" style="float:right;"></div>
							    </a>
							  </div>
							</div>
							<script>
							$('.special.cards .image').dimmer({
								  on: 'hover'
								});
							$('.ui.rating')
							  .rating({
							    initialRating: 3,
							    maxRating: 5
							  })
							;
							</script>
						 	
						 </div>
						 
						 <div style="width:210px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header">Kristy</a>
							    <div class="meta">
							      <span class="date">Joined in 2013</span>
							    </div>
							    <div class="description">
							      Kristy is an art director living in New York.
							    </div>
							  </div>
							  <div class="extra content">
							    <a>
							      <i class="ui" style="height:33px;"></i>
							      <div class="ui heart rating" data-rating="1" data-max-rating="1"></div>
							      <div class="ui star rating" data-rating="3" style="float:right;"></div>
							    </a>
							  </div>
							</div>
							<script>
							$('.special.cards .image').dimmer({
								  on: 'hover'
								});
							$('.ui.rating')
							  .rating({
							    initialRating: 3,
							    maxRating: 5
							  })
							;
							</script>
						 	
						 </div>
						 
						 
					 	  <div class="posting1">
					 	 	<div style="width:210px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header">Kristy</a>
							    <div class="meta">
							      <span class="date">Joined in 2013</span>
							    </div>
							    <div class="description">
							      Kristy is an art director living in New York.
							    </div>
							  </div>
							  <div class="extra content">
							    <a>
							      <i class="ui" style="height:33px;"></i>
							      <div class="ui heart rating" data-rating="1" data-max-rating="1"></div>
							      <div class="ui star rating" data-rating="3" style="float:right;"></div>
							    </a>
							  </div>
							</div>
							<script>
							$('.special.cards .image').dimmer({
								  on: 'hover'
								});
							$('.ui.rating')
							  .rating({
							    initialRating: 3,
							    maxRating: 5
							  })
							;
							</script>
						 	
						 </div>
							 </div>
						</div>
						
					</div>
					
					<div class="post-row">
					 	<div class="posting">
						 <div style="width:210px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header">Kristy</a>
							    <div class="meta">
							      <span class="date">Joined in 2013</span>
							    </div>
							    <div class="description">
							      Kristy is an art director living in New York.
							    </div>
							  </div>
							  <div class="extra content">
							    <a>
							      <i class="ui" style="height:33px;"></i>
							      <div class="ui heart rating" data-rating="1" data-max-rating="1"></div>
							      <div class="ui star rating" data-rating="3" style="float:right;"></div>
							    </a>
							  </div>
							</div>
							<script>
							$('.special.cards .image').dimmer({
								  on: 'hover'
								});
							$('.ui.rating')
							  .rating({
							    initialRating: 3,
							    maxRating: 5
							  })
							;
							</script>
						 	
						 </div>
						 
						 <div style="width:210px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header">Kristy</a>
							    <div class="meta">
							      <span class="date">Joined in 2013</span>
							    </div>
							    <div class="description">
							      Kristy is an art director living in New York.
							    </div>
							  </div>
							  <div class="extra content">
							    <a>
							      <i class="ui" style="height:33px;"></i>
							      <div class="ui heart rating" data-rating="1" data-max-rating="1"></div>
							      <div class="ui star rating" data-rating="3" style="float:right;"></div>
							    </a>
							  </div>
							</div>
							<script>
							$('.special.cards .image').dimmer({
								  on: 'hover'
								});
							$('.ui.rating')
							  .rating({
							    initialRating: 3,
							    maxRating: 5
							  })
							;
							</script>
						 	
						 </div>
						 
						 <div style="width:210px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header">Kristy</a>
							    <div class="meta">
							      <span class="date">Joined in 2013</span>
							    </div>
							    <div class="description">
							      Kristy is an art director living in New York.
							    </div>
							  </div>
							  <div class="extra content">
							    <a>
							      <i class="ui" style="height:33px;"></i>
							      <div class="ui heart rating" data-rating="1" data-max-rating="1"></div>
							      <div class="ui star rating" data-rating="3" style="float:right;"></div>
							    </a>
							  </div>
							</div>
							<script>
							$('.special.cards .image').dimmer({
								  on: 'hover'
								});
							$('.ui.rating')
							  .rating({
							    initialRating: 3,
							    maxRating: 5
							  })
							;
							</script>
						 	
						 </div>
						 
						 
					 	  <div class="posting1">
					 	 	<div style="width:210px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header">Kristy</a>
							    <div class="meta">
							      <span class="date">Joined in 2013</span>
							    </div>
							    <div class="description">
							      Kristy is an art director living in New York.
							    </div>
							  </div>
							  <div class="extra content">
							    <a>
							      <i class="ui" style="height:33px;"></i>
							      <div class="ui heart rating" data-rating="1" data-max-rating="1"></div>
							      <div class="ui star rating" data-rating="3" style="float:right;"></div>
							    </a>
							  </div>
							</div>
							<script>
							$('.special.cards .image').dimmer({
								  on: 'hover'
								});
							$('.ui.rating')
							  .rating({
							    initialRating: 3,
							    maxRating: 5
							  })
							;
							</script>
						 	
						 </div>
							 </div>
						</div>
					</div>
					
					<div class="post-row">
						<div class="posting">
						 <div style="width:210px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header">Kristy</a>
							    <div class="meta">
							      <span class="date">Joined in 2013</span>
							    </div>
							    <div class="description">
							      Kristy is an art director living in New York.
							    </div>
							  </div>
							  <div class="extra content">
							    <a>
							      <i class="ui" style="height:33px;"></i>
							      <div class="ui heart rating" data-rating="1" data-max-rating="1"></div>
							      <div class="ui star rating" data-rating="3" style="float:right;"></div>
							    </a>
							  </div>
							</div>
							<script>
							$('.special.cards .image').dimmer({
								  on: 'hover'
								});
							$('.ui.rating')
							  .rating({
							    initialRating: 3,
							    maxRating: 5
							  })
							;
							</script>
						 	
						 </div>
						 
						 <div style="width:210px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header">Kristy</a>
							    <div class="meta">
							      <span class="date">Joined in 2013</span>
							    </div>
							    <div class="description">
							      Kristy is an art director living in New York.
							    </div>
							  </div>
							  <div class="extra content">
							    <a>
							      <i class="ui" style="height:33px;"></i>
							      <div class="ui heart rating" data-rating="1" data-max-rating="1"></div>
							      <div class="ui star rating" data-rating="3" style="float:right;"></div>
							    </a>
							  </div>
							</div>
							<script>
							$('.special.cards .image').dimmer({
								  on: 'hover'
								});
							$('.ui.rating')
							  .rating({
							    initialRating: 3,
							    maxRating: 5
							  })
							;
							</script>
						 	
						 </div>
						 
						 <div style="width:210px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header">Kristy</a>
							    <div class="meta">
							      <span class="date">Joined in 2013</span>
							    </div>
							    <div class="description">
							      Kristy is an art director living in New York.
							    </div>
							  </div>
							  <div class="extra content">
							    <a>
							      <i class="ui" style="height:33px;"></i>
							      <div class="ui heart rating" data-rating="1" data-max-rating="1"></div>
							      <div class="ui star rating" data-rating="3" style="float:right;"></div>
							    </a>
							  </div>
							</div>
							<script>
							$('.special.cards .image').dimmer({
								  on: 'hover'
								});
							$('.ui.rating')
							  .rating({
							    initialRating: 3,
							    maxRating: 5
							  })
							;
							</script>
						 	
						 </div>
						 
						 
					 	  <div class="posting1">
					 	 	<div style="width:210px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header">Kristy</a>
							    <div class="meta">
							      <span class="date">Joined in 2013</span>
							    </div>
							    <div class="description">
							      Kristy is an art director living in New York.
							    </div>
							  </div>
							  <div class="extra content">
							    <a>
							      <i class="ui" style="height:33px;"></i>
							      <div class="ui heart rating" data-rating="1" data-max-rating="1"></div>
							      <div class="ui star rating" data-rating="3" style="float:right;"></div>
							    </a>
							  </div>
							</div>
							<script>
							$('.special.cards .image').dimmer({
								  on: 'hover'
								});
							$('.ui.rating')
							  .rating({
							    initialRating: 3,
							    maxRating: 5
							  })
							;
							</script>
						 	
						 </div>
							 </div>
						</div>
					</div>
				</div>
				
				<div class="paging">
	<a href="#" class="direction fisrt"><span>처음</span></a>
	<a href="#" class="direction prev"><span>이전</span></a>
	<a href="#">1</a>
	<a href="#">2</a>
	<a href="#">3</a>
	<a href="#">4</a>
	<strong>5</strong>
	<a href="#">6</a>
	<a href="#">7</a>
	<a href="#">8</a>
	<a href="#">9</a>
	<a href="#" class="direction next"><span>다음</span></a>
	<a href="#" class="direction last"><span>끝</span></a>
</div><!-- //paging -->
			</div>			
		</div>
	</div>
		


<%@include file= "/views/common/footer.jsp"%>
</body>
</html>