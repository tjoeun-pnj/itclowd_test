<%@page import="com.test.member.medel.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	MemberVo mVo = (MemberVo)request.getSession().getAttribute("authUser");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function(){
		reqBookMainIndie(null,null,null);
		var rating = 0;
		var grade = document.getElementById("indieGradeStar");
		/*  $('#indieRating .watcha-star').mouseenter(function(){
		     if(clicked) {
	    		 $(this).parent().children('.watcha-star').removeClass('over horver');
	    		 $('.watcha-star:eq('+rating+')').addClass('over horver').prevAll(".watcha-star").addClass('over horver');
	    		 return false;
	    	 }
	    	 else {
	    		 $(this).parent().children('.watcha-star').removeClass('over horver');
			     $(this).addClass('over horver').prevAll(".watcha-star").addClass('over horver');
	    	 	return false;
	    	 }
		}); 
		 $('#indieRating .watcha-star').mouseleave(function(){
	    	 if(clicked) {
	    		 $(this).parent().children('.watcha-star').removeClass('over horver');
	    		 $('.watcha-star:eq('+rating+')').addClass('over horver').prevAll(".watcha-star").addClass('over horver');
	    		 return false;
	    	 }
	    	 else {
	    		 $(this).parent().children('.watcha-star').removeClass('over horver');
	    	 	return false;
	    	 }
	     });  */
		$('#indieRating .watcha-star').click(function(){
			$(this).parent().children('.watcha-star').removeClass('over horver');
		     $(this).addClass('over horver').prevAll(".watcha-star").addClass('over horver');
		     rating = $(this).data('value')-1;
		     grade.value = $(this).data('value');
		     return false;
		});
	});
	
		
	function searchIndie(){
		var cate = document.getElementById("searchIndieCate");
		var query = document.getElementById("searchIndieQuery");
		if ($("#searchIndieQuery").val().replace(/\s/g, "") == ""){
			alert("검색어를 입력하세요");
		}else{
			reqBookMainIndie(1, cate.value, query.value);
		}
	}
	function indieGradeModal(ib_no, title) {
		$("body").removeClass("is-menu-visible");
		var isLogin = <%if(request.getSession() != null && request.getSession().getAttribute("authUser") != null){%>
		true<%}else{%>false<%}%>
		if(isLogin){
			var member = <%=request.getSession().getAttribute("authUserJson")%>;
			$('#indieGradeModal').modal('show');
			document.getElementById("indieGradeNo").value = ib_no;
			document.getElementById("indieMemberNo").value = member.m_no;
			document.getElementById("indieGradeTitle").innerHTML = title;
		}else{
			alert('로그인 하셔야만 이 기능을 사용하실 수 있습니다.')
		}
	}
	
	
	function indieGradeInsert(){
		var grade = document.getElementById("indieGradeStar");
		if ($('#indieRatingText').val().replace(/\s/g, "") == ""){
			alert("간단리뷰를 입력하세요.");
			return;
		}
		if(grade.value == 0) alert("별점을 입력하세요.");
	    $.ajax({
	        type:"POST",
	        url:"./book/indieGrade",
	        data : $("#indieGradeForm").serialize(),
	        dataType : "json",
	        success: function(data){
	        	if(data.result) indieGradeSuccess();
	        	else alert('등록실패');
	        },
	        error: function(xhr, status, error) {
	            alert('등록실패');
	        }  
	    });
	}
	function indieGradeSuccess(){
		$('#indieGradeModal').modal('hide');
		document.getElementById('indieRatingText').value = '';
		$('#indieRating').children('.watcha-star').removeClass('over horver');
		reqBookMainIndie(1,0,null);
	}
	function reqInsertForm(){
		location.href = "/insertBookForm.bk";
	} 
</script>
</head>
<body>
	<div class="guideBook">
        <div class="center-box-book">
        <div id="bookCate">
        <ul>
        <li><a onclick="reqBookMainIndie(1, 0,null);">전체</a></li>
        <li><a onclick="reqBookMainIndie(1, 1,null);">소설</a></li>
        <li><a onclick="reqBookMainIndie(1, 2,null);">시</a></li>
        <li><a onclick="reqBookMainIndie(1, 3,null);">여행/에세이</a></li>
        <li><a onclick="reqBookMainIndie(1, 4,null);">사진</a></li>
        <li><a onclick="reqBookMainIndie(1, 5,null);">디자인</a></li>
        <li><a onclick="reqBookMainIndie(1, 6,null);">일러스트/회화</a></li>
        <%
			HttpSession httpSession = request.getSession();
			if(httpSession != null && httpSession.getAttribute("authUser") != null){
				if(mVo.getM_grade()==0){%>
				
        <li><a class="button middle" onclick="reqInsertForm();">글등록</a></li>
        <%}} %>
        </ul>
        </div>
        <div id="searchIndie">
        		<table>
        			<tr>
        				<td>
							<select id="searchIndieCate" name="searchIndieCate">
		        			<option value="0">전체</option>
		        			<option value="1">소설</option>
		        			<option value="2">시</option>
		        			<option value="3">여생/에세이</option>
		        			<option value="4">사진</option>
		        			<option value="5">디자인</option>
		        			<option value="6">일러스트/회화</option>
		        			</select>
		        			<input id="searchIndieQuery" type="text" name="searchIndieQuery" placeholder="Search">
        					<input type="button" value="검색" onclick="searchIndie()">       				
        				</td>
        			</tr>
        		</table>
        </div>
    <div class="vertical-list" >
    	<h2>독립출판물</h4>
       <ul id="bookIndie-grid-container" class="grid-container" style="position: relative; width: 100%;" >
		
</ul>
	

</div>
	
	<div id="pageContainer">
	</div>
</div>
</div>

  <!-- The Modal1 -->
  <div class="modal fade" id="indieGradeModal">
    <div class="modal-dialog">
      <div class="modal-content">
      	<form id="indieGradeForm">
      	<input type="hidden" id="indieGradeNo" name="ib_no" value="">
      	<input type="hidden" id="indieMemberNo" name="m_no" value="">
      	<input type="hidden" id="indieGradeStar" name="ia_grade" value="">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">평점주기</h4>
          <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
        </div>
        <!-- Modal body -->
        <div class="modal-body" align="center">
          <section>
			<ul class="actions vertical">
				<h4 id="indieGradeTitle"></h4>
				<div id="indieRating" class="rating"><span class="watcha-star half left" data-value="1"></span><span class="watcha-star half right" data-value="2"></span><span class="watcha-star half left" data-value="3"></span><span class="watcha-star half right" data-value="4"></span><span class="watcha-star half left" data-value="5"></span><span class="watcha-star half right" data-value="6"></span><span class="watcha-star half left" data-value="7"></span><span class="watcha-star half right" data-value="8"></span><span class="watcha-star half left" data-value="9"></span><span class="watcha-star half right" data-value="10"></span></div>
				<br/>
				<textarea id="indieRatingText" name="ia_content" cols="2"></textarea>
				<br>
				<div>
				<a class="button big" onclick="indieGradeInsert();">등록</a>
				<a class="button big" data-dismiss="modal">취소</a>
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