<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인 컨텐츠</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
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
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
	        type:"POST",
	        url:"./book/mainBest",
	        dataType : "json",
	        success: function(data){
	        	if(data.result) setBookBest(data.json);
	        	else alset("book 실패");
	        },
	        error: function(xhr, status, error) {
	            alert("bookSet 실패");
	        }  
	    });
	});
	function setBookBest(json){
		var bVo = JSON.parse(json).item;
		console.log(bVo);
	}
</script>
</head>
<body>
       
	<div class="guide">
        <div class="center-box">
      <ol class="sections-wrapper">
    <li id="evalmore-section" class="evalmore responsive-mask section"><h2 class="title">베스트셀러</h2>
    <div class="slider-wrapper"  > <!-- 무비카드 컨테이너 -->
    <div class="vertical-list" >
       <ul class="grid-container" style="position: relative; width: 100%; height: 470px;" >

<!-- 무비카드 -->
   <div class="movie-card size-1x1 poster-type base_movie  user-action-m4d83i card grid-1 hei-1 top-0 left-0">
  <div class="poster-wrapper">
    <img class="poster" src="http://image.aladin.co.kr/product/12370/46/cover150/8991141331_1.jpg" width="150px" height="220px">
    <div class="predicted-rating">
    </div>
    <div class="detail-opener gradation"></div>
    <div class="bottom">
    </div>
    <div class="action-wrapper">
      <div class="movie-title">메이즈 러너: 데스 큐어</div>
      <div class="rating"><span class="watcha-star half left" data-value="0.5"></span><span class="watcha-star half right" data-value="1"></span><span class="watcha-star half left" data-value="1.5"></span><span class="watcha-star half right" data-value="2"></span><span class="watcha-star half left" data-value="2.5"></span><span class="watcha-star half right" data-value="3"></span><span class="watcha-star half left" data-value="3.5"></span><span class="watcha-star half right" data-value="4"></span><span class="watcha-star half left" data-value="4.5"></span><span class="watcha-star half right" data-value="5"></span></div>
      <div class="wish-comment">
        <div class="comment">
          <span class="icon"></span>
          <span class="text">코멘트 쓰기</span>
        </div>
      </div>
    </div>
  </div>
</div> <!-- 무비카드 -->
<!-- 무비카드2 -->
<div class="movie-card size-1x1 poster-type base_movie  user-action-mayhiq card grid-1 hei-1 top-0 left-1">
  <div class="poster-wrapper" style="position: relative;">
    <img class="poster" src="https://dhgywazgeek0d.cloudfront.net/watcha/image/upload/c_fill,h_400,q_80,w_280/v1515140175/eobxmkw3eego39udca86.jpg" width="100%">
    <div class="predicted-rating">
    </div>
    <div class="detail-opener gradation"></div>
    <div class="bottom">
    </div>
  </div>
</div><!-- 무비카드2 -->
<!-- 무비카드3 -->
<div class="movie-card size-1x1 poster-type base_movie  user-action-mayhiq card grid-1 hei-1 top-0 left-2">
  <div class="poster-wrapper" style="position: relative;">
    <img class="poster" src="https://dhgywazgeek0d.cloudfront.net/watcha/image/upload/c_fill,h_400,q_80,w_280/v1515140175/eobxmkw3eego39udca86.jpg" width="100%">
    <div class="predicted-rating">
    </div>
    <div class="detail-opener gradation"></div>
    <div class="bottom">
    </div>
  </div>
</div><!-- 무비카드3 -->
<!-- 무비카드4 -->
<div class="movie-card size-1x1 poster-type base_movie  user-action-mayhiq card grid-1 hei-1 top-0 left-3">
  <div class="poster-wrapper" style="position: relative;">
    <img class="poster" src="https://dhgywazgeek0d.cloudfront.net/watcha/image/upload/c_fill,h_400,q_80,w_280/v1515140175/eobxmkw3eego39udca86.jpg" width="100%">
    <div class="predicted-rating">
    </div>
    <div class="detail-opener gradation"></div>
    <div class="bottom">
    </div>
  </div>
</div><!-- 무비카드4 -->
<!-- 무비카드5 -->
<div class="movie-card size-1x1 poster-type base_movie  user-action-mayhiq card grid-1 hei-1 top-0 left-4">
  <div class="poster-wrapper" style="position: relative;">
    <img class="poster" src="https://dhgywazgeek0d.cloudfront.net/watcha/image/upload/c_fill,h_400,q_80,w_280/v1515140175/eobxmkw3eego39udca86.jpg" width="100%">
    <div class="predicted-rating">
    </div>
    <div class="detail-opener gradation"></div>
    <div class="bottom">
    </div>
  </div>
</div>
<!-- 무비카드5 -->
<div class="movie-card size-1x1 poster-type base_movie  user-action-mayhiq card grid-1 hei-1 top-1 left-0">
  <div class="poster-wrapper" style="position: relative;">
    <img class="poster" src="https://dhgywazgeek0d.cloudfront.net/watcha/image/upload/c_fill,h_400,q_80,w_280/v1515140175/eobxmkw3eego39udca86.jpg" width="100%">
    <div class="predicted-rating">
    </div>
    <div class="detail-opener gradation"></div>
    <div class="bottom">
    </div>
  </div>
</div><!-- 무비카드5 -->
<!-- 무비카드5 -->
<div class="movie-card size-1x1 poster-type base_movie  user-action-mayhiq card grid-1 hei-1 top-1 left-1">
  <div class="poster-wrapper" style="position: relative;">
    <img class="poster" src="https://dhgywazgeek0d.cloudfront.net/watcha/image/upload/c_fill,h_400,q_80,w_280/v1515140175/eobxmkw3eego39udca86.jpg" width="100%">
    <div class="predicted-rating">
    </div>
    <div class="detail-opener gradation"></div>
    <div class="bottom">
    </div>
  </div>
</div><!-- 무비카드5 -->
<!-- 무비카드5 -->
<div class="movie-card size-1x1 poster-type base_movie  user-action-mayhiq card grid-1 hei-1 top-1 left-2">
  <div class="poster-wrapper" style="position: relative;">
    <img class="poster" src="https://dhgywazgeek0d.cloudfront.net/watcha/image/upload/c_fill,h_400,q_80,w_280/v1515140175/eobxmkw3eego39udca86.jpg" width="100%">
    <div class="predicted-rating">
    </div>
    <div class="detail-opener gradation"></div>
    <div class="bottom">
    </div>
  </div>
</div><!-- 무비카드5 -->
<!-- 무비카드5 -->
<div class="movie-card size-1x1 poster-type base_movie  user-action-mayhiq card grid-1 hei-1 top-1 left-3">
  <div class="poster-wrapper" style="position: relative;">
    <img class="poster" src="https://dhgywazgeek0d.cloudfront.net/watcha/image/upload/c_fill,h_400,q_80,w_280/v1515140175/eobxmkw3eego39udca86.jpg" width="100%">
    <div class="predicted-rating">
    </div>
    <div class="detail-opener gradation"></div>
    <div class="bottom">
    </div>
  </div>
</div><!-- 무비카드5 -->
<!-- 무비카드5 -->
<div class="movie-card size-1x1 poster-type base_movie  user-action-mayhiq card grid-1 hei-1 top-1 left-4">
  <div class="poster-wrapper" style="position: relative;">
    <img class="poster" src="https://dhgywazgeek0d.cloudfront.net/watcha/image/upload/c_fill,h_400,q_80,w_280/v1515140175/eobxmkw3eego39udca86.jpg" width="100%">
    <div class="predicted-rating">
    </div>
    <div class="detail-opener gradation"></div>
    <div class="bottom">
    </div>
  </div>
</div><!-- 무비카드5 -->
</ul>


</div></div><!-- slider wrap end -->
</li>
</ol>
        
        
        </div>
    </div>
</body>
</html>