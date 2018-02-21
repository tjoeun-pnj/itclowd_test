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
		setHTML = '<div class="keyImg"><img src="'+article.ib_img+'" alt="" class="BigImage "></div>';
		document.getElementById('imgArea').innerHTML = setHTML;
		setHTML = '<table border="1"><tbody><tr class=""><td class="name" colspan="2">'+article.ib_title+'</td></tr><tr><td colspan="2" style="padding:0px 0 20px 0px">저자:  '+article.ib_writer+'  / 발행년도:  '+article.ib_date
					+'  / 사이즈:  '+article.ib_size+'  / 페이지: '+article.ib_page+'</tr></tbody></table><table><tbody><tr class=""><th style="padding:4px 0 10px 0">가격</th><td style="padding:4px 0 10px 0px">'
					+'<span id="span_product_price_text" class="ProductPrice">'+article.ib_price+'원</span><input id="product_price" name="product_price" value="'+article.ib_price+'" type="hidden">'
					+'</td></tr></tbody><tbody><tr><th style="padding:3px 0 10px 0">수량</th><td style="padding:3px 0 10px 0px">'
					+'<p><input id="quantity" name="quantity_opt[]" style="" value="1" type="text"><img src="http://img.echosting.cafe24.com/design/skin/mono/product/btn_basketUp.gif" alt="up" class="QuantityUp"><img src="http://img.echosting.cafe24.com/design/skin/mono/product/btn_basketDown.gif" alt="down" class="QuantityDown"></p>'
					+'</td></tr></tbody></table><table><tbody class="xans-element- xans-product xans-product-option xans-record-"></tbody></table><div id="zoom_wrap"></div>'
					+'<div class="xans-element- xans-product xans-product-action btnArea "><a class="button small">구매하기</a>&nbsp; <a class="button small">장바구니</a>';
		document.getElementById('prdInfo').innerHTML = setHTML;
		setHTML = '<p align="center"><img alt="" src="'+article.ib_img1+'"></p><p align="left">&nbsp;</p><p align="center"><img alt="" src="'+article.ib_img2+'"></p><p align="left">&nbsp;</p><p align="center"><img alt="" src="'+article.ib_img3+'"></p><p align="left">&nbsp;</p>'
				+ '<p align="left"><strong>'+article.ib_title+'</strong></p><p align="left"><strong><br></strong></p><p align="left"><br></p><p align="left"><strong>책소개 </strong></p><p align="left"><br></p>'
				+ '<p align="left">'+replaceAll(article.ib_intro,'.','.<br/>' )+'</p><p align="left"><br></p><p align="left"><br></p><p align="left"><br></p>'
				+ '<p align="left"><strong>저자</strong></p><strong><p align="left"><br></p></strong><p align="left">'+article.ib_writer+'</p>'
				+ '<p align="left"><br></p><p align="left"><br></p><p align="left"><br></p><p align="left"><br></p><p align="left"><br></p>'
				+ '<p align="left">발행년도: '+article.date+' </p><p align="left">사이즈: '+article.ib_size+'&nbsp; </p><p align="left">페이지: '+article.ib_page+'p</p><p align="left"><br></p>'
				+ '<p align="left"><br></p><p align="left"><br></p><p align="left"><br></p><p align="left"><br></p><p align="left"><br></p><p align="left"><br></p><p align="left"><br></p><p align="left"><br></p><p align="left"><br></p><p align="left"><br></p>'
				+ '<p align="left">배송료 3,000원<br>50,000원 이상 구매 시 무료배송</p><p align="left"><br>배송업체 및 기간<br>로젠택배 (my page에서 주문번호 입력 시 조회 가능합니다.)<br>주문일(무통장 입금은 결제 완료일)로부터 2-5일 소요되며, 주말 및 공휴일은 배송기간에서 제외됩니다.<br>별책부록의 모든 상품은 소량으로 입고되므로, 1일 이내에 입금 확인이 되지 않으면 다음 주문 고객을 위해 주문이 취소됩니다.</p><p align="left"><br>교환 및 환불<br>상품 수령 후 7일 이내 Q&amp;A게시판에 문의해주세요.<br>포장을 뜯지 않은 경우에 한하여 교환 및 환불 가능합니다.<br>(단, 제품의 하자에 의한 교환이 아닌 경우 왕복 배송비 구매자 부담)<br>* used 제품은 교환 및 환불이 불가합니다.</p><p align="left"><br>문의<br>T <a href="tel:(070) 5103 - 0341">(070) 5103 - 0341</a><br>E <a href="mailto:byeolcheck@naver.com">byeolcheck@naver.com</a><br>온라인샵에 등록되어 있는 상품에 대한 문의는 Q&amp;A 게시판을 이용해 주세요.<br></p><p align="left"><br></p>';
		document.getElementById('detailArea2').innerHTML = setHTML;
	});
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

        <div class="d_bbs"><img src="/web/upload/detail_review.jpg"></div>
        <div class="boardBtn">
                <a href="/board/product/list.html?board_no=4" class="btn_design3"><img src="/web/upload/detail_list.jpg"></a>
                <a href="/board/product/write.html?board_no=4&amp;product_no=822&amp;cate_no=44&amp;display_group=1" class="btn_design3"><img src="/web/upload/detail_write.jpg"></a>
           
        </div>

      
            
          
        <div id="reviewArea">
         

            <p class="nodata">게시물이 없습니다</p>            
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

    
</div>
</div>
</body>
</html>