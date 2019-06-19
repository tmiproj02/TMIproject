<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.1.1.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<title>메인페이지</title>
<style>
*{
    font-family: 'Noto Sans KR', sans-serif;
    margin: 0;
    padding: 0;
   
}

header{
    margin: 0 auto;
    background-image: url('/semi/resources/images/night-sky.jpg');
    background-position:center top ;
    background-attachment: scroll;
    /* background-repeat:no-repeat;  */
    min-width : 1200px;
}
.clearFix::after{
    content: '';
    clear: both;
    display: block;
}

.container1{
    width: 1200px;
    height: 538px;
    margin: 0 auto;
}
.container{
    width: 1200px;
    margin: 0 auto;
}
.header{
    width: 100%;
    height: 115px;
}
.mainTitle h1{
    font-family: 'Noto Sans KR', sans-serif;
    color: white;
}
.info div{
    display: inline-block;
}
div a{
    text-decoration: none;
    color: #333;
}
.flex-left{
    width: 40%;
    /* width: 490px; */
    height: 115px;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    position: relative;
    min-height: 1px;
    float: left;
}
.flex-right{
    display: flex;
    justify-content: flex-end;
    align-items: center;
    width: 60%;
    height: 115px;
    float: right;
    
}
.flex-right div{
    font-size: 13px;
    margin: 10px;
    color: white;
}
.flex-right div a{
    font-size: 13px;
    color: white;
}

.joinBtn{
    font-size: 13px;
    padding: 6px 10px !important;
    background-color: #f1c40f;
    border-color: #f1c40f;
    margin-bottom: 0;
    text-align: center;
    vertical-align: middle;
    touch-action: manipulation;
    background-image: none;
    border: 1px solid transparent;
    white-space: nowrap;
    user-select: none;
    border-radius: 4px !important;

}
.search{
    margin: 0 auto;
    text-align: center;
}
.search-input{
   
    position: relative;
    margin-top: 40px;
    width: 570px;
    height:60px;
    border-radius: 10px;
    background-color:whitesmoke;
    font-size: 15px;
    text-align: left;
    border: none;
    outline: none;
    padding-left: 30px; 
   
}
.search-btn{
    margin-left:510px; 
    margin-top: -45px;
    cursor: pointer;
}
.width-30px{
    width:30px !important;
    position: relative;
}
.category{
    width: 1200px;
    height: 130px;
    background-color: white;
    border-radius: 800px;
    margin: 0 auto;
    margin-top: 210px;
    display: inline-block;
    text-align: center;
}
.category ul{
    display: inline-block;
    list-style: none;
    
}
.category ul li{
    
    margin-top: 30px;
    margin-left: 40px;
    margin-right: 40px;
}
.category ul li a img{
    width: 30px;
}

.indexTitle{
    font-size: 16px;
    margin-top: 60px;
    color: #333;
}
.indexTitle1{
    font-size: 16px;
    margin-top: 100px;
    color: #rgba(51, 51, 51, 0.801);

}
.indexTitle1 p{
    font-size: 15px;
    margin-top: 2px;
    margin-bottom:-5px;
    color: #rgba(51, 51, 51, 0.801);

}
.slider1{
    /* border: 1px solid #f00; */
    margin-top: 10px;
    display: inline-block;
}

.sildercon{
    /* border: 1px solid #0f0; */
    float: left;
    margin-right: 20px; 
}
.sildercon1{
    float: left;
    margin:0;
}
.rank{
    float: left;
    background: #BDD4F2;
    margin-top: 15px;
    margin-right: 20px; 
    border-radius: 10px;
    width:384px;
     /* height: 350px; */
     /* border: 1px solid #ccc; */
    
}
.scontent2:nth-child(6){
    border: none;
}
.rank1{
    float: left;
    background: #BDD4F2;
    margin-top: 15px;
    border-radius: 10px;
    width:384px;
     /* height: 350px; */
     /* border: 1px solid #ccc; */
    
}
.scontent1{
	padding-top:14px;
}
.scontent1 p{
    text-align: center;
    font-size: 18px;
    margin-top: 10px;  
    color: #333;  
}
.first{
    margin: 15px 15px;
    background: rgba(255, 255, 255, 0.733);
    border-radius: 10px;
}

.firstimg{
    float: left;
    margin-left: 10px;
}
.firsttext{
    float: left;
    text-align: center;
    margin: 10px;
    margin-left: 70px;
    margin-right: 70px;
}

.scontent2{
    background: #fff;
    border-bottom: 1px solid #ccc;
    width: 100%;
    padding: 11px 0;
    /* height:47px; */
    margin: 0 auto;
    
}
.scontent2 p{
    display: inline-block;
    padding-left: 50px;
    padding-right: 30px;
    /* margin-top: 10px; */
}

footer{
    margin-top: 50px;
    background: #2a385b;
    border-top: 1px solid #e6e6e6; 
}
.footer{
    text-align: center;
    
}
.footer p{
    padding-top: 10px;
    font-size: 12px;
    color: rgba(255, 255, 255, 0.774);
}
.footer p:nth-child(3){
    padding: 10px 0;
    font-size: 12px;
    color: #ccc;
}
</style>
</head>

<body>

    <div class="wrap">
        
        <header>
        
            <div class="container1">
                
                <div class="header">
                    <div class="flex-left">
                        <a href="../common/mainheader.jsp">
                            <img src="/semi/resources/images/tmi.png" width="110px">
                        </a>
                    </div>
                   <div class="flex-right">
                            <div class="item1"><a href="/">판매 시작하기</a></div>
                            <div class="item2"><a href="/">로그인</a></div>
                            <div class="item3"><a class="joinBtn" href="../views/memberJoin.jsp" style="color: black">무료 회원가입</a></div>
                    </div>
                </div>

                <div class="mainTitle">
                    <h1 style="text-align: center; font-size: 40px; 
                    letter-spacing: -0.7px">Talent Makes Income</h1>
                </div>

                <div class="search">
                    <input type="hidden" name="type" value="gigs">
                    <input type="text" name="find" maxlength="15" class="search-input" placeholder="원하는 서비스를 검색하세요!">
                    <div class="search-btn">
                        <img class="width-30px" src="/semi/resources/images/searching.png">
                    </div>
                </div>

                <div class="category">
                    <ul>
                        <li><a href="/semi/views/designCategoryPage.jsp">
                            <img src="/semi/resources/images/edit.png"> <br>
                            <span>디자인</span>
                        </a></li>
                    </ul>
                
                    <ul>
                        <li><a href="/semi/views/itCategoryPage.jsp">
                            <img src="/semi/resources/images/television.png"><br>
                            <a href="">IT/프로그래밍</a>
                        </a></li>
                    </ul>

                    <ul>
                        <li><a href="/semi/views/marketingCategoryPage.jsp">
                            <img src="/semi/resources/images/bar-chart.png"><br>
                            <a href="">마케팅</a>
                        </a></li>
                    </ul>

                    <ul>
                        <li><a href="/semi/views/contentCategoryPage.jsp">
                            <img src="/semi/resources/images/play-button.png"><br>
                            <a href="">콘텐츠 제작</a>
                        </a></li>
                    </ul>

                    <ul>
                        <li><a href="/semi/views/transCategoryPage.jsp">
                            <img src="/semi/resources/images/microphone.png"><br>
                            <a href="">번역/통역</a>
                        </a></li>
                    </ul>

                    <ul>
                        <li><a href="/semi/views/textCategoryPage.jsp">
                            <img src="/semi/resources/images/file.png"><br>
                            <a href="">문서/취업</a>
                        </a></li>
                    </ul>

                    <ul>
                        <li><a href="/semi/views/giftCategoryPage.jsp">
                            <img src="/semi/resources/images/gift.png"><br>
                            <a href="">기프트/커스텀</a>
                        </a></li>
                    </ul>
                </div>
                
            </div>
            
        </header>
    </div>

    <section>
        	<%@include file= "/views/common/faq.jsp"%>
 		   
        <div class="container">
            
            <div class="indexTitle">
                <p><b>디자인 카테고리</b>에서 인기있어요!</p> 
            </div>

            <div class="slider1 clearFix">
                <div class="sildercon">
                    <div style="width:224px; height: 300px;  margin:-1px;">
                    	
                    	<div style="width:224px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header1">Kristy</a>
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
                <div class="sildercon">
                    <div style="width:224px; height: 300px; margin:-1px;">
                    	<div style="width:224px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header1">Kristy</a>
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
                <div class="sildercon">
                    <div style="width:224px; height: 300px; margin:-1px;">
                    	<div style="width:224px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header1">Kristy</a>
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
                <div class="sildercon">
                    <div style="width:223px; height: 300px; margin:-1px;">
                    	<div style="width:224px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header1">Kristy</a>
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
                <div class="sildercon1">
                    <div style="width:223px; height: 300px; margin:-1px;">
                    	<div style="width:224px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header1">Kristy</a>
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
        </section>
         <section>
        <div class="container">
            
            <div class="indexTitle">
                 <p><b>IT/프로그래밍 카테고리</b>에서 인기있어요!</p> 
            </div>

            <div class="slider1 clearFix">
                <div class="sildercon">
                    <div style="width:224px; height: 300px;  margin:-1px;">
                    	
                    	<div style="width:224px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header1">Kristy</a>
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
                <div class="sildercon">
                    <div style="width:224px; height: 300px; margin:-1px;">
                    	<div style="width:224px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header1">Kristy</a>
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
                <div class="sildercon">
                    <div style="width:224px; height: 300px; margin:-1px;">
                    	<div style="width:224px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header1">Kristy</a>
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
                <div class="sildercon">
                    <div style="width:223px; height: 300px; margin:-1px;">
                    	<div style="width:224px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header1">Kristy</a>
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
                <div class="sildercon1">
                    <div style="width:223px; height: 300px; margin:-1px;">
                    	<div style="width:224px; ">
						 	
						 	<div class="ui card" style="margin:0;">
							  <div class="image" style="height:170px;">
							    <img src="/semi/resources/images/night-sky.jpg" style="height:170px;">
							  </div>
							  <div class="content" style="height:120px;">
							    <a class="header1">Kristy</a>
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
        </section>
        <section>
            <div class="container">
                <div class="indexTitle1">
                    <b>TOP 카테고리 전문가 랭킹</b> 
                    <p>TMI에서 가장 많이 판매한 인기 전문가 랭킹 입니다.</p> 
                </div>
            

            <div class="slider1 clearFix">
                    <div class="rank">                
                        <div class="sheader2">
                        <div class="scontent1">
                            <p><b>웹사이트 개발</b></p>
                        </div>
 
                        <div class="first clearFix">
                            <div class="firstimg">
                                <img src="/semi/resources/images/medal.png" style="width:70px; height:90px;">
                            </div>
                            <div class="firsttext">
                                <p>총 판매 금액</p>
                                <p>20000원</p>
                                <p>아이디</p>
                            </div>
                        </div>
                        
                            <div class="scontent2">    
                                <p>2위</p>
                                <p>1000원</p>
                                <p>아이디</p>                            
                            </div>

                            <div class="scontent2">                            
                                <p>3위</p>
                                <p>1000원</p>
                                <p>아이디</p>                            
                            </div>

                            <div class="scontent2">                            
                                <p>4위</p>
                                <p>1000원</p>
                                <p>아이디</p>                        
                            </div>

                            <div class="scontent2">
                                <p>5위</p>
                                <p>1000원</p>
                                <p>아이디</p>
                            </div>
                            
                            </div>
                        
                        </div>                                
                    
                    <div class="rank">
                           <div class="sheader2">
                        <div class="scontent1">
                            <p><b>자소서/이력서</b></p>
                        </div>
 
                        <div class="first clearFix">
                            <div class="firstimg">
                                    <img src="/semi/resources/images/medal.png" style="width:70px; height:90px;">
                            </div>
                            <div class="firsttext">
                                <p>총 판매 금액</p>
                                <p>20000원</p>
                                <p>아이디</p>
                            </div>
                        </div>
                        
                            <div class="scontent2">    
                                <p>2위</p>
                                <p>1000원</p>
                                <p>아이디</p>                            
                            </div>

                            <div class="scontent2">                            
                                <p>3위</p>
                                <p>1000원</p>
                                <p>아이디</p>                            
                            </div>

                            <div class="scontent2">                            
                                <p>4위</p>
                                <p>1000원</p>
                                <p>아이디</p>                        
                            </div>

                            <div class="scontent2">
                                <p>5위</p>
                                <p>1000원</p>
                                <p>아이디</p>
                            </div>
                            
                            </div>
                        </div>

                        <div class="rank1">
                            <div class="sheader2">
                                <div class="scontent1">
                                    <p><b>푸드</b></p>
                                </div>
            
                                <div class="first clearFix">
                                    <div class="firstimg">
                                            <img src="/semi/resources/images/medal.png" style="width:70px; height:90px;">
                                    </div>
                                    <div class="firsttext">
                                        <p>총 판매 금액</p>
                                        <p>20000원</p>
                                        <p>아이디</p>
                                    </div>
                                </div>
                                
                                    <div class="scontent2">    
                                        <p>2위</p>
                                        <p>1000원</p>
                                        <p>아이디</p>                            
                                    </div>
        
                                    <div class="scontent2">                            
                                        <p>3위</p>
                                        <p>1000원</p>
                                        <p>아이디</p>                            
                                    </div>
        
                                    <div class="scontent2">                            
                                        <p>4위</p>
                                        <p>1000원</p>
                                        <p>아이디</p>                        
                                    </div>
        
                                    <div class="scontent2">
                                        <p>5위</p>
                                        <p>1000원</p>
                                        <p>아이디</p>
                                    </div>
                         </div>

                </div>
            </div>
        </section>

        <footer>
            <div class="footer container">
                <p>TMI는 통신판매중개자 이며 통신판매의 당사자가 아닙니다.</p>
                <p>따라서 개별 판매자가 등록하여 판매한 모든 상품에 대한 거래정보 및 거래에 대한 책임은 각 판매자가 부담하고, 이에 대하여 TMI는 일체 책임지지 않습니다.</p>
                <p>Copyright © 2019 TMI Inc. All rights reserved.</p>
            </div>
        </footer>
        
    	
</body>
</html>