<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cateheader2</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&display=swap" rel="stylesheet">
<style>
*{
    margin: 0;
    padding: 0;
}
body,html{
    min-width: 1200px;
}
header{
    font-family: 'Noto Sans KR', sans-serif;
    font-weight: 500;
    margin: 0 auto;
    width: 100%;
    height: 129px;
    border-bottom: 2px solid  #BDD4F2;
}
.logo{
    float: left !important;
    left:10px;
}
.logo img{
    margin-top: 3px;
    border: 0;
    vertical-align: middle;
}
.head{
    max-width: 1200px;
    margin: auto;
    line-height: 60px;
    height: 80px;
}
.container{
    width: 1200px;
    height: 80px;
    display: flex;
    align-items: center;
}
.paddinghead{
    padding-left: 10px;
    padding-right: 25px;
    
}
.left-head>div{
    padding: 10px;
    padding-bottom: 20px;
}
.left-head{
    width: 41.66667%;
    /* width: 490px; */
    height: 80px;
    display: flex;
    justify-content: flex-start;
    align-items: center;
    position: relative;
    min-height: 1px;
}
div.head_input{
    position: relative;
    width: 380px;
    height: 54px;
    float: left;
}
.search-input{
    font-family: 'Noto Sans KR', sans-serif;
    position: relative;
    margin-top: 10px;
    width: 350px;
    height: 20px;
    border-radius: 4px;
    background-color: #BDD4F2;
    font-size: 14px;
    text-align: left;
    padding-left: 20px;
    padding-top: 12px;
    padding-bottom: 12px;
    border: none;
    outline: none;
}

.search-btn{
    position: absolute;
    right: 30px;
    cursor: pointer;
    vertical-align: top;
    top: 33px;
}
.width-20px{
    width:20px !important;
}
.width-15px{
    width:15px !important;
}

.right-head{
    display: flex;
    justify-content: flex-end;
    align-items: center;
    width: 58.33333%;
    height: 80px;
}

.flex-center{
    display: flex;
    align-items: center;
    justify-content: flex-end;
}

.info{
    font-size: 14px;
    width: 303.766px;
    height: 61.75px;
}
.info div{
    display: inline-block;
}
div a{
    text-decoration: none;
    color: #333;
}
.padding-20px{
    padding: 11px;
}
.padding-15px{
    padding-left : 16px;
    padding-right: 16px;
}

.btn{
    font-size: 13px;
    padding: 6px 10px !important;
    background-color: #BDD4F2;
    border-color: #BDD4F2;
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

nav{
    font-size: 15px;
    max-width: 100%;
    height: 50px;
    margin: 0 auto;
    display: flex;
    justify-content: center;
}
.mymenubar{
    display: block;
    width: 1200px;
    margin-left: 15px;
    margin-right: 15px;
}
.mymenu{
    width: 1200px;
    height: 50px;
    position: relative;
    text-align: center;
}

.mymenu li{
    height: 50px;
    display: inline-block;
    padding-left: 15px;
    padding-right: 15px;
    position: relative;
    float:left;
}

.mymenu li div{

   border: 2px solid transparent;
   border-bottom: none;
    padding: 10px 16px;
    position: relative;
    top: 5px;
}

.dealmenu:hover{
   background : #fff;
   border: 2px solid #BDD4F2;
   border-bottom: none;
    padding: 10px 16px;
    position: relative;
    top: 5px;
    z-index : 999;
}

.mymenu li div a{
    font-size: 16px;
    font-weight: 500;
    color: #333;
}
.downmenu{
   width : 1200px;
   height : 165px;
   margin : 0 auto;
   z-index: 999;
}


.buymenu{
   border : 2px solid #BDD4F2;
   border-top : none;
   width : 115px;
   height : 160px;
   margin-left: 150px;
   float: left;
   display : none;
}

.buymenu ul{
   list-style : none;
}

.buymenu ul li{
   margin-left : 16px;
   margin-bottom : 12px;
   font-size : 15px;
   font-weight : 400;
}

.buymenu ul li div{
	padding-top : 3px;
}

.sellmenu{
   border : 2px solid #BDD4F2;
   border-top : none;
   width : 115px;
   height : 160px;
   overflow : hidden;
   margin-left : 275px;
   display : none;
}

.sellmenu ul{
   list-style : none;
}

.sellmenu ul li{
   margin-left : 16px;
   margin-bottom : 12px;
   font-size : 15px;
   font-weight : 400;
}

.sellmenu ul li div{
	padding-top : 3px;
}

</style>
</head>
<body>
<div id='wrap'>
        <header>
            <div class='head'>
                <div class="container">
                    <div class="left-head paddinghead">
                        <div class="logo">
                            <a href="/">
                                <img class="logoImg" src="/semi/resources/images/TMI1.png" width=80px>
                            </a>
                        </div>
                        <div class='head_input'>
                            <input type="text" name="keyword" maxlength="15" class="search-input" placeholder="어떤 서비스를 찾고계신가요?">
                            <div class="search-btn">
                                <img class="width-15px margin-right-10 cursor" src="/semi/resources/images/cancel-button2.png" style="display: none">
                                <img class="width-20px cursor" src="/semi/resources/images/search2.png" style="vertical-align: inherit">
                            </div>
                        </div>
                    </div>
                    <div class="right-head paddinghead">
                        <div class="info flex-center">
                            <div class="padding-20px"><a href="/">판매 시작하기</a></div>
                            <div class="padding-15px"><a href="/">로그인</a></div>
                            <div class="padding-15px"><a class="btn" href="/">무료 회원가입</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <nav>
                <div class="mymenubar">
                    <ul class="mymenu">
                        <li style="margin-left:10px"><div><a href="">나의정보</a></div></li>
                        <li><div class="dealmenu" id="buycate"><a href="">구매관리</a></div></li>
                        <li><div class="dealmenu" id="sellcate"><a href="">판매관리</a></div></li>
                        <li><div><a href="">메시지</a></div></li>
                        <li><div><a href="">계정설정</a></div></li>
                    </ul>
                </div>
            </nav>

               <div class="downmenu">
                  <div class="buymenu">
                     <ul class="ul-out">
                        <li style="margin-top : 5px"><div><a href="">구매관리</a></div></li>
                        <li><div><a href="">TMI캐시</a></div></li>
                        <li><div><a href="">캐시충전</a></div></li>
                        <li><div><a href="">쿠폰</a></div></li>
                     </ul>
                  </div>
                  <div class="sellmenu">
                     <ul class="ul-out">
                        <li style="margin-top : 5px"><div><a href="">판매관리</a></div></li>
                        <li><div><a href="">나의서비스</a></div></li>
                        <li><div><a href="">수익관리</a></div></li>
                        <li><div><a href="">광고등록</a></div></li>
                     </ul>
                  </div>
            </div>  

        </header>
    </div>
    
  	<script>
  		$("#buycate,.buymenu").mouseenter(function(){
  			$("#buycate").css({
  				'background' : '#fff',
	  		   'border': '2px solid #BDD4F2',
	  		   'border-bottom': 'none'
  			})
  			$(".buymenu").css({
  				'display' : 'block'
  			})
  		});
  		$("#buycate,.buymenu").mouseleave(function(){	
  			$("#buycate").css({
  				'background' : 'none',
	  		   'border': '2px solid transparent',
	  		   'border-bottom': 'none'
  			})
  			$(".buymenu").css({
  				'display' : 'none'
  			})
  		})
  		$("#sellcate,.sellmenu").mouseenter(function(){
  			$("#sellcate").css({
  				'background' : '#fff',
	  		   'border': '2px solid #BDD4F2',
	  		   'border-bottom': 'none'
  			})
  			$(".sellmenu").css({
  				'display' : 'block'
  			})
  		});
  		$("#sellcate,.sellmenu").mouseleave(function(){	
  			$("#sellcate").css({
  				'background' : 'none',
	  		   'border': '2px solid transparent',
	  		   'border-bottom': 'none'
  			})
  			$(".sellmenu").css({
  				'display' : 'none'
  			})
  		})
  	</script>
    
    
    
</body>
</html>