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
.row{
	margin: 0 auto;
}
.categoryBody{
	width: 1110px;
	margin: 0 auto;
	margin-top:20px;
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
	margin-top: 30px;
	float:left;
}
.cb2>h3{
	display:inline-block;
}
.cb3{
	font-family: inherit;
	margin-top: 70px;
	float:right;
}
.input{
	width:90px;
	height:29px;
	border-radius: 6px;
	font-family: inherit;
    border: 1px solid #999;
    appearance: none; 
    padding: 3px 3px;
}

.cateType{
	width:80px;
	height:100px;
	background:#ccc;
}
.cateContent{
    margin-top: 10px;
    display: inline-block;
    margin-left: 560px;
}
.sildercon{
    border: 1px solid #0f0;
    float: left;
    margin:10px; 
}

</style>

</head>
<body>
	<%@include file= "/views/common/cateheader1.jsp"%>
	
	 
	<div class="row">
		<div class="categoryBody">
			<div class="cb1" style="width:15%">
				<h1 style="font-size:30px;">디자인</h1>		
			</div>
			
			<div class="cb2" style="width:70%;"> 
				<h3 style="font-size:15px;"><a href="../views/common/mainheader.jsp">홈 ></a></h3>
				<h3 style="font-size:15px;"><a href="../views/serviceCategoryPage.jsp">디자인</a></h3>		
			</div>

			<div class="cb3" style="width:15%">
				<select class="input">
					<option value="recom">추천순</option>
					<option value="rank">랭킹순</option>
					<option value="new">신규등록순</option>
				</select>
			</div>
		</div>
	</div>
	
	<div class="cateType"></div>
	
	<div class="cateContent">
		 <div class="slider1 clearFix">
                <div class="sildercon">
                    <div style="width:205px; height: 300px; border: 1px solid #0f0; margin:-1px;"></div>
                </div>
                <div class="sildercon">
                    <div style="width:205px; height: 300px; border: 1px solid #0f0; margin:-1px;"></div>
                </div>
                <div class="sildercon">
                    <div style="width:205px; height: 300px; border: 1px solid #0f0; margin:-1px;"></div>
                </div>
                <div class="sildercon">
                    <div style="width:205px; height: 300px; border: 1px solid #0f0; margin:-1px;"></div>
                </div>
                

            </div>
	
	
	
	
	
	
	</div>
	
</body>
</html>