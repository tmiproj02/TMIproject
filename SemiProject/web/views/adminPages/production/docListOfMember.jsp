<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="sellerboard.model.vo.SellerBoard" %>
    
<%
	
	ArrayList<SellerBoard> docList = (ArrayList<SellerBoard>)session.getAttribute("docList");	
	String nickName = (String)session.getAttribute("nickName");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="icon" href="images/favicon.ico" type="image/ico" />
    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
	
	 <!-- Datatables -->
    <link href="../vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
	<!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
<title>TMI - 서비스 관리</title>
</head>
<body class="nav-md">
	<div class="container body">
      <div class="main_container">

	<%@ include file="adminHeader.jsp" %>

	 <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          <div class="row tile_count">
         	 <div class="x_content">

                    	<h3><b>작성글 보기</b></h3>
				 <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                
                    <h2 style="height:22px; margin: 3px 0px 3px 0px;"><b><%=nickName%></b>님의 게시물</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link" style="margin-left:55px;"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                 
                    <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                      <thead>
                  		<tr>    			
                  			<th>No</th>
                  			<th>제목</th>
                  			<th>1차 카테고리</th>
                  			<th>2차 카테고리</th>
                  			<th>작성일</th>
                  			<th>상세보기</th>
                  		
                  		</tr>
                      </thead>
                      <tbody>
                       	<% if(docList != null) {
                       	int num = 1;
                       	for(SellerBoard sb : docList){
                       		System.out.println(sb.getBno());
                       		%>
                      	  <tr>
                      	  <td style="display:none"><input type="hidden" id="bno" value="<%=sb.getBno()%>"/></td>
                          <td><%=num %></td>	
                          <td><%=sb.getBtitle()%></td>
                          <td><%=sb.getCategory1_name()%></td>
                          <td><%=sb.getCategory2_name() %></td>
                          <td><%=sb.getBdate()%></td>
                          <td class="a-right a-right "> <a class="btn btn-primary btn-xs docDetailBtn" ><i class="fa fa-search"></i> 상세보기 </a></td>
                          
                        </tr>
           				<%  num++; } 
                       	} else{ %>
                       		<tr>
                            <td>데이터</td>
                            <td>없음</td>
                            <td>1</td>
                            <td>1</td>
                            <td>1</td>
                            </tr>
                     	 <% } %>	
                      
                       
                      </tbody>
                    </table>
					
                  </div>
                </div>
              </div>	
					
					
          </div>
          <!-- /top tiles -->

          
        </div>
        <!-- /page content -->





   
      </div>
    </div>
    </div>
</body>
 <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="../vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="../vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="../vendors/Flot/jquery.flot.js"></script>
    <script src="../vendors/Flot/jquery.flot.pie.js"></script>
    <script src="../vendors/Flot/jquery.flot.time.js"></script>
    <script src="../vendors/Flot/jquery.flot.stack.js"></script>
    <script src="../vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="../vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="../vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="../vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="../vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="../vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
     <!-- Datatables -->
    <script src="../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="../vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="../vendors/jszip/dist/jszip.min.js"></script>
    <script src="../vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="../vendors/pdfmake/build/vfs_fonts.js"></script>


    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>

	<script>
   	 	// 게시물 삭제 버튼
    		$('.deleteBtn').each(function(index, item){
    			$(this).click(function(){
					$.ajax({
						url : "/semi/sRefuse.admin",
		        		type : "get",
		        		data : {title :$(this).parent().parent().find('td').eq(1).text(), nickName: $(this).parent().parent().find('td').eq(2).text()} ,
		        		success : function(data){
		        			location.href = "/semi/serviceList.admin";
		        		},
		        		error : function(){
		        			alert("서비스 삭제 오류");
		        		}
						
					});
					
					
        		});
    		
        	});
    		
    	// 게시물 상세보기 버튼
    	$('.docDetailBtn').each(function(index, item){
    			$(this).click(function(){
					var bno = $(this).parent().parent().find('input').val();
				
				 window.open("/semi/listDetail.bo?bno="+bno); 
    				
       			 });	
    	
         });

	</script>

</html>