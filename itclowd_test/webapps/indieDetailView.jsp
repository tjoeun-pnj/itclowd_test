<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="../optim.css">
<script type="text/javascript">
	$(document).ready(function(){
		var article = <%= request.getAttribute("article") %>;
		
		var prdinfo = document.getElementById('prdInfo');
		var setHTML = '';
		setHTML = '<div class="keyImg"><img src="/image/'+article.ib_img+'" alt="" class="BigImage "></div>';
		document.getElementById('imgArea').innerHTML = setHTML;
		setHTML = '<table border="1"><tbody><tr class=""><td class="name" colspan="2">'+article.ib_title+'</td></tr><tr><td colspan="2" style="padding:0px 0 20px 0px">저자:  '+article.ib_writer+'  / 발행년도:  '+article.ib_date
					+'  / 사이즈:  '+article.ib_size+'  / 페이지: '+article.ib_page+'</tr></tbody></table><table><tbody><tr class=""><th style="padding:4px 0 10px 0">가격</th><td style="padding:4px 0 10px 0px">'
					+'<span id="span_product_price_text" class="ProductPrice">'+article.ib_price+'원</span><input id="product_price" name="product_price" value="'+article.ib_price+'" type="hidden">'
					+'</td></tr></tbody><tbody><tr><th style="padding:3px 0 10px 0">수량</th><td style="padding:3px 0 10px 0px">'
					+'<p><input id="quantity" name="quantity_opt[]" style="" value="1" type="text"><img src="http://img.echosting.cafe24.com/design/skin/mono/product/btn_basketUp.gif" alt="up" class="QuantityUp" onclick="indieBookChangeCount(true)"><img src="http://img.echosting.cafe24.com/design/skin/mono/product/btn_basketDown.gif" alt="down" class="QuantityDown" onclick="indieBookChangeCount(false)"></p>'
					+'</td></tr></tbody></table><table><tbody class="xans-element- xans-product xans-product-option xans-record-"></tbody></table><div id="zoom_wrap"></div>'
					+'<div class="xans-element- xans-product xans-product-action btnArea "><a class="button small">구매하기</a>&nbsp;<a class="button small " onclick="goBasket('+article.ib_no+')">장바구니</a>';
		document.getElementById('prdInfo').innerHTML = setHTML;
		setHTML = '<p align="center"><img alt="" src="/image/'+article.ib_img1+'"></p><p align="left">&nbsp;</p><p align="center"><img alt="" src="/image/'+article.ib_img2+'"></p><p align="left">&nbsp;</p><p align="center"><img alt="" src="/image/'+article.ib_img3+'"></p><p align="left">&nbsp;</p>'
				+ '<p align="left"><strong>'+article.ib_title+'</strong></p><p align="left"><strong><br></strong></p><p align="left"><br></p><p align="left"><strong>책소개 </strong></p><p align="left"><br></p>'
				+ '<p align="left">'+replaceAll(article.ib_intro,'.','.<br/>' )+'</p><p align="left"><br></p><p align="left"><br></p><p align="left"><br></p>'
				+ '<p align="left"><strong>저자</strong></p><strong><p align="left"><br></p></strong><p align="left">'+article.ib_writer+'</p>'
				+ '<p align="left"><br></p><p align="left"><br></p><p align="left"><br></p><p align="left"><br></p><p align="left"><br></p>'
				+ '<p align="left">발행년도: '+article.date+' </p><p align="left">사이즈: '+article.ib_size+'&nbsp; </p><p align="left">페이지: '+article.ib_page+'p</p><p align="left"><br></p>'
		document.getElementById('detailArea2').innerHTML = setHTML;
		setHTML = '<a onclick="indieGradeModal('+article.ib_no+',\''+article.ib_title+'\');"><h4>평점주기</h4></a>';
		$('#prdReview .boardBtn').html(setHTML);
		$('#quantity').change(function(){
			var value = $(this).val();
			if(value <= 0){
				alert('수량은 1보다 작을 수 없습니다.');
				$(this).val(1);
				indieBookChangePrice(1);
				return;
			}
			indieBookChangePrice($(this).val());
		});
		
		
		
		var rating = 0;
		var clicked = false;
		var grade = document.getElementById("indieGradeStar");
		$('#indieRating .watcha-star').click(function(){
			$(this).parent().children('.watcha-star').removeClass('over horver');
		     $(this).addClass('over horver').prevAll(".watcha-star").addClass('over horver');
		     rating = $(this).data('value')-1;
		     grade.value = $(this).data('value');
		     clicked = true;
		     return false;
		});
	});
	
	function goBasket(ib_no){
		var member = <%=request.getSession().getAttribute("authUser")%>;
		if(member == null){
			alert('로그인 하십시오~');
			return; 
		}
		var form = document.createElement("form");
        form.setAttribute("method", 'post');
        form.setAttribute("action", '/take.ba');
        var hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", 'ib_no');
        hiddenField.setAttribute("value", ib_no);
        form.appendChild(hiddenField);
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", 'm_no');
        hiddenField.setAttribute("value", member.m_no);
        form.appendChild(hiddenField);
        hiddenField = document.createElement("input");
        hiddenField.setAttribute("type", "hidden");
        hiddenField.setAttribute("name", 'c_amount');
        hiddenField.setAttribute("value", document.getElementById('quantity').value);
        form.appendChild(hiddenField);
        document.body.appendChild(form);
        form.submit();

	}
	
	function indieBookChangeCount(upDown){
		var quantity =	document.getElementById('quantity');
		var value = quantity.value*1;
		if(upDown){
			quantity.value = value+1;
			value += 1;
			indieBookChangePrice(value);
		}else{
			if(value <= 1) {
				alert('수량은 1보다 작을 수 없습니다.');
				return;
			}
			quantity.value = value-1;
			value -= 1;
			indieBookChangePrice(value);
		}
	}
	function indieBookChangePrice(count){
		var price =	document.getElementById('product_price').value;
		var priceText = document.getElementById('span_product_price_text');
		priceText.innerHTML = price * count;
	}
	
	function indieGradeModal(ib_no, title) {
		console.log('오기는 하냐??/');
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
</script>
</head>
<body>
<div class="guideBookDetail">
        <div class="center-box-detail">
    
    
<!-- S:헤더 -->    
    
  
    
<!-- S:본문 -->
<div id="container">
    
    
<div id="contents">


<div class="xans-element- xans-product xans-product-detail"><!-- 이미지 영역 -->
<div id="imgArea" class="xans-element- xans-product xans-product-image "></div>
<!-- //이미지 영역 -->
<!-- 상세정보 내역 -->
<div id="prdInfo"></div></div></div>
<!-- //상단 제품 정보 -->



<div class="xans-element- xans-product xans-product-additional "><!-- 상품상세정보 -->
<div id="prdDetail">
        <div id="detailArea2" align="center">
            </div>
    </div>
        
 <!-- 상품 사용 후기 -->
    <div id="prdReview">

        <div class="d_bbs"><h4>간단평</h4></div>
        <div class="boardBtn">
                
        </div>
        <div id="reviewArea">
            <p class="nodata">게시물이 없습니다</p> 
            <table border="1" summary="상품의 사용후기입니다." class="boardList">
                <tbody>
				<tr class="first xans-record-">
				<td width="40px">3</td>
				                       
				                        <td class="subject" style="padding:7px 0 0 20px"><img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_lock.gif" alt="비밀글"> <a href="/product/provider/review_read.xml?no=95&amp;board_no=6&amp;spread_flag=T">재입고문의!!!</a> </td>
				                        <td> 류****</td>
				                        <td>2018-02-19</td>
				                        <td>0</td>
				                    </tr>
				<tr class="xans-record-">
				<td width="40px">2</td>
				                       
				                        <td class="subject" style="padding:7px 0 0 20px"> <a href="/product/provider/review_read.xml?no=63&amp;board_no=6&amp;spread_flag=T">혹시 3차입고 예정은 없나요?</a> </td>
				                        <td> 손****</td>
				                        <td>2018-01-11</td>
				                        <td>22</td>
				                    </tr>
				<tr class="xans-record-">
				<td width="40px">1</td>
				                       
				                        <td class="subject" style="padding:7px 0 0 20px">&nbsp;&nbsp;&nbsp;<img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/ico_re.gif" alt="답변">  <a href="/product/provider/review_read.xml?no=67&amp;board_no=6&amp;spread_flag=T">혹시 3차입고 예정은 없나요?</a> </td>
				                        <td> itcrowd</td>
				                        <td>2018-01-12</td>
				                        <td>7</td>
				                    </tr><tr id="product-qna-read"><td colspan="6" align="left"><div class="contArea"><p></p><p>안녕하세요.</p>
				<p>itcrowd입니다</p>
				</tbody>
				</table>           
        </div>
    </div>
    <!-- //상품 사용 후기 -->
    <!-- 상품 Q&A -->
    <div id="prdQnA">
        <div class="d_bbs"><img src="/web/upload/detail_qna.jpg"></div>
        <div class="boardBtn">
                <a href="/board/product/list.html?board_no=6" class="btn_design3"><img src="/web/upload/detail_list.jpg"></a>
                <a href="/board/product/write.html?board_no=6&amp;product_no=822&amp;cate_no=44&amp;display_group=1" class="btn_design3"><img src="/web/upload/detail_write.jpg"></a>
        </div>   
        <div id="qnaArea">
            <p class="nodata">게시물이 없습니다</p>            
                    </div>
    </div>
    <!-- //상품 Q&A -->
  
</div>
</div>

</div>
<!-- L:본문 -->
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
    
</div>
</div>




</body>
</html>