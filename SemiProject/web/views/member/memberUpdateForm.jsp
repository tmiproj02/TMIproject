<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.model.vo.*" %>

<% Member m = (Member)session.getAttribute("member"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정 페이지</title>
<style>
	nav, section {
        float: left;
    }

</style>
<script src="/semi/resources/js/jquery-3.4.1.min.js"></script>
</head>
<body>
	<%@ include file="../common/myHeader.jsp" %>
	
	<nav style="background-color:gold">
    	<h1>계정 설정</h1>
    </nav>
	
	<section>
	<h3>기본 정보</h3>
	
	<form id="mUpdate" action="/semi/mUpdate.do" method="post">
		<table>
			
			<tr>
				<td>이메일 : </td>
				<td><%= m.getEmail() %></td>
				<td></td>
			</tr>
			
			<tr>
				<td>변경할 PWD : </td>
				<td><input type="password" name="userPwd" id="userPwd"/></td>
				<td></td>
			</tr>
			<tr>
				<td>변경할 PWD 확인 : </td>
				<td><input type="password" name="userPwd2" id="userPwd2"/></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="3" id="result"></td>
			</tr>
			<tr>
				<td>이름 : </td>
				<td><%= m.getUserName() %></td>
			</tr>
			
			<tr>
				<td>연락처 : </td>
				<td><input type="tel" name="phone" value="<%= m.getPhone()%>"/></td>
				<td></td>
			</tr>
		
			<tr>
				<td></td>
				<td colspan = "2">
					<input type="submit" value="회원 정보 수정"/>
					&nbsp; &nbsp;
					<input type="button" onclick="memberDel();" value="회원 탈퇴" />
				</td>
			</tr>
		</table>
	</form>
	
	<br><br>
	
	<a href="/semi/index.jsp">처음으로 돌아가기</a>
	
	<%@ include file="../common/footer.jsp" %>
	
	<script>
		
		// 일반적으로 script 작성 구간은 어디가 되든 큰 문제는 없으나
		// HTML과 CSS가 웹 문서에 로드되는 시점을 고려한다면
		// head 영역이나 body의 최하단에 script를 작성하여
		// 로드된 이후, 로드 시점 에 동작함으로써
		// 웹 문서 표현의 속도를 높이는 방식을 권장한다.
		
		$(function(){
			

			
			$('input:checkbox').each(function(){
				
				if($.inArray($(this).val(), array) > -1)
					$(this).prop('checked', true);

			});
			
			// 변경 비밀번호 일치 여부 확인하기
			$('#mUpdate').submit(function(event){
				
				// 비밀번호가 일치하지 않을 때
				if($('#userPwd').val() != $('#userPwd2').val())
					$('#result').text('비밀번호가 일치하지 않습니다.').show().fadeOut(1000);
				
				// 비밀번호를 입력하지 않았을 때
				else if ($('#userPwd').val() == "")
					$('#result').text('비밀번호를 입력해주세요~').show().fadeOut(1000);
				
				// 정상 입력 시
				else return;
				
				event.preventDefault();
			});
			
			
		});
		
		// '회원 탈퇴' 버튼을 누를 경우 mDelete.do로 이동시키기
		function memberDel(){
			
			location.href = "/semi/mDelete.do";
			
		}
	</script>
	</section>
</body>
</html>









