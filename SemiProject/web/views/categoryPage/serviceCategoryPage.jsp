<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.1.1.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<title>Insert title here</title>
<style>
*{
    font-family: 'Noto Sans KR', sans-serif;
    margin: 0;
    padding: 0;
}

.categoryBody{
	width: 1110px;
	margin: 0 auto;
	margin-top:20px;
	overflow: hidden;
	
}
.categoryBody>div{
	display:inline-block;
}
.cb1{	
	margin-top: 30px; 
    float:left;
}
.cb2>h1{
	font-family: inherit;
}
.cb2{
	font-family: inherit;
	margin-top: 20px;
	
}
.cb2>h3{
	display:inline-block;
}
.cb3{
	font-family: inherit;
	margin-top: 50px;
	text-align:right;
	
}
.input{
	width:90px;
	height:25px;
	font-family: inherit;
	font-size: 12px;
    border: 1px solid #999;
   
    
}

.cateType{
	width:80px;
	height:100px;
	background:#ccc;
}
.cateContent{
    margin-top: 10px;
    display: inline-block;
    
}
.sildercon{
    border: 1px solid #0f0;
    float: left;
    margin:7px; 
}
.section{
	margin: 0 auto;
	 
}


</style>

</head>
<body>
	<%@include file= "/views/common/cateheader1.jsp"%>
	
	 
	
		<div class="categoryBody">
			<div class="cb1" style="width:15%" >
				<h1 style="font-size:30px;">디자인</h1>		
			</div>
			
			<div class="cb2" style="width:50%;"> 
				<h3 style="font-size:15px;"><a href="../views/common/mainheader.jsp">홈 ></a></h3>
				<h3 style="font-size:15px;"><a href="../views/serviceCategoryPage.jsp">디자인</a></h3>		
			</div>

			<div class="cb3" style="width:35%">
				<select class="input">
					<option value="recom">추천순</option>
					<option value="rank">랭킹순</option>
					<option value="new">신규등록순</option>
				</select>
			</div>
		</div>
	
	
	<!-- <div class="cateType"></div> -->
	
	<div class="section">
	<div class="cateContent">
		 <div class="slider1 clearFix">
                <div class="sildercon">
                    <div style="width:200px; height: 300px; border: 1px solid #0f0; margin:-1px;"></div>
                </div>
                <div class="sildercon">
                    <div style="width:200px; height: 300px; border: 1px solid #0f0; margin:-1px;"></div>
                </div>
                <div class="sildercon">
                    <div style="width:200px; height: 300px; border: 1px solid #0f0; margin:-1px;"></div>
                </div>
                <div class="sildercon">
                    <div style="width:200px; height: 300px; border: 1px solid #0f0; margin:-1px;"></div>
                </div>              
            </div>
            </div>
            
	
 <div class="ui vertical accordion menu" style="float:left; margin-left:350px;">
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
    <a class="active title">
      <i class="dropdown icon"></i>
      	<b>IT/프로그래밍</b>
    </a>
    <div class="active content">
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
    <a class="active title">
      <i class="dropdown icon"></i>
      	<b>마케팅</b>
    </a>
    <div class="active content">
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
    <a class="active title">
      <i class="dropdown icon"></i>
      	<b>콘텐츠제작</b>
    </a>
    <div class="active content">
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
    <a class="active title">
      <i class="dropdown icon"></i>
      	<b>번역/통역</b>
    </a>
    <div class="active content">
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
    <a class="active title">
      <i class="dropdown icon"></i>
      	<b>문서/취업</b>
    </a>
    <div class="active content">
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
    <a class="active title">
      <i class="dropdown icon"></i>
      	<b>기프트/커스텀</b>
    </a>
    <div class="active content">
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
	
	<%@include file= "/views/common/footer.jsp"%>
	
	
</body>
</html>