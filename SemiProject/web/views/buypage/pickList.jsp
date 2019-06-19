<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>


<link rel="stylesheet" href="../resources/css/listDetail.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&display=swap" rel="stylesheet">
<style>

.container{
	width: 1200px;
	margin: 0 auto;
}

</style>


<script>
      $('#allCk').click(function() {
         var ck = $('#allCk').prop("checked");
         $('input[name=checkBoard]').each(function(i, element) {
            $(this).prop("checked", ck);
            if (ck) {
               $(this).parents('tr').addClass("active");
            } else {
               $(this).parents('tr').removeClass("active");
            }
         });
      });
      $('input[name=checkBoard]').click(function() {
         $('#allCk').prop('checked', false);
         $(this).parents('tr').toggleClass("active");
      });
   </script>
</head>
<body>
	<section class="container">
		<div style="">
  		 <form action="/Moa/deleteBlist.admin" method="get"  >
      <div class="ui form" >
         <div class="inline field">
            <table class="table ui">
               <thead>
                  <tr>
                     <th class="collapsing"><div class="ui checkbox fitted">
                           <input type="checkbox" id="allCk" /> <label></label>
                        </div></th>
                     <th>글 번호</th>
                     <th>제목</th>
                     <th>작성자</th>
                     <th>작성일</th>
                     <th>조회수</th>
                  </tr>
               </thead>
               <tbody>
                  <%
                     for (int i = 0; i < 5; i++) {
                  %>
                  <tr>
                     <td class="collapsing"><div class="ui checkbox fitted">
                           <input type="checkbox" name="checkBoard" id="checkBoard"
                              value="" /> <label></label>
                        </div></td>
                     <td><%--<%=%>--%></td>
                     <td><%--<%=%>--%></td>
                     <td><%--<%=%>--%></td>
                     <td><%--<%=%>--%></td>
                     <td><%--<%=%>--%></td>
                  </tr>
                  <%
                     }
                  %>

               </tbody>

            </table>
            <br /><br />
            <!-- 
            <button class="negative ui button">삭제하기</button>
			 -->
         </div>
      </div>
   </form>
   </div>
	</section>
	
</body>
</html>