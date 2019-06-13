<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>cateheader1</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&display=swap" rel="stylesheet">
<style>
*{
    margin: 0;
    padding: 0;
}
body{
    min-width: 1200px;
}
div{
    display: block;
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
.navsize{
    display: block;
    width: 1200px;
    margin-left: 15px;
    margin-right: 15px;
}
.nav_ul{
    width: 1200px;
    height: 50px;
    position: relative;
    text-align: center;
    margin : 0 auto;
}

.nav_ul li{
    height: 50px;
    display: inline-block;
    padding-left: 30px;
    padding-right: 30px;
    position: relative;
}

.nav_ul li div{
    padding: 10px 16px;
    border: 2px solid transparent;
    border-bottom: none;
    position: relative;
    top: 4px;
}

.nav_ul li div a{
    font-size: 16px;
    font-weight: 500;
    color: #333;
}
.category-menu{
    width: 100%;
    max-width: 1200px;
    height: 200px;
    margin: 0 auto;
    border: 2px solid #BDD4F2;
    background: white;
    border-top: none;
    display: none;
    z-index: 2;
    position: relative;
}
.ul-out{
    height: 100%;
    display: block;
    text-align: center;
}
.ul-out>li{
    display: inline-block;
    text-align: center;
    width: 10%;
    height: 100%;
    overflow: hidden;
}

.ul-out li ol li{
    font-size: 14px;
    font-weight: 400;
    margin-top: 16px;
    margin-bottom: 16px;
}

.test{
    z-index: 1;
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
                <div class="navsize">
                    <ul class='nav_ul'>
                        <li><div><a href="">디자인</a></div></li>
                        <li><div><a href="">IT/프로그래밍</a></div></li>
                        <li><div><a href="">마케팅</a></div></li>
                        <li><div><a href="">콘텐츠 제작</a></div></li>
                        <li><div><a href="">번역/통역</a></div></li>
                        <li><div><a href="">문서/취업</a></div></li>
                        <li><div><a href="">기프트/커스텀</a></div></li>
                    </ul>
                </div>
            </nav>
            <div class="category-menu">
                <ul class="ul-out">
                    <li style="margin-right: 17px;">
                        <ol>
                            <li><a href="">로고디자인</a></li>
                            <li><a href="">의류디자인</a></li>
                            <li><a href="">간판디자인</a></li>
                            <li><a href="">일러스트</a></li>
                            <li><a href="">웹툰</a></li>
                        </ol>
                    </li>
                    <li style="margin-left: 26px; margin-right: 22px;">
                        <ol>
                            <li><a href="">웹사이트 개발</a></li>
                            <li><a href="">프로그램 개발</a></li>
                            <li><a href="">서버 및 기술지원</a></li>
                            <li><a href="">게임</a></li>
                            <li><a href="">모바일앱/웹</a></li>
                        </ol>
                    </li>
                    <li style="margin-left: 22px; margin-right: 22px;">
                        <ol>
                            <li><a href="">sns마켓팅</a></li>
                            <li><a href="">종합광고대행</a></li>
                            <li><a href="">블로그</a></li>
                            <li><a href="">마케팅 노하우</a></li>
                            <li><a href="">유튜브 크리에이터</a></li>
                        </ol>
                    </li>
                    <li style="margin-left: 13px; margin-right: 31px;">
                        <ol>
                            <li><a href="">영상</a></li>
                            <li><a href="">더빙/녹음</a></li>
                            <li><a href="">음악/사운드</a></li>
                            <li><a href="">엔터테이너</a></li>
                            <li><a href="">사진</a></li>
                        </ol>
                    </li>
                    <li style="margin-left: 16px; margin-right: 28px;">
                        <ol>
                            <li><a href="">번역</a></li>
                            <li><a href="">영상번역</a></li>
                            <li><a href="">통역</a></li>
                        </ol>
                    </li>
                    <li style="margin-left: 13px; margin-right: 31px;">
                        <ol>
                            <li><a href="">논문</a></li>
                            <li><a href="">타이핑</a></li>
                            <li><a href="">글작성/대본</a></li>
                            <li><a href="">면접/취업코딩</a></li>
                            <li><a href="">자소서/이력서</a></li>
                        </ol>
                    </li>
                    <li style="margin-left: 24px; margin-right: 24px;">
                        <ol>
                            <li><a href="">라이프</a></li>
                            <li><a href="">패션</a></li>
                            <li><a href="">푸드</a></li>
                        </ol>
                    </li>
                </ul>
            </div>
        </header>
    </div>
    <script src="/semi/resources/js/cateheader.js"></script>
</body>
</html>