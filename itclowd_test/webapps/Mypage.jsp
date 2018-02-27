<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
 <title>MY PAGE</title>
   <script src="assets/js/jquery.min.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> -->
<link rel="stylesheet" href="menubarcss.css" />
<link rel="stylesheet" href="assets/css/mainmenu.css" />
<link rel="stylesheet" href="what2.css" />
<script src="menubar.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>
  <script src="mainboot.js"></script>
  <script src="pwstrength.js"></script>
  <link rel="stylesheet" href="mainboot.css">
  <link rel="stylesheet" href="mainCustom.css">
  <!-- <link rel="stylesheet" href="bootstrap.css"> -->
  <!-- <script src="bootstrap.js"></script> -->
  <script src="mainCustom.js"></script> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> -->
	<style>
		#container {
			width:1150px;
			margin:0 auto;
			text-align:center;
		}
		.tab {
			list-style: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
		}
		/* Float the list items side by side */
		.tab li {
			float: left;
		}
		/* Style the links inside the list items */
		.tab li a {
			display: inline-block;
			color: black;
			text-align: center;
			text-decoration: none;
			padding: 14px 16px;
			font-size: 15px;
			transition:0.3s;
		}
		/* Style the tab content */
		.tabcontent {
			display: none;
			background-color:white;
			padding: 6px 12px;
			color:black;
     		font-size: 20px; 
		}
		ul.tab li.current{
			background-color:white;
			color:black;
		}
		.tabcontent.current {
			display: block;
		}
		.small{
		   width: auto; height: auto;
		   max-width: 200px;
		   max-height: 200px;
		}
	#body{
	  background-color: #f5f0ef;
      background-size: auto;
     }
  /*   @media (min-width: 992px) {
   .container {
    width: 800px;
  } */
} 

	</style>

</head>
<body id="body">

	<script>
		$(function() {
			var member = <%=request.getSession().getAttribute("authUserJson")%>;
			$('ul.tab li').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('ul.tab li').removeClass('current');
				$('.tabcontent').removeClass('current');
				$(this).addClass('current');
				$('#' + activeTab).addClass('current');
			})
			reqMyPageGrade(member.m_no, null);
			
		});
		function myBookGradeModal(b_no, title, content, grade) {
			$("body").removeClass("is-menu-visible");
			var isLogin = <%if(request.getSession() != null && request.getSession().getAttribute("authUser") != null){%>
			true<%}else{%>false<%}%>
			if(isLogin){
				var member = <%=request.getSession().getAttribute("authUserJson")%>;
				$('#myBookGradeModal').modal('show');
				document.getElementById("indieGradeNo").value = b_no;
				document.getElementById("indieMemberNo").value = member.m_no;
				document.getElementById("indieGradeTitle").innerHTML = title;
				document.getElementById("myBookRatingText").innerHTML = content;
				var setHtml = '';
				for(var y=1; y<=10;y++){
					if(y%2==0) setHtml += '<span class="watcha-star half right';
					else setHtml += '<span class="watcha-star half left';
					if(grade >= y) setHtml += ' over horver" data-value="'+y+'"></span>';
					else setHtml += '" data-value="'+y+'"></span>';
				}
				document.getElementById("myBookRating").innerHTML = setHtml;
			}else{
				alert('로그인 하셔야만 이 기능을 사용하실 수 있습니다.')
			}
		}
	</script>
	
		<div id="main_header">
		<jsp:include page="/header.jsp" flush="false" />
	</div>
<div id="blog-container"> 
	
	
  <!-- My page -->
	<div id="container">
		<ul class="tab">
			<li class="current" data-tab="tab1"><a href="#">책장</a></li>
			<li data-tab="tab2"><a href="#">나의정보</a></li>
		</ul>
		
   <!-- 내가 매긴 별점 모음 (별점 매긴 순으로 등록됨) -->
		<div id="tab1" class="tabcontent current" >
			 <div class="vertical-list" style="height: 1000px;">
       			<ul id="myPageBook-grid-container" class="grid-container" style="position: relative; width: 100%;" >
		
				</ul>
				</div>
				<div id="pageContainer1">
				</div>
			</div>						
				
   <!-- 개인 상세정보 -->
   
		<div id="tab2" class="tabcontent">	
	  <table class="w3-table w3-bordered">

		    <tr>&nbsp;		    
		      <th colspan="3"></th>
		    </tr>
		    
		    <tr>
		      <td colspan="3" style="text-align:center">
		      <a href="#">회원정보</a>
		      </td>
		    </tr>
		    
	        <tr>
		      <td colspan="3"  style="text-align:center">
		      <a href="#">주문내역</a>
		     </td>
		    </tr>
		    
	        <tr>
		      <td colspan="3"  style="text-align:center">
		       <a href="#">장바구니</a>	
		      </td>
		    </tr>	
		     
		     <tr>
		      <td colspan="3"  style="text-align:center">		      
		      <a href="address.jsp">배송주소록</a>		      
		      </td>
		    </tr>
 	
		  </table>

		</div>
	</div>
	
	</div>
	     <div>
		<jsp:include page="/footer.jsp" flush="false" />
	</div> 
	
	

<!-- The Modal1 -->
  <div class="modal fade" id="myBookGradeModal">
    <div class="modal-dialog">
      <div class="modal-content">
      	<form id="indieGradeForm">
      	<input type="hidden" id="indieGradeNo" name="ib_no" value="">
      	<input type="hidden" id="indieMemberNo" name="m_no" value="">
      	<input type="hidden" id="indieGradeStar" name="ia_grade" value="">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">내 평점</h4>
          <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
        </div>
        <!-- Modal body -->
        <div class="modal-body" align="center">
          <section>
			<ul class="actions vertical">
				<h4 id="indieGradeTitle"></h4>
				<div id="myBookRating" class="rating"></div>
				<br/>
				<textarea id="myBookRatingText" name="ia_content" cols="2" readonly="readonly"></textarea>
				<br>
				<div>
				</div>
			</ul>
			</section>
        </div>
      	</form>
      </div>
    </div>
  </div><!-- modal1 end -->
</body>
</html>
