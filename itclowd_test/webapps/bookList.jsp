<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function(){
		reqBookMainIndie(null,null,null);
		var rating = 0;
		var clicked = false;
		$('#indieRating .watcha-star').mouseenter(function(){
			$(this).parent().children('.watcha-star').removeClass('over horver');
		     $(this).addClass('over horver').prevAll(".watcha-star").addClass('over horver');
		     $('#indieRating .watcha-star').mouseleave(function(){
		    	 if(clicked) {
		    		 $(this).parent().children('.watcha-star').removeClass('over horver');
		    		 $('.watcha-star:eq('+rating+')').addClass('over horver').prevAll(".watcha-star").addClass('over horver');
		    	 }
		    	 else $(this).parent().children('.watcha-star').removeClass('over horver');
		     });
		     return false;
		});
		$('#indieRating .watcha-star').click(function(){
			$(this).parent().children('.watcha-star').removeClass('over horver');
		     $(this).addClass('over horver').prevAll(".watcha-star").addClass('over horver');
		     rating = $(this).data()-1;
		     clicked = true;
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
			var member = <%=request.getSession().getAttribute("authUser")%>;
			$('#indieGradeModal').modal('show');
			document.getElementById("indieGradeNo").value = ib_no;
			document.getElementById("indieMemberNo").value = member.m_no;
			document.getElementById("indieGradeTitle").innerHTML = title;
		}else{
			alert('로그인 하셔야만 이 기능을 사용하실 수 있습니다.')
		}
	}
</script>
</head>
<body>
	<div class="guideBook">
        <div class="center-box">
        <div id="bookCate">
        <ul>
        <li><a onclick="reqBookMainIndie(1, 0,null);">전체</a></li>
        <li><a onclick="reqBookMainIndie(1, 1,null);">소설</a></li>
        <li><a onclick="reqBookMainIndie(1, 2,null);">시</a></li>
        <li><a onclick="reqBookMainIndie(1, 3,null);">여행/에세이</a></li>
        <li><a onclick="reqBookMainIndie(1, 4,null);">사진</a></li>
        <li><a onclick="reqBookMainIndie(1, 5,null);">디자인</a></li>
        <li><a onclick="reqBookMainIndie(1, 6,null);">일러스트/회화</a></li>
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
      <ol class="sections-wrapper">
    <li id="evalmore-section" class="evalmore responsive-mask section"><h2 class="title">독립출판물</h2>
    <div class="slider-wrapper"  > <!-- 무비카드 컨테이너 -->
    <div class="vertical-list" >
       <ul id="bookIndie-grid-container" class="grid-container" style="position: relative; width: 100%;" >
		
</ul>
	

</div></div><!-- slider wrap end -->
</li>
</ol>
	
	<div id="pageContainer">
	</div>
</div>
</div>

  <!-- The Modal1 -->
  <div class="modal fade" id="indieGradeModal">
    <div class="modal-dialog">
      <div class="modal-content">
      	<form action="#" method="post">
      	<input type="hidden" id="indieGradeNo" name="ib_no" value="">
      	<input type="hidden" id="indieMemberNo" name="m_no" value="">
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
				<textarea cols="2"></textarea>
				<br>
				<div>
				<a class="button big">등록</a>
				<a class="button big">취소</a>
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