<%@page import="com.sun.swing.internal.plaf.basic.resources.basic"%>
<%@page import="com.dmg.jsp.basket.model.vo.Basket"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page
   import="com.dmg.jsp.member.model.vo.Member.*, com.dmg.jsp.product.model.vo.Product.*
         ,java.util.*"%>
<%
   ArrayList<Basket> baskets = (ArrayList<Basket>) request.getAttribute("baskets");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 했을 때 장바구니 페이지</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
   integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
   crossorigin="anonymous"></script>
   <!-- 
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script> -->
<!-- <link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script
   src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script> -->
<style>
.container {
   width: 1200px;
   margin: 0 auto;
   /* max-width: none !important; */
}

.clearFix:after {
   content: '';
   clear: both;
   display: block;
}
/* @media only screen and (max-width: 768px){
   width:100%; */
table {
   width: 880px;
   margin-top: 10px;
}

table th {
   width: 200px;
   color: #4d4d4d;
   font-size: 14px;
   background: #f1f1f1;
   padding: 5px 0;
}

table th:nth-child(1) {
   width: 100px;
   text-align: left;
   padding-left: 10px;
}

table th:nth-child(5) {
   padding-right: 10px;
}

table td {
   text-align: center;
   width: 200px;
   color: #4d4d4d;
   font-size: 14px;
}

table td:nth-child(1) {
   width: 200px;
   text-align: left;
   padding-left: 10px;
}

table td:nth-child(4) {
   padding-right: 10px;
}

.floating {
   /* background-color:#ff6a00;  */
   border: 2px solid #ff6a00;
   position: fixed;
   right: 20%;
   /* top: 180px; */
   /* margin-right: -615px;  */
   /* text-align:center; */
   width: 70px;
   /* border-radius: 8px; */
   /* -webkit-border-radius: 8px;  */
}

.shopping {
   width: 180px;
   height: 60px;
   float: left;
   margin-top: 30px;
   border: 2px solid #FF773F;
   background: white;
}
</style>
</head>
<body>
   <%@ include file="/views/common/header.jsp"%>
   <%
      if (m != null) {
   %>
   <%
      if (baskets == null) {
   %>
   <section class="container clearFix">
      <h2>장바구니(담긴 상품이 없을 때)</h2>
      <!-- 로그인 하지 않고 장바구니에 들어왔을 때-->
      <!-- 장바구니에 상품이 하나도 담기지 않았을 때 -->
      <div class="shopping-basket"
         style="width: 1200px; margin-right: 50px;">


         <h3 style="text-align: center; margin-top: 100px;">장바구니에 담긴 상품이
            없습니다.</h3>

      </div>

   </section>
   <br><br><br><br><br><br><br><br><br><br>
   <%
      } else {
   %> 
   <!-- 장바구니에 상품이 담겨있을 때  -->
   <section class="container clearFix">
      <h2>장바구니(상품이 담겨 있을 때)</h2>
      <div class="shopping-basket" style="float: left; margin-right: 50px;">
         <!-- <div class="ui checkbox" style="height: 50px; margin-left: 10px;"> -->
         <!-- <label for="">배송 상품 : </label><br> --> <!-- 체크박스가 선택된 개수 가져오기 -->
         <!-- <input type="checkbox" name="example"> <label>배송 상품: </label> -->

         <div style="width: 1200px; margin-right: 50px;">
            <form action="">
            <table>
               <thead>
                  <tr>
                     <th><input type="checkbox"  id="allCk"><label
                        for="1">상품이미지</label></th>
                     <th>상품이름</th>
                     <th>수량</th>
                     <th>가격</th>
                  </tr>
               </thead>
               <tbody>
               <% for (int i = 0; i < baskets.size(); i++) { %>
                  <tr>
                     <td><input type="checkbox" name="checkList" class="check" value="<%=baskets.get(i).getBasketId()%>"><label
                        for="2">상품이미지</label></td>
                     <td><%=baskets.get(i).getPname()%></td>
                     <td>
                     <input type="button" name = "decrease"  value = "-"/>
                     <input type="text" name = "amount" value = "<%=baskets.get(i).getAmount()%> " style = "width : 50px; text-align : center;">
                     <input type="button" name = "increase"  value = "+"/>
                     <%-- <%=baskets.get(i).getAmount()%> --%></td><!-- 제품의 개수 수정할 수 있도록 -->
                     <td id="price<%=baskets.get(i).getBasketId()%>" ><%=baskets.get(i).getAmount() * baskets.get(i).getPprice()%></td>
                  </tr>
               <%
                     }
                  %> 

               </tbody>
            </table>
            <table>
               <tr>
               <th><input type="checkbox" ><input type="button" onclick="deleteAction();" value="삭제하기"></th>
               <th></th>
               <th>총 주문금액 : <span id="totalPrice"></span></th>
               <!-- 체크박스 선택 개수에 따라 삭제 개수 바꾸기-->
               </tr>
            </table>

            <div>
               <!-- <input type="button" id="continue"> -->
               <button class="shopping continue" id="continue"
                  style="margin-left: 150px;">계속 쇼핑하기</button>
            </div>
            <button class="shopping payment" id="payment"
               style="margin-left: 100px;">구매하기</button>
            </form>
         </div>
      </div>
   
   
      <script>
      // 상단의 체크박스가 선택되면 아래에 위치한 체크박스가 모두 체크되게 하는 속성
      $("#allCk").click(function(){
           //클릭되었으면
           if($("#allCk").prop("checked")){
               //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
               $("input[class=check]").prop("checked",true);
               //클릭이 안되있으면
           }else{
               //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
               $("input[class=check]").prop("checked",false);
           }
       });
      // 하단의 모든 체크박스가 체크되었을 때 모든 전체선택 만들기
      
      // 선택된 체크박스의 상품의 가격 합계 구하는 함수
      $('#allCk').click(function(){
         
         console.log($(this).val());
         
         var total=0;
         $('input[name=checkList]:checked').each(function(i, e) {
            console.log(Number($('#price' + $(this).val()).text()));
            total += Number($('#price' + $(this).val()).text());
            //console.log($('#price' + $(this).val()));
         });
         
          $('#totalPrice').text(total); 
      
      });
      
       $('input[name=checkList]').click(function() {
            console.log($(this).val());            
            var total=0;
            $('input[name=checkList]:checked').each(function(i, e) {
               console.log(Number($('#price' + $(this).val()).text()));
               total += Number($('#price' + $(this).val()).text());
               //console.log($('#price' + $(this).val()));
            });
            
             $('#totalPrice').text(total); 
         });
         /* $('#totalPrice').val(total); */ 
      
      // 선택된 체크박스 삭제 메소드
      function deleteAction(){
         var check = "";
         var checkArr = new Array();
         $("input[name=checkList]:checked").each(function(){
            check+=$(this).val()+", ";
            
            checkArr.push($(this).val());
            
         });         
         console.log("### check => {}" + check);
         console.log("checkArr");
         console.log(checkArr);         
         if(check == ''){
            alert("삭제할 대상을 선택하세요.");
            return false;
         }
         
         if(confirm("정보를 삭제 하시겠습니까?")){

            
            $.ajax({
                url : "/DMG/basketDelete.do",
                type : "get",
                data : {basketId : JSON.stringify(checkArr)},
                success : function(data){
                   console.log(data)
                   
                    // 데이터 전달이 성공했을 때 처리할 내용은 이렇습니다.
                   // 먼저 선택한 요소들을 가져와서 확인합니다.
                   
                   $("input[name=checkList]:checked").each(function(){
                
                      // 처음 선택은 체크박스
                      // 부모요소는 td 이므로 그 위의 부모까지 찾아갑니다.
                      
                      $tr = $(this).parent().parent();
                      // 아니면 $tr = $(this).parents('tr');
                      
                      console.log($tr);
                      // 여기까지 tr 선택을 확인 하셨으면
                      // 이제 지우시면 됩니다.
                      
                      $tr.remove(); 
                      
                      var total=0;
                     $('input[name=checkList]:checked').each(function(i, e) {
                        console.log(Number($('#price' + $(this).val()).text()));
                        total -= Number($('#price' + $(this).val()).text());
                        //console.log($('#price' + $(this).val()));
                     });
                     
                      $('#totalPrice').text(total);
                   });   
                    console.log("성공");
                   
                }, error : function(){
                   console.log("결과 전송 실패!!");
                }
             });
            
         }
      }
      // ajax 통해 전달값 이동 시킨 후 페이지 이동
      // ajax sucess location.href
         
      $('input[name=decrease]').click(function(){
         console.log($(this).val()); // -
         var decreaseAmount = Number($('input[name=amount]').val()) - 1;
         
         console.log(decreaseAmount);
         
         /* $.ajax({
             url : "/DMG/basketUpdate.do",
             type : "get",
             data : {amount : decreaseAmount},
             success : function(data){
                console.log(data)
                
                var resultAmount = "";
                
                
                $("input[name=checkList]:checked").each(function(){
               
                   
                   $tr = $(this).parent().parent();
                   // 아니면 $tr = $(this).parents('tr');
                   
                   console.log($tr);
                   // 여기까지 tr 선택을 확인 하셨으면
                   // 이제 지우시면 됩니다.
                   
                   $tr.remove(); 
                   
                   var total=0;
                  $('input[name=checkList]:checked').each(function(i, e) {
                     console.log(Number($('#price' + $(this).val()).text()));
                     total -= Number($('#price' + $(this).val()).text());
                     //console.log($('#price' + $(this).val()));
                  });
                  
                   $('#totalPrice').text(total);
                });   
                 console.log("성공");
                
             }, error : function(){
                console.log("결과 전송 실패!!");
             }
          });
       */
      });
      
      $('input[name=increase]').click(function(){
         console.log($(this).val()); // +
         var increaseAmount = Number($('input[name=amount]').val()) + 1;
         
         console.log(increaseAmount);
      
      });
      
      
      </script>
      
      

 <% } %> 

   </section>
   <%
      } else if(m == null){
      
   %>
   <section class="container">
   <div class="shopping-basket"
      style="float: left; width: 1200px; margin-right: 50px;">


      <div>
         <h3 style="text-align: center; margin-top: 100px;">장바구니에 담긴 상품이
            없습니다. 비로그인</h3>
         <button class="button"
            style="height: 60px; width: 140px; display: block; margin: 0 auto;"
            onclick="gologin();">로그인</button>
      </div>
      </div>
      
      <script>
         function gologin(){
            var Url = "/DMG/views/member/login.jsp";   //팝업창에 출력될 페이지 URL
               var Option = "width=900, height=450, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)
                  window.open(Url,"",Option);
         }
      </script>
      <br /> <br /> <br /> <br /> <br /> <br />
      </section>
   <% } %>
      <br /> <br /> <br /> <br /> <br /> <br />
      <%@ include file="/views/common/footer.jsp"%>
</body>
</html>