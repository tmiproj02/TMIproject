<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, charge.model.vo.*, member.model.vo.*" %>
<%  ArrayList<Cash> rechargeList = (ArrayList<Cash>)request.getAttribute("rechargeList");
   System.out.println("billingHistory:"+rechargeList); 
   PageInfo pi = (PageInfo)request.getAttribute("pi");
   int listCount = pi.getListCount();
   int currentPage = pi.getCurrentPage();
   int maxPage = pi.getMaxPage();
   int startPage = pi.getStartPage();
   int endPage = pi.getEndPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TMI 캐시 내역</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
<script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
<style>

   
   .listcontent{
      padding:15px;
      padding-left:30%;
   }
   
   
   .font-noto{
      font-family: 'Noto Sans KR', sans-serif;
       font-weight: 400;
   }
   .my-page-buy{
      margin:0 auto;
   }
   .scontainer{

      width : 1024px;
      margin:0 auto;
      overflow : hidden;
   }
   .scontainer1{
      padding-left : 15px;
      padding-right : 15px;
      margin:0 auto;
   }
   .scontainer2{

      margin:0 auto;
      float : left;
   }
   
   .profile{
      margin-top:20px;
   }
   .width-25per{
      width:25%;

   }
   .width-75per{
      width:75%;

   }
   .user-profile-body{
      border: solid #E6E6E6 1px;
      border-bottom:none;
      text-align : center;
      padding-top : 20px;
   }
   .user-profile-box>li{
      border: solid #E6E6E6 1px;
      border-bottom:none;
      list-style : none;
      overflow : hidden;
   }
   
   .buy{
      margin-top : 40px;
   }
   .buyer-check{
      display: inline;
       border-radius: 10px;
       padding: 1px 7px 2px 7px;
       font-size: 75%;
       line-height: 1;
       color: #fff;
       text-align: center;
       white-space: nowrap;
       vertical-align: baseline;
       background : #364559;
   }
   .padding-15{
      padding:0 15px;
   }
   .income-out{
      padding :15px 0;
   }
   .income-out>div{
      display : inline-block;
      
   }
   .income-out-div{
      text-align:left; 
      width:50%;
      padding-left:15px; 
      padding-right: 0px;
      float:left;
      
   }
   .won{
      text-align:right; 
      width:50%;
      padding-right:15px; 
      padding-left:0;
   }
   .menu-line{
      border: solid #E6E6E6 1px;
      border-bottom:none;
      overflow:hidden;
   }
   .menu-line>a{
      display : inline-block;
      width:50%;
      margin-bottom : 0;
      float:left;
   }
   .menu-box img{
      width : 40px;
   }

   .padding-all-15{
      padding : 15px;
   }
   .menu-slot{
      width:100%;
      
   }
   
   .detail-box{
       border-bottom: solid #E6E6E6 1px !important;
   }
   .detail-list{
      border: solid #E6E6E6 1px !important;
      padding : 85px 0;
      text-align : center;
      margin-top : 20px;
   }
   .buying-history{
       vertical-align: 1px;
       font-size: 11px;
       color: #878787;
       padding: 1px 6px;
       background-color: #ddd;
       border-radius: 500px !important;
   }
   .active{
      background:#E8F0F5;
   }
   .select{
      background-color: #BDD4F2;
      color : #000;
   }
   
   .margin-bottom-15{
      margin-bottom:15px;
   }
   
   .margin-top-5{
      margin-top : 5px;
   }
   
   .link-color-blue{
      color:#FF5050;
   }
   
   .padding-left-20{
      padding-left:20px;
   }
   
   #nblist{
      letter-spacing : -2px;
      font-size : 13px;
   }
   
   

</style>
</head>
<body>
   <%@ include file="/views/common/cateheader2.jsp" %>
   
   <%
   DecimalFormat df = new DecimalFormat("###,###");
   int val = m.getCash();
   %>
   
   <div class="my-page-buy">
      <div class="scontainer">
         <div class="scontainer1">
            <div class = "buy font-noto">
               <h3>구매</h3>
            </div>
         </div>
         <div class="scontainer2 width-25per">
               <div class="profile">
                  <div class="padding-15">
                  <div class="user-profile-body">
                     <img src="/semi/resources/images/myprofile.png" style="border-radius: 500px;width:100px;height:100px"/>
                  </div>
                  <ul class="user-profile-box">
                     <li style=" border-top:none;"><div style="text-align : center; margin-bottom:20px;">
                        <div class="font-noto" style="margin-top:5px;margin-bottom:10px;"><a href="../member/memberUpdateForm.jsp"><%=m.getNickName() %></a></div>
                        <br>
                        <div class="font-color-lighter font-size-h6 font-noto">TMI캐시</div>
                        <h3 class="margin-bottom-15 margin-top-5 link-color-blue NGB"><i class="won sign icon"></i><%=df.format(val)%> 원</h3>
                        <div>
                           <label class="buyer-check font-noto" style="cursor:pointer;" onclick="lbcash();"><i class="credit card outline icon"></i>캐시충전</label>
                           
                        </div>
                     </div>
                     </li>
                     
                  </ul>
               </div>
               <div class="menu-box">
                  <div class="padding-15">
                     <div class="menu-line" style="text-align:center">
                        <a style="cursor:pointer;"><div class="padding-all-15 menu-slot" style="border-right:solid #E6E6E6 1px;" onclick="nrequest();">                     
                           <div><img src="/semi/resources/images/buying_active.png" alt="" /></div>
                           <h6>구매관리</h6>                     
                        </div></a>
                        <a href="/semi/views/personBUY/cash.jsp"><div class="padding-all-15 menu-slot">
                           <div><img src="/semi/resources/images/noun_won.png" alt="" /></div>
                           <h6>TMI캐시</h6>         
                        </div></a>
                     </div>
                     <div class="menu-line" style="text-align:center;border-bottom:solid #E6E6E6 1px;">
                        <a style="cursor:pointer;"><div class="padding-all-15 menu-slot active" style="border-right:solid #E6E6E6 1px;" onclick="billHist();">                     
                           <div><img src="/semi/resources/images/payment_active.png" alt="" /></div>
                           <h6>캐시내역</h6>                     
                        </div></a>
                        <a href="/semi/views/personBUY/coupon.jsp"><div class="padding-all-15 menu-slot">
                           <div><img src="/semi/resources/images/coupon_active.png" alt="" /></div>
                           <h6>쿠폰</h6>         
                        </div></a>
                     </div>
                  </div>
               </div>
               
            </div>
            
         </div>
         <div class="scontainer3 width-75per padding-15" style="float:left">
            <div class="padding-15">
               <h3 class="font-noto" style="font-weight:700; margin-top:3%;">캐시내역</h3>
            </div>

            <div style="margin-top:20px; margin-left:71%;">
               <div class="padding-15 font-noto">

                  <div class="ui scrolling dropdown">
                     <input type="hidden" name="gender">
                     <div class="default text font-noto">전체내역</div>
                     <i class="dropdown icon"></i>
                     <div class="menu">
                        <div class="item font-noto" onclick="billHist();">전체내역</div>
                        <div class="item font-noto" onclick="sptList();">사용내역</div>
                        <div class="item font-noto" onclick=>충전내역</div>
                     </div>
                  </div>


               </div>
            
            
            </div>
            
            <%if(rechargeList.size()==0) { %>
               <div class="padding-15" style="margin-top:10px">
                  <div class="detail-box">
                     <div class="detail-list">
                        <!-- 내역이 없을 때 -->
                        <div><img src="/semi/resources/images/nothing.png" style="width:50px;vertical-align: middle;border:0" /></div>
                        <h5 class="font-noto" style="margin:10px 0;">내역이 없습니다.</h5>

                     </div>
                  </div>
               </div>
            <% } else { %>



      <div class="purchaseListArea padding-15" style="margin-top : 10px;">
            
            <!-- 이 자리에 Arraylist로 반복문 넣어야 결제 내역이 목록화되어 나옴. -->
            <%  for(Cash c : rechargeList) { %>
            
            <%if((c.getClassify()).equals("충전")){ %>
            
               <div class="ui items" style="border:3px solid #BDD4F2; border-radius: 5px; padding:10px; height:150px;">
                  <div class="item" >
                     <div class="pllist">
                        <p style="color:orange; font-size:30px" class="font-noto"><%= c.getClassify() %></p>
                     </div>
                     
                     <div class="listcontent">
                        <div class="meta">
                           <%int price = c.getPayp(); %>
                           <span class="price font-noto" style="color:orange; font-size:25px;"><i class="won sign icon"></i><%=df.format(price)%>원</span>
                           
                        </div>
                           <p style="letter-spacing:2px;" class="font-noto">결제일 : <%= c.getPaydate() %></p>
                           <p class="font-noto">충전된 캐시는 충전 혜택(+10%)이 포함된 금액입니다.</p>
                        <div style="display:inlne; margin-left:230%; margin-top:-50%;">
                           <img  id="coins" src="/semi/resources/images/noun_Coins.png" style="width:90px;"/>
                           </div>
                        
                        
                     </div>
                  </div>
               </div>
               <%} else if((c.getClassify()).equals("사용")) { %>
            
               <div class="ui items" style="border:3px solid #BDD4F2; border-radius: 5px; padding:10px; height:150px;">
                  <div class="item" >
                     <div class="pllist">
                        <p style="color:greenyellow; font-size:30px" class="font-noto"><%= c.getClassify() %></p>
                     </div>
                     <div class="listcontent">
                        <div class="meta">
                           <%int price = c.getPayp(); %>
                           <span class="price font-noto" style="color:orange; font-size:25px;"><i class="won sign icon"></i><%=df.format(price)%>원</span>
                           
                        </div>
                           <p style="letter-spacing:2px;" class="font-noto">결제일 : <%= c.getPaydate() %></p>
                        <div style="display:inlne; margin-left:230%; margin-top:-50%;">
                           <img  id="coins" src="/semi/resources/images/noun_Coins.png" style="width:90px;"/>
                           </div>
                        
                        
                     </div>
                  </div>
               </div>
            <% } } } %>    
               

         <br>

      <%-- 페이징 처리 --%>
      <div class="pagingArea" align="center">
         <button class="ui black button" onclick="location.href='<%= request.getContextPath() %>/cList.bo?currentPage=1'"><<</button>
         <%  if(currentPage <= 1){  %>
         <button class="ui grey button" disabled><</button>
         <%  }else{ %>
         <button class="ui grey button" onclick="location.href='<%= request.getContextPath() %>/cList.bo?currentPage=<%=currentPage - 1 %>'"><</button>
         <%  } %>
         
         <% for(int p = startPage; p <= endPage; p++){
               if(p == currentPage){   
         %>
            <button class="ui blue basic button" disabled><%= p %></button>
         <%      }else{ %>
            <button class="ui blue basic button" onclick="location.href='<%= request.getContextPath() %>/cList.bo?currentPage=<%= p %>'"><%= p %></button>
         <%      } %>
         <% } %>
            
         <%  if(currentPage >= maxPage){  %>
         <button class="ui grey button" disabled>></button>
         <%  }else{ %>
         <button class="ui grey button" onclick="location.href='<%= request.getContextPath() %>/cList.bo?currentPage=<%=currentPage + 1 %>'">></button>
         <%  } %>
         <button class="ui black button" onclick="location.href='<%= request.getContextPath() %>/cList.bo?currentPage=<%= maxPage %>'">>></button>
      </div>



         <br>
            <div class="bgcheck padding-15" style="background-color:#dcdcdc; margin-top:40px; padding-left:15px;">
                                        <h6 class="NGB margin-all-0 padding-bottom-5" style="font-size:17px;">
                                            <i class="bullhorn icon"></i>
                                            <b>꼭 확인해주세요!</b>
                                        </h6>
                                        <ul class="font-color-light margin-top-5 margin-top-5 margin-bottom-0 font-size-h6 padding-left-20">
                                            <li id="nblist">세금계산서는 거래 주체인 전문가가 의뢰인에게 발행합니다.</li>
                                 <li id="nblist">세금계산서는 사업자 인증 받은 기업전문가에게 요청하실 수 있습니다.</li>
                                 <li id="nblist">이벤트 쿠폰 사용 금액은 할인된 금액이기 때문에 세금계산서에 포함되지 않습니다.</li>
                                 <li id="nblist">거래명세서는 결제가 완료되었음을 증명하는 용도로만 활용 가능하며 세무상의 지출증빙 효력이 없습니다.</li>
                                 <li id="nblist">현금영수증은 개인의 소득공제용으로만 사용 가능하며, 결제 당시 지출 증빙용으로 선택하셨더라도 매입세액공제를 받으실 수 없습니다.</li>
                              </ul>
              </div> 


               </div>
            </div>
         </div>
      </div>
   

            


   <script>
   function lbcash(){
      location.href="/semi/views/personBUY/cash.jsp";
   }
   
   function billHist(){
      location.href="/semi/cList.bo"
   }
   
   function nrequest(){
      location.href="/semi/nReq.bo"
   }

   $('.ui.dropdown').dropdown();
   
   function sptList(){
      location.href="/semi/spentList.bo"
   }
   
   </script>
   
   

   <%@ include file="/views/common/footer.jsp" %>
</body>
</html>