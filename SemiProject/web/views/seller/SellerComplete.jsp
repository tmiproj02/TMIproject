<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>가이드 텍스트</title>
	<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

	<style type="text/css">
		*{
			font-family:'malgun gothic';
		}

		#content.cols-d { width: 583px; min-width: 583px; }

		.form-f { position: relative; margin: 0; padding: 0; color: #666; }		
		.form-f p { width: 100%; margin: 0 0 13px; font-size: 1.3em; text-align:center;margin-top:20px;}
		.form-f p:after { content: ""; display: block; overflow: hidden; clear: both; height: 0; }	
		.form-f textarea {
			 position: relative; 
			 width: 570px; height: 118px; min-height: 118px; 
			 padding: 3px 3px 3px 6px; 
			 border: 1px solid #ececec; 
			 border-top-color: #e1e1e1; 
			 border-left-color: #e1e1e1; 
			 background: #ececec; 
			 border-radius: 3px; 
			-moz-border-radius: 3px; 
			-webkit-border-radius: 3px; 
		}		
		.scheme-g { 
			margin: 26px 0 8px; 
			padding: 0px; 
			font-size: 1.2em; 
			font-weight: 100; 
		}		
		.button_big { 
			float:right;
			border: 0; border-radius: 3px; 
			cursor: pointer; display: inline-block; 
			font-size: 12px; font-weight: bold; 
			line-height: 24px; 
			margin-left: 5px; 
			padding: 8px 16px; 
			text-decoration: none; color:#fff; 
			background:#0080ff; 
			text-shadow: 1px 1px 1px #0066cc; 
			-webkit-transition: all 0.2s ease-out; }
	</style>
	<script type="text/javascript">
		$(document).ready(function(){
	
			$("#nextBtn").click(function(){	
				if($("#check_1").is(":checked") == false){
					alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
					return;
				}else if($("#check_2").is(":checked") == false){
					alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다..");
					return;
				}else if($("#check_3").is(":checked") == false){
					alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다...");
					return;
				}else{
					$("#terms_form").submit();
				}
			});	
		});
	</script>

</head>
<body>
	

<article id="content" class="cols-d">
	<div>
		<h1>이용약관</h1>
		<form id="terms_form" class="form-f" action="http://javaking75.blog.me">
			<h4 class="scheme-g">●이용약관1</h4>
			<textarea style="font-size:1em;">내용입니다.
			</textarea>
			
			<p>
				<input type="checkbox" id="check_3"  name="" /> 위의 약관에 동의 합니다.<br />
				
				<input type="button" id="nextBtn"  class="button_big" style="padding:0 10px 10px 10px;height:24px;" value="다음단계로"/>
			</p>
		</form>
	</div>	
</article>

</body>
</html>