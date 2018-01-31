<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <title>메인 틀</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="assets/css/mainmenu.css" />
<link rel="stylesheet" href="menubarcss.css" />
<link rel="stylesheet" href="what2.css" />
  <!-- <link rel="stylesheet" href="bootstrap.css"> -->
<script src="menubar.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>
  <script src="mainboot.js"></script>
  <link rel="stylesheet" href="mainboot.css">
  <!-- <script src="bootstrap.js"></script> -->
  <script src="mainCustom.js"></script>
  <script type="text/javascript">
	  function jointest(){
		  alert();
	  }
  </script>
</head>
<body>
    <div id="blog-header-container">
        <img alt="보여랏" src="main_img.jpg" width="100%" height="300px">
    </div>
    <div id="menu-container">
        <header id="header">
						<h1><a href="#">itcrowd</a></h1>
						<nav class="links">
							<ul>
								<li><a href="#">취향테스트</a></li>
								<li><a href="#">추천도서</a></li>
								<li><a href="#">판매</a></li>
								<li><a href="#">마이페이지</a></li>
							</ul>
						</nav>
						<nav class="main">
							<ul>
								<li class="search">
									<a class="fa-search" href="#search">Search</a>
									<form id="search" method="get" action="#">
										<input type="text" name="query" placeholder="Search" />
									</form>
								</li>
								<li class="menu">
									<a class="fa-bars" href="#menu">Menu</a>
								</li>
							</ul>
						</nav>
					</header>

				<!-- Menu -->
					<section id="menu">
						<!-- Search -->
						<u:isLogin>
							<section>
							</section>
						<!-- Links -->
							<section>
								<ul class="links">
									<li>
										<a href="#">
											<h3>Lorem ipsum</h3>
											<p>Feugiat tempus veroeros dolor</p>
										</a>
									</li>
									<li>
										<a href="#">
											<h3>Dolor sit amet</h3>
											<p>Sed vitae justo condimentum</p>
										</a>
									</li>
									<li>
										<a href="#">
											<h3>Feugiat veroeros</h3>
											<p>Phasellus sed ultricies mi congue</p>
										</a>
									</li>
									<li>
										<a href="#">
											<h3>Etiam sed consequat</h3>
											<p>Porta lectus amet ultricies</p>
										</a>
									</li>
								</ul>
							</section>
						</u:isLogin>
						<u:notLogin>
						<!-- Actions -->
							<section>
								<ul class="actions vertical">
									<li><h3>저희 보담의 회원이 되시면 더욱 편리한 서비스를 제공합니다.</h3></li>
									<li><input type="email" name="member_id" placeholder="이메일입력"/></li>
									<li><input type="password" name="member_pass" placeholder="비밀번호입력"/></li>
									<li align="center"><a href="#" onclick="myModal1();">비밀번호 찾기</a>&nbsp;&nbsp;<a href="#">비회원 주문조회하기</a></li>
									<li><a href="#" class="button big fit">보담 로그인</a></li>
									<li><a href="#"  class="button big fit" onclick="myModal();" data-toggle="modal" data-target="#myModal">보담 회원가입</a></li>
									<li><a href="#" ><img src="images/kakao_login_btn1.png" width="100%"/></a></li>
									<li></li>
								</ul>
								
							</section>
						</u:notLogin>
					</section>
    </div>
    <div id="blog-container"> <!-- content container -->
    
     <ol class="sections-wrapper">
    <li id="evalmore-section" class="evalmore responsive-mask section"><h2 class="title">베스트셀러</h2>
    <div class="slider-wrapper"> <!-- 무비카드 컨테이너 -->
    <div class="vertical-list">

       <ul class="grid-container" style="position: relative; width: 100%; height: 670px;">

<!-- 무비카드 -->
   <div class="movie-card size-1x1 poster-type base_movie  user-action-m4d83i card grid-1 hei-1 top-0 left-0">
  <div class="poster-wrapper">
    <img class="poster" src="https://dhgywazgeek0d.cloudfront.net/watcha/image/upload/c_fill,h_400,q_80,w_280/v1515038416/j1lacfu7iq7mrz2ti3xt.jpg" width="100%">
    <div class="predicted-rating">
    </div>
    <div class="detail-opener gradation"></div>
    <div class="bottom">
    </div>
    <div class="action-wrapper">
      <div class="movie-title">메이즈 러너: 데스 큐어</div>
      <div class="rating"><span class="watcha-star half left" data-value="0.5"></span><span class="watcha-star half right" data-value="1"></span><span class="watcha-star half left" data-value="1.5"></span><span class="watcha-star half right" data-value="2"></span><span class="watcha-star half left" data-value="2.5"></span><span class="watcha-star half right" data-value="3"></span><span class="watcha-star half left" data-value="3.5"></span><span class="watcha-star half right" data-value="4"></span><span class="watcha-star half left" data-value="4.5"></span><span class="watcha-star half right" data-value="5"></span></div>
      <div class="wish-comment">
        <div class="wish">
          <span class="icon"></span>
          보고싶어요
        </div>
        <div class="comment">
          <span class="icon"></span>
          <span class="text">코멘트 쓰기</span>
        </div>
      </div>
      <div class="meh">관심없어요</div>
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
</div><!-- 무비카드5 -->
</ul>

       <ul class="grid-container" style="position: relative;  width: 100%; height: 670px;">

<!-- 무비카드 -->
   <div class="movie-card size-1x1 poster-type base_movie  user-action-m4d83i card grid-1 hei-1 top-0 left-1">
  <div class="poster-wrapper">
    <img class="poster" src="https://dhgywazgeek0d.cloudfront.net/watcha/image/upload/c_fill,h_400,q_80,w_280/v1515038416/j1lacfu7iq7mrz2ti3xt.jpg" width="100%">
    <div class="predicted-rating">
    </div>
    <div class="detail-opener gradation"></div>
    <div class="bottom">
    </div>
    <div class="action-wrapper">
      <div class="movie-title">메이즈 러너: 데스 큐어</div>
      <div class="rating"><span class="watcha-star half left" data-value="0.5"></span><span class="watcha-star half right" data-value="1"></span><span class="watcha-star half left" data-value="1.5"></span><span class="watcha-star half right" data-value="2"></span><span class="watcha-star half left" data-value="2.5"></span><span class="watcha-star half right" data-value="3"></span><span class="watcha-star half left" data-value="3.5"></span><span class="watcha-star half right" data-value="4"></span><span class="watcha-star half left" data-value="4.5"></span><span class="watcha-star half right" data-value="5"></span></div>
      <div class="wish-comment">
        <div class="wish">
          <span class="icon"></span>
          보고싶어요
        </div>
        <div class="comment">
          <span class="icon"></span>
          <span class="text">코멘트 쓰기</span>
        </div>
      </div>
      <div class="meh">관심없어요</div>
    </div>
  </div>
</div> <!-- 무비카드 -->
<!-- 무비카드2 -->
<div class="movie-card size-1x1 poster-type base_movie  user-action-mayhiq card grid-1 hei-1 top-0 left-2">
  <div class="poster-wrapper" style="position: relative;">
    <img class="poster" src="https://dhgywazgeek0d.cloudfront.net/watcha/image/upload/c_fill,h_400,q_80,w_280/v1515140175/eobxmkw3eego39udca86.jpg" width="100%">
    <div class="predicted-rating">
    </div>
    <div class="detail-opener gradation"></div>
    <div class="bottom">
    </div>
    <div class="action-wrapper">
      <div class="movie-title">코코</div>
      <div class="rating"><span class="watcha-star half left" data-value="0.5"></span><span class="watcha-star half right" data-value="1"></span><span class="watcha-star half left" data-value="1.5"></span><span class="watcha-star half right" data-value="2"></span><span class="watcha-star half left" data-value="2.5"></span><span class="watcha-star half right" data-value="3"></span><span class="watcha-star half left" data-value="3.5"></span><span class="watcha-star half right" data-value="4"></span><span class="watcha-star half left" data-value="4.5"></span><span class="watcha-star half right" data-value="5"></span></div>
      <div class="wish-comment">
        <div class="wish">
          <span class="icon"></span>
          보고싶어요
        </div>
        <div class="comment">
          <span class="icon"></span>
          <span class="text">코멘트 쓰기</span>
        </div>
      </div>
      <div class="meh">관심없어요</div>
    </div>
  </div><!-- 무비카드2 -->
</div>
</ul>
  
    

  

</div></div><!-- slider wrap end -->
</li>
</ol>
    </div> <!-- content container -->
<div id="footer"> <!-- footer시작 -->
	footer 설정 나중에
</div> 


<div id="modal_container">
<!-- The Modal1 -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">보담 회원가입</h4>
          <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
        </div>
      	<form action="#" method="post" id="joinForm">
        <!-- Modal body -->
        <div class="modal-body">
          <section>
			<ul class="actions vertical">
				<li><h3>저희 보담의 회원이 되시면 더욱 편리한 서비스를 제공합니다.</h3></li>
				<li><input type="email" name="m_id" placeholder="이메일입력"/><span id="emailChk">이메일 중복여부 나타내주기</span></li>
				<li><input type="text" name="m_name" placeholder="닉네임입력"/><span id="nameChk">닉네임 중복여부 나타내주기</span></li>
				<li><input type="password" name="m_pass" placeholder="비밀번호입력"/><span>여유되면 비밀번호 안정성 나타내줌 </span></li>
				<li><input type="password" name="m_pass_chk" placeholder="비밀번호확인"/><span id="passChk">비번 잘 쳤는지 알려줌</span></li>
			</ul>
			</section>
        </div>
      	</form>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <a href="#"  class="button big"  onclick="joinMember();">보담 회원가입신청</a>
          <a href="#"  class="button big"  data-dismiss="modal">Close</a>
          <!-- <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button> -->
        </div>
      </div>
    </div>
  </div><!-- modal1 end -->
  
  <!-- The Modal1 -->
  <div class="modal fade" id="myModal1">
    <div class="modal-dialog">
      <div class="modal-content">
      	<form action="#" method="post">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">비밀번호 찾기</h4>
          <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
        </div>
        <!-- Modal body -->
        <div class="modal-body">
          <section>
			<ul class="actions vertical">
				<li><h3>이메일(아이디)을 적어주시면 비밀번호를 보내드립니다. </h3></li>
				<li><input type="email" name="m_id" placeholder="이메일입력"/></li>
				<li><a href="#"  class="button big"  >비밀번호 찾기</a></li>
			</ul>
			</section>
        </div>
      	</form>
      </div>
    </div>
  </div><!-- modal1 end -->
</div>


</body>


</html>