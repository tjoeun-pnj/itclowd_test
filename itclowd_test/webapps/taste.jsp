<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head><title></title>

<script type="text/javascript">
$(document).ready(function(){
	reqTasteSet();
	var rating = 0;
	var clicked = false;
	var grade = document.getElementById("bookGradeStar");
	$('#bookRating .watcha-star').click(function(){
		$(this).parent().children('.watcha-star').removeClass('over horver');
	     $(this).addClass('over horver').prevAll(".watcha-star").addClass('over horver');
	     rating = $(this).data('value')-1;
	     grade.value = $(this).data('value');
	     clicked = true;
	     return false;
	});
	
});
function bookGradeModal(b_no, title) {
	$("body").removeClass("is-menu-visible");
	var isLogin = <%if(request.getSession() != null && request.getSession().getAttribute("authUser") != null){%>
	true<%}else{%>false<%}%>
	if(isLogin){
		var member = <%=request.getSession().getAttribute("authUserJson")%>;
		$('#bookGradeModal').modal('show');
		document.getElementById("bookGradeNo").value = b_no;
		document.getElementById("bookMemberNo").value = member.m_no;
		document.getElementById("bookGradeTitle").innerHTML = title;
	}else{
		alert('로그인 하셔야만 이 기능을 사용하실 수 있습니다.')
	}
}


function bookGradeInsert(){
	var grade = document.getElementById("bookGradeStar");
	if ($('#bookRatingText').val().replace(/\s/g, "") == ""){
		alert("간단리뷰를 입력하세요.");
		return;
	}
	if(grade.value == 0) alert("별점을 입력하세요.");
    $.ajax({
        type:"POST",
        url:"./book/bookGrade",
        data : $("#indieGradeForm").serialize(),
        dataType : "json",
        success: function(data){
        	if(data.result) bookGradeSuccess();
        	else alert('등록실패');
        },
        error: function(xhr, status, error) {
            alert('등록실패');
        }  
    });
}
function bookGradeSuccess(){
	clearBookGrade();
	reqTasteSet();
}

function clearBookGrade(){
	$('#bookGradeModal').modal('hide');
	document.getElementById('bookRatingText').value = '';
	$('#bookRating').children('.watcha-star').removeClass('over horver');
}
</script>	
</head>
<body>
<div class="guideBook">
        <div class="center-box-book">
      <div class="vertical-list" >
    	<h2>취향테스트</h4>
       <ul id="taste-grid-container" class="grid-container" style="position: relative; width: 100%; height: 1000px" >
</ul>
<div>
	<a class="button big" onclick="reqTasteSet();">새로고침</a>
</div>
</div>
</div>
</div>

  <!-- The Modal1 -->
  <div class="modal fade" id="bookGradeModal">
    <div class="modal-dialog">
      <div class="modal-content">
      	<form id="indieGradeForm">
      	<input type="hidden" id="bookGradeNo" name="b_no" value="">
      	<input type="hidden" id="bookMemberNo" name="m_no" value="">
      	<input type="hidden" id="bookGradeStar" name="ba_grade" value="">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">평점주기</h4>
          <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
        </div>
        <!-- Modal body -->
        <div class="modal-body" align="center">
          <section>
			<ul class="actions vertical">
				<h4 id="bookGradeTitle"></h4>
				<div id="bookRating" class="rating"><span class="watcha-star half left" data-value="1"></span><span class="watcha-star half right" data-value="2"></span><span class="watcha-star half left" data-value="3"></span><span class="watcha-star half right" data-value="4"></span><span class="watcha-star half left" data-value="5"></span><span class="watcha-star half right" data-value="6"></span><span class="watcha-star half left" data-value="7"></span><span class="watcha-star half right" data-value="8"></span><span class="watcha-star half left" data-value="9"></span><span class="watcha-star half right" data-value="10"></span></div>
				<br/>
				<textarea id="bookRatingText" name="ba_content" cols="2"></textarea>
				<br>
				<div>
				<a class="button big" onclick="bookGradeInsert();">등록</a>
				<a class="button big" data-dismiss="modal" onclick="clearBookGrade();">취소</a>
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