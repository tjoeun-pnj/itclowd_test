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
  <link rel="stylesheet" href="mainboot.css">
<script src="menubar.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>
  <script src="mainboot.js"></script>

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
									<li><input type="text" name="member_id" placeholder="아이디입력"/></li>
									<li><input type="password" name="member_pass" placeholder="비밀번호입력"/></li>
									<li align="center"><a href="#">비밀번호 찾기</a>&nbsp;&nbsp;<a href="#">비회원 주문조회하기</a></li>
									<li><a href="#" class="button big fit">보담 로그인</a></li>
									<li><a href="#" class="button big fit">보담 회원가입</a></li>
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
  <div class="wrapper responsive-mask">
    <div class="upper">
      <div class="name">ITCROWD</div>

      <div class="sns">
        <a href="http://facebook.com/watcha.net" target="_blank" class="fb">페이스북</a>
        <a href="https://twitter.com/watcha_app" target="_blank" class="twitter">트위터</a>
        <a href="http://frograms.com/blog" target="_blank" class="blog">블로그</a>
      </div>
    </div>

    <div class="count-like-tweet">
      <div class="count">
        <div class="text">
          <span class="star-icon"></span>
          <span class="number">365,039,584</span>
          개의 별점 평가가 쌓이고 있습니다.
        </div>
      </div>

      <div class="social_plugin_wrapper">
        <div class="fb-like plugin fb_iframe_widget" data-href="http://watcha.net" data-send="false" data-layout="button_count" data-width="130" data-show-faces="false" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=126765124079533&amp;container_width=100&amp;href=http%3A%2F%2Fwatcha.net%2F&amp;layout=button_count&amp;locale=ko_KR&amp;sdk=joey&amp;send=false&amp;show_faces=false&amp;width=130"><span style="vertical-align: bottom; width: 103px; height: 20px;"><iframe name="f91909d3e2ee14" width="130px" height="1000px" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" title="fb:like Facebook Social Plugin" src="https://www.facebook.com/v2.8/plugins/like.php?app_id=126765124079533&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fconnect%2Fxd_arbiter%2Fr%2FlY4eZXm_YWu.js%3Fversion%3D42%23cb%3Df2ed1387c47cdd%26domain%3Dwatcha.net%26origin%3Dhttps%253A%252F%252Fwatcha.net%252Ff47712cc1cefb4%26relation%3Dparent.parent&amp;container_width=100&amp;href=http%3A%2F%2Fwatcha.net%2F&amp;layout=button_count&amp;locale=ko_KR&amp;sdk=joey&amp;send=false&amp;show_faces=false&amp;width=130" style="border: none; visibility: visible; width: 103px; height: 20px;" class=""></iframe></span></div>
        <iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" class="twitter-share-button twitter-share-button-rendered twitter-tweet-button" title="Twitter Tweet Button" src="https://platform.twitter.com/widgets/tweet_button.83d5793f6ebbe2046330abda6016ae93.en.html#dnt=false&amp;id=twitter-widget-0&amp;lang=en&amp;original_referer=https%3A%2F%2Fwatcha.net%2F&amp;related=watcha_app&amp;size=m&amp;text=%EB%82%B4%20%EC%B7%A8%ED%96%A5%EC%9D%84%20%EB%B6%84%EC%84%9D%ED%95%98%EB%8A%94%20%EC%98%81%ED%99%94%20%EC%B6%94%EC%B2%9C%20-%20%EC%99%93%EC%B1%A0!%20%EC%98%88%EC%A0%84%EC%97%90%20%EB%B3%B8%20%EC%98%81%ED%99%94%EC%97%90%20%EB%B3%84%EC%A0%90%EB%A7%8C%20%EB%A7%A4%EA%B8%B0%EB%A9%B4%2C%20%EC%99%93%EC%B1%A0%EA%B0%80%20%EB%82%B4%20%EC%B7%A8%ED%96%A5%EC%9D%84%20%EB%B6%84%EC%84%9D%ED%95%B4%EC%84%9C%20%EC%9E%90%EB%8F%99%EC%9C%BC%EB%A1%9C%20%EC%98%81%ED%99%94%EB%A5%BC%20%EC%B6%94%EC%B2%9C%ED%95%B4%EB%93%9C%EB%A0%A4%EC%9A%94!&amp;time=1517153575508&amp;type=share&amp;url=http%3A%2F%2Fwatcha.net" style="position: static; visibility: visible; width: 60px; height: 20px;" data-url="http://watcha.net"></iframe>
      </div>
    </div>
    <div class="info">
      사업자명 (ITCROWD) 사업자번호 (***-**-*****)
      Copyright © 2011–2018 by Frograms. Inc. All rights reserved
    </div>
    <div class="legal-button-wrapper">
      <span class="legal-watcha-button">왓챠 서비스 이용약관</span>   |   <span class="legal-privacy-button">개인정보 취급방침</span>
    </div>
    <div class="popup-legal">
      <div class="legal-element legal-watcha">
  <div class="modal">
    <div class="legal-dialog">
      <div class="legal-dialog__header">왓챠 서비스 이용 약관</div>
      <a class="legal-dialog__close">
        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="30px" height="30px" viewBox="0 0 30 30" enable-background="new 0 0 30 30" xml:space="preserve">
          <g transform="scale(1)">
            <line fill="none" stroke="#999 " stroke-width="2" stroke-miterlimit="10" x1="0.815" y1="0.8" x2="19.184" y2="19.2"></line>
            <line fill="none" stroke="#999 " stroke-width="2" stroke-miterlimit="10" x1="0.815" y1="19.2" x2="19.184" y2="0.8"></line>
          </g>
        </svg>
      </a>
      <div class="legal-dialog__content">
        <select name="version" id="legal-agreement-version-selector" class="legal-version-selector"><option value="1">1</option></select>
        <div class="legal-dialog__content-text">
          본 약관은 2011년 11월 1일부터 적용됩니다.<br><br><br>제 1 조 목적<br><br>이 약관은 (주)프로그램스(이하 "회사")에서 제공하는 왓챠 및 왓챠에서 제공하는 제반 서비스(이하 "서비스")에 접속과 사용자에 의해서 업로드 및 다운로드 되어 표시되는 모든 정보, 텍스트, 이미지 및 기타 자료를 이용하는 이용자(이하 "회원")와 서비스 이용에 관한 권리 및 의무와 책임사항, 기타 필요한 사항을 규정하는 것을 목적으로 합니다.<br><br><br>제2조 약관의 게시와 효력, 개정<br><br>① 회사는 서비스의 가입 과정에 본 약관을 게시합니다.<br><br>② 회사는 관련법에 위배되지 않는 범위에서 본 약관을 변경할 수 있습니다.<br><br>③ 회원은 회사가 전항에 따라 변경하는 약관에 동의하지 않을 권리가 있으며, 이 경우 회원은 회사에서 제공하는 서비스 이용 중단 및 탈퇴 의사를 표시하고 서비스 이용 종료를 요청할 수 있습니다. 다만, 회사가 회원에게 변경된 약관의 내용을 통보하면서 회원에게 "7일 이내 의사 표시를 하지 않을 경우 의사 표시가 표명된 것으로 본다는 뜻"을 명확히 통지하였음에도 불구하고, 거부의 의사표시를 하지 아니한 경우 회원이 변경된 약관에 동의하는 것으로 봅니다.<br><br><br>제3조 약관의 해석과 예외 준칙<br><br>① 회사는 제공하는 개별 서비스에 대해서 별도의 이용약관 및 정책을 둘 수 있으며, 해당 내용이 이 약관과 상충할 경우 개별 서비스의 이용약관을 우선하여 적용합니다.<br><br>② 본 약관에 명시되지 않은 사항이 관계법령에 규정되어 있을 경우에는 그 규정에 따릅니다.<br><br><br>제4조 용어의 정의<br><br>① 서비스: 개인용 컴퓨터 (PC), TV, 휴대형 단말기, 전기통신설비 등 포함 각종 유무선 장치와 같이 구현되는 단말기와 상관없이 회원이 이용할 수 있는 왓차 및 왓차 관련 제반 서비스를 의미합니다. 제반 서비스에는 개발자 및 서비스 제공자가 왓차 Open Application Programming Interface 서비스와 이를 이용하여 개발한 API 응용 애플리케이션 또는 웹서비스도 포함됩니다.<br><br>② 회원: 회사와 서비스 이용계약을 체결하고 회사가 제공하는 서비스를 이용하는 모든 사용자를 의미합니다.<br><br>③ 아이디: 회원의 식별 및 서비스 이용을 위하여 회원이 선정하고 회사가 부여한 문자 및 숫자의 조합을 의미합니다.<br><br>④ 비밀번호: 회원의 개인 정보 및 확인을 위해서 회원이 정한 문자 또는 숫자의 조합을 의미합니다.<br><br>⑤ 도메인: 회원의 서비스 이용을 위하여 회원이 신청하여 회사가 부여한 고유한 인터넷 주소를 의미합니다. 회사는 제공하는 제반 서비스를 위해서 서비스에 따라 별도의 도메인 주소를 추가적으로 제공합니다.<br><br>⑥ 게시물: 회원이 서비스를 이용함에 있어 회원이 서비스에 게시한 문자, 문서, 그림, 음성, 링크, 파일 혹은 이들의 조합으로 이루어진 정보 등 모든 정보나 자료를 의미합니다.<br><br>⑦ 유료서비스: 회사가 유료로 제공하는 각종 온라인디지털콘텐츠 및 제반 서비스를 의미합니다.<br><br><br>제5조 이용계약의 체결<br><br>① 이용계약은 회원이 왓차 서비스 및 제반 서비스에서 제공하는 회원 가입 페이지에서 서비스 이용약관에 동의한 후 이용신청을 하고 신청한 내용에 대해서 회사가 승낙함으로써 체결됩니다.<br><br>② 회사는 이용약관에 동의한 후 이용신청한 사용자에 대해서 원칙적으로 접수 순서에 따라 서비스 이용을 승낙함을 원칙으로 합니다. 다만 업무 수행상 또는 기술상 지장이 있을 경우 일정시간 가입승인을 유보할 수 있습니다.<br><br>③ 회사는 다음 각 호에 해당하는 신청에 대해서 승낙하지 않거나 사후에 이용계약을 해지할 수 있습니다.<br>- 가입신청자가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우<br>- 제3자의 전자우편 주소를 이용하여 신청한 경우<br>- 허위의 정보를 기재하거나, 회사가 필수적으로 입력을 요청한 부분을 기재하지 않은 경우<br>- 부정한 용도로 서비스를 사용하고자 하는 경우<br>- 이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우<br>- 회사의 정책에 적합하지 않는 회원으로 판단되는 경우나 서비스 제공이 곤란한 경우<br>- 회원의 이용 목적이나 서비스 이용 방법이 회사의 재산권이나 영업권을 침해하거나 침해할 우려가 있는 경우<br>- 비정상적인 방법을 통하여 아이디 및 도메인을 대량으로 생성하는 행위<br><br>④ 회사는 회원에 대해 회사정책에 따라 등급별로 구분하여 이용시간, 이용횟수, 서비스 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다.<br><br>⑤ 회원은 회사에 언제든지 회원 탈퇴를 요청하여 이용계약을 해지할 수 있습니다.<br><br>⑥ 회원은 회원 가입 시 기재한 개인정보의 내용에 변경이 발생한 경우, 즉시 변경사항을 정정하여 기재하여야 합니다. 변경의 지체로 인하여 발생한 회원의 손해에 대해 회사는 책임을 지지 않습니다.<br><br>⑦ 회사는 관련 법률 및 회사의 개인정보취급방침에서 정한 바에 따라 회원에게 요청하는 회원정보 및 기타정보 항목을 추가, 삭제 등 변경하여 수집 및 이용할 수 있습니다.<br><br><br>제6조 개인정보보호 의무<br><br>① 회사는 정보통신망법 등 관계 법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위해 노력합니다. 개인정보의 보호 및 사용에 대해서는 관련법 및 회사의 개인정보취급방침이 적용됩니다. 다만, 회사의 공식 사이트 이외의 링크된 사이트에서는 회사의 개인정보취급방침이 적용되지 않습니다.<br><br>② 회사는 서비스를 중단하거나 회원이 개인정보 제공 동의를 철회한 경우에는 신속하게 회원의 개인정보를 파기합니다. 단, 전자상거래 등에서의 소비자 보호에 관한 법률 등 관련 법률에서 정하는 바에 따라 일정 정보는 보관할 수 있습니다.<br><br>③ 회사는 서비스 개선 및 회원 대상의 서비스 소개 등의 목적으로 회원의 동의 하에 관계 법령에서 정하는 바에 따라 추가적인 개인정보를 수집할 수 있습니다.<br><br>④ 회사는 법률에 특별한 규정이 있는 경우를 제외하고는 회원의 별도 동의 없이 회원의 계정정보를 포함한 일체의 개인정보를 제3자에게 공개하거나 제공하지 아니합니다.<br><br>⑤ 회사는 향후 제공하는 서비스에서 회원의 편의를 위해서 회원의 계정 정보를 사용할 수 있도록 링크 및 기타 방법을 제공할 수 있습니다.<br><br><br>제7조 회원의 아이디 및 비밀번호<br><br>① 회원은 아이디와 비밀번호에 관해서 관리책임이 있습니다.<br><br>② 회원은 아이디 및 비밀번호를 제3자가 이용하도록 제공하여서는 안됩니다.<br><br>③ 회사는 회원이 아이디 및 비밀번호를 소홀히 관리하여 발생하는 서비스 이용상의 손해 또는 회사의 고의 또는 중대한 과실이 없는 제3자의 부정이용 등으로 인한 손해에 대해 책임을 지지 않습니다.<br><br>④ 회원은 아이디 및 비밀번호가 도용되거나 제3자가 사용하고 있음을 인지한 경우에는 이를 즉시 회사에 통지하고 회사의 안내에 따라야 합니다.<br><br><br>제8조 회사의 의무<br><br>① 회사는 계속적이고 안정적인 서비스의 제공을 위하여 최선을 다하여 노력합니다.<br><br>② 회사는 회원이 안전하게 서비스를 이용할 수 있도록 현재 인터넷 보안기술의 발전수준과 회사가 제공하는 서비스의 성격에 적합한 보안시스템을 갖추고 운영해야 합니다.<br><br>③ 회사는 서비스를 이용하는 회원으로부터 제기되는 의견이나 불만이 정당하다고 인정할 경우를 이를 처리하여야하 합니다. 이때 처리과정에 대해서 고객에게 메일 및 게시판 등의 방법으로 전달합니다.<br><br>④ 회사는 정보통신망 이용촉진 및 정보보호에 관한 법률, 통신비밀보호법, 전기통신사업법 등 서비스의 운영, 유지와 관련 있는 법규를 준수합니다.<br><br><br>제9조 회원의 의무<br><br>① 회원은 다음 각호에 해당하는 행위를 해서는 안됩니다.<br>- 이용 신청 또는 회원정보 변경 시 허위내용 등록<br>- 타인의 정보 도용<br>- 회사의 운영자, 임직원, 회사를 사칭하거나 관련 정보를 도용<br>- 회사가 게시한 정보의 변경<br>- 회사와 기타 제3자의 저작권, 영업비밀, 특허권 등 지적재산권에 대한 침해<br>- 회사와 다른 회원 및 기타 제3자를 희롱하거나, 위협하거나 명예를 손상시키는 행위<br>- 외설, 폭력적인 메시지, 기타 공서양속에 반하는 정보를 공개 또는 게시하는 행위<br>- 해킹을 통해서 다른 사용자의 정보를 취득하는 행위<br>- 기타 현행 법령에 위반되는 불법적인 행위<br><br>② 회사는 회원이 전항에서 금지한 행위를 하는 경우, 위반 행위의 경중에 따라 서비스의 이용정지/계약의 해지 등 서비스 이용 제한, 수사 기관에의 고발 조치 등 합당한 조치를 취할 수 있습니다.<br><br>③ 회원은 회사의 명시적 사전 동의가 없는 한 서비스의 이용권한 및 기타 이용계약상의 지위를 제3자에게 양도, 증여, 대여할 수 없으며 이를 담보로 제공할 수 없습니다.<br><br>④ 회원은 관계법, 이 약관의 규정, 이용안내 및 서비스와 관련하여 공지한 주의사항, 회사가 통지하는 사항 등을 준수하여야 하며, 기타 회사의 업무에 방해되는 행위를 하여서는 안 됩니다.<br><br>⑤ 회원은 회사의 사전 허락 없이 회사가 정한 이용 목적과 방법에 반하여 영업/광고활동 등을 할 수 없고, 회원의 서비스 이용이 회사의 재산권, 영업권 또는 비즈니스 모델을 침해하여서는 안됩니다.<br><br><br>제10조 서비스의 제공 및 변경<br><br>① 회사는 회원에게 아래와 같은 서비스를 제공합니다.<br>- 왓차 및 왓차 통합계정 서비스<br>- 기타 회사가 추가 개발하거나 다른 회사와의 제휴계약 등을 통해 회원에게 제공하는 일체의 서비스<br><br>③ 회사는 정보통신설비의 보수점검, 교체 및 고장, 통신두절 또는 운영상 상당한 이유가 있는 경우 서비스의 제공을 일시적으로 중단할 수 있습니다. 이 경우 회사는 회원에게 공지사항 게시판 및 메일 등의 방법으로 통지합니다. 다만, 회사가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있습니다.<br><br>④ 회사는 회원과 별도로 서면 계약을 체결하여 왓차 서비스 및 제반 서비스의 브랜드 특성을 이용할 수 있는 명시적인 권리를 부여하지 아니하는 한, 회원에게 회사 또는 서비스의 상호, 상표, 서비스표, 로고, 도메인 네임 및 기타 식별력 있는 브랜드 특성을 이용할 수 있는 권리를 부여하지 않습니다.<br><br>⑤ 회사가 제공하는 서비스의 형태와 기능, 디자인 등 필요한 경우 수시로 변경되거나, 중단될 수 있습니다. 회사는 이 경우 개별적인 변경에 대해서 회원에게 사전 통지하지 않습니다. 다만, 회원에게 불리한 것으로 판단되는 경우 전자우편으로 통하여 이를 공지합니다.<br><br>⑥ 전항에 의해서 제공되는 서비스가 변경 및 중단될 경우 무료로 제공되는 서비스에 대해서는 회원에게 별도로 보상하지 않습니다.<br><br><br>제11조 광고의 게제<br><br>① 회사는 서비스 운영과 관련하여 회원정보, 고객이 입력한 정보를 활용하여 광고를 게재할 수 있습니다. 회원은 서비스 이용 시 노출되는 맞춤 광고 게재에 대해 동의합니다.<br><br>② 회사는 서비스상에 게재되어 있거나 서비스를 통한 광고주의 판촉활동에 회원이 참여하거나 교신 또는 거래를 함으로써 발생하는 손실과 손해에 대해 책임을 지지 않습니다.<br><br><br>제12조 전자우편을 통한 정보의 제공<br><br>① 회사는 회원이 서비스 이용에 필요하다고 인정되는 다양한 정보를 회원이 제공한 전자우편 주소로 제공할 수 있습니다.<br><br>② 회사는 서비스 운영을 위해 회원정보를 활용하여 영리목적의 광고성 전자우편을 전송할 수 있습니다. 회원이 이를 원하지 않는 경우에는 언제든지 서비스 홈페이지 또는 서비스 내부 설정페이지 등을 통하여 수신거부를 할 수 있습니다.<br><br>③ 회사는 다음 각호에 해당하는 경우 회원의 동의여부와 상관없이 전자우편으로 발송할 수 있습니다.<br>- 이용 신청에서 입력한 전자우편 주소의 소유를 확인하기 위해서 인증메일을 발송하는 경우<br>- 회원의 정보가 변경되어 확인하기 위해서 인증메일을 발송하는 경우<br>- 기타 서비스를 제공함에 있어 회원이 반드시 알아야 하는 중대한 정보라고 회사가 판단하는 경우<br><br><br>제13조 서비스 이용의 제한<br><br>① 회사는 천재지변이나 국가비상사태, 해결이 곤란한 기술적 결함 또는 서비스 운영의 심각한 변화 등 불가항력적인 경우가 발생 또는 발생이 예상될 때는 서비스의 전부 또는 일부를 예고 없이 제한하거나 중지할 수 있습니다.<br><br>② 서비스를 이용하게 됨으로써 서비스 영역에서 발생하는 회원 사이의 문제에 대해 회사는 책임을 지지 않습니다.<br><br>③ 회원의 관리 소홀로 인하여 ID 및 비밀번호의 유출로 인해 회원에게 서비스 이용상의 손해가 발생하거나 제3자에 의한 부정이용 등으로 회원의 의무조항을 위반한 경우 ID및 해당 도메인의 이용이 제한될 수 있습니다.<br><br>④ 회사가 본 약관 제9조의 위반 행위를 조사하는 과정에서 당해 회원 ID및 도메인이 특정 위반행위에 직접적으로 관련되어 있는 경우 등 다른 회원의 권익 보호 및 서비스의 질서유지를 위해 불가피할 경우에는 해당 ID 및 도메인의 이용을 일시적으로 정지할 수 있습니다. 이에 대해 회원은 서비스 홈페이지 또는 전자 우편 등을 통해 이의신청을 할 수 있습니다.<br><br><br>제14조 게시물의 권리와 책임<br><br>① 회원이 서비스 내에 작성한 텍스트, 이미지, 동영상, 링크 등의 기타 정보(이하 "게시물")에 대한 책임 및 권리는 게시물을 등록한 회원에게 있습니다.<br><br>② 회사는 회원이 작성한 컨텐츠에 대해서 감시 및 관리할 수 없으며 이에 대해서 책임지지 않습니다. 회사는 회원이 등록하는 게시물의 신뢰성, 진실성, 정확성 등에 대해서 책임지지 않으며 보증하지 않습니다.<br><br>③ 서비스에 대한 저작권 및 지적재산권, 회사가 작성한 게시물의 저작권은 회사에 귀속됩니다. 단, 회원이 단독 또는 공동으로 작성한 게시물 및 제휴계약에 따라 제공된 저작물 등은 제외합니다.<br><br>④ 회원은 자신이 서비스 내에 게시한 게시물을 회사가 국내ㆍ외에서 다음 목적으로 사용하는 것을 허락합니다. <br>- 서비스(제3자가 운영하는 사이트 또는 미디어의 일정 영역 내에 입점하여 서비스가 제공되는 경우를 포함합니다)내에서 게시물을 사용하기 위하여 게시물의 크기를 변환하거나 단순화하는 등의 방식으로 수정하는 것<br>- 회사에서 운영하는 다른 사이트 또는 다른 회사가 운영하는 사이트에 게시물을 복제ㆍ전송ㆍ전시하는 것<br>- 회사의 서비스를 홍보하기 위한 목적으로 미디어, 통신사 등에게 게시물의 내용을 보도, 방영하게 하는 것. 단, 이 경우 회사는 회원의 개별 동의없이 미디어, 통신사 등에게 게시물 또는 회원정보를 제공하지 않습니다.<br><br>⑤ 회원이 회원탈퇴를 한 경우에는 본인 도메인에 기록된 저작물 일체는 삭제됩니다. 단, 저작물이 공동 저작을 통해 작성된 경우에는 공동 저작자의 도메인에 해당 게시물이 남을 수 있고, 제3자에 의하여 보관되거나 무단복제 등을 통하여 복제됨으로써 해당 저작물이 삭제되지 않고 재 게시된 경우에 대하여 회사는 책임을 지지 않습니다. 또한, 본 약관 및 관계 법령을 위반한 회원의 경우 다른 회원을 보호하고, 법원, 수사기관 또는 관련 기관의 요청에 따른 증거자료로 활용하기 위해 회원탈퇴 후에도 관계 법령이 허용하는 한도에서 회원의 아이디 및 회원정보를 보관할 수 있습니다.<br><br>⑥ 회원의 게시물 또는 저작물이 회사 또는 제3자의 저작권 등 지적재산권을 침해함으로써 발생하는 민∙형사상의 책임은 전적으로 회원이 부담하여야 합니다.<br><br><br>제15조 게시물의 관리<br><br>① 회원의 게시물이 정보통신망법 및 저작권법등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 게시물의 게시중단 및 삭제 등을 요청할 수 있으며, 회사는 관련법에 따라 조치를 취하여야 합니다.<br><br>② 회사는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 본 약관 및 기타 회사 정책, 관련법에 위반되는 경우에는 관련법에 따라 해당 게시물에 대해 임시조치 등을 취할 수 있습니다.<br><br>③ 회원이 비공개로 설정한 게시물에 대해서는 회사를 포함한 다른 사람이 열람할 수 없습니다. 단, 법원, 수사기관이나 기타 행정기관으로부터 정보제공을 요청 받은 경우나 기타 법률에 의해 요구되는 경우에는 회사를 포함한 다른 사람이 해당 게시물을 열람할 수 있습니다.<br><br><br>제16조 서비스 이용의 중지 및 해지<br><br>① 회원은 회사에 언제든지 회원 탈퇴를 요청할 수 있으며, 회사는 이와 같은 요청을 받았을 경우, 회사가 별도로 고지한 방법에 따라 신속하게 처리합니다.<br><br>② 회원이 서비스의 이용중지를 원하는 경우에는 회사가 제공하는 서비스 페이지 또는 전자우편 등의 방법으로 회사에 중지신청을 할 수 있습니다. 회사는 이와 같은 요청을 받았을 경우, 회사가 별도로 고지한 방법에 따라 신속하게 처리합니다.<br><br>③ 회사는 회원이 본 약관 제9조의 이용자의 의무를 위반한 경우 및 서비스의 정상적인 운영을 방해한 경우에는 사전 통보 후 회원 자격을 제한, 이용계약을 해지하거나 또는 기간을 정하여 서비스의 이용을 중지할 수 있습니다.<br><br>④ 회사는 전항에도 불구하고, 저작권법 및 컴퓨터프로그램보호법을 위반한 불법프로그램의 제공 및 운영방해, 정보통신망법을 위반한 불법통신 및 해킹, 악성프로그램의 배포, 접속권한 초과행위 등과 같이 관련법을 위반한 경우에는 즉시 영구이용정지를 할 수 있습니다.<br><br>⑤ 회사는 회원이 계속해서 3개월 이상 로그인하지 않는 경우, 회원정보의 보호 및 운영의 효율성을 위해 이용을 제한할 수 있습니다.<br><br>⑥ 회원은 본 조에 따른 이용제한 등에 대해 회사가 정한 절차에 따라 이의신청을 할 수 있습니다. 이 때 이의가 정당하다고 회사가 인정하는 경우 회사는 즉시 서비스의 이용을 재개합니다.<br><br><br>제17조 책임제한<br><br>① 회사는 회원의 약관, 서비스 이용 방법 및 이용 기준을 준수하지 않는 등 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여는 책임을 지지 않습니다.<br><br>② 회사는 서비스를 통하여 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 보증하지 않습니다.<br><br>③ 회사는 회원 간 또는 회원과 제3자 상호간에 서비스를 매개로 하여 거래 등을 한 경우에는 책임이 면제됩니다.<br><br>④ 회사는 무료로 제공되는 서비스 이용과 관련하여 관련법에 특별한 규정이 없는 한 책임을 지지 않습니다.<br><br>⑤ 회사는 천재지변, 전쟁, 기간통신사업자의 서비스 중지, 제3자가 제공하는 오픈아이디의 인증 장애, 해결이 곤란한 기술적 결함 기타 불가항력으로 인하여 서비스를 제공할 수 없는 경우 책임이 면제됩니다.<br><br>⑥ 회사는 사전에 공지된 서비스용 설비의 보수, 교체, 정기점검, 공사 등 부득이한 사유로 서비스가 중지되거나 장애가 발생한 경우에 대하서는 책임이 면제됩니다.<br><br>⑦ 회원은 자신의 결정에 의하여 회사의 서비스를 사용하여 특정 프로그램이나 정보 등을 다운받거나 접근함으로써 입게 되는 컴퓨터 시스템상의 손해나 데이터, 정보의 상실에 대한 책임을 집니다.<br><br>⑧ 회사는 기간통신사업자가 전기통신서비스를 중지하거나 정상적으로 제공하지 아니하여 손해가 발생한 경우에는 책임이 면제됩니다.<br><br>⑨ 회원의 컴퓨터 오류, 신상정보 및 전자우편 주소의 부정확한 기재, 비밀번호 관리의 소홀 등 회원의 귀책사유로 인해 손해가 발생한 경우 회사는 책임을 지지 않습니다.<br><br>⑩ 회사는 회원의 컴퓨터 환경이나 회사의 관리 범위에 있지 아니한 보안 문제로 인하여 발생하는 제반 문제 또는 현재의 보안기술 수준으로 방어가 곤란한 네트워크 해킹 등 회사의 귀책사유 없이 발생하는 문제에 대해서 책임을 지지 않습니다.<br><br>⑪ 회사는 서비스가 제공한 내용에 대한 중요 정보의 정확성, 내용, 완전성, 적법성, 신뢰성 등에 대하여 보증하거나 책임을 지지 않으며, 사이트의 삭제, 저장실패, 잘못된 인도, 정보에 대한 제공에 대한 궁극적인 책임을 지지 않습니다. 또한, 회사는 회원이 서비스 내 또는 웹사이트상에 게시 또는 전송한 정보, 자료, 사실의 신뢰도, 정확성, 완결성, 품질 등 내용에 대해서는 책임을 지지 않습니다.<br><br>⑫ 회사는 회원 상호간 또는 회원과 제 3자 상호 간에 서비스를 매개로 발생한 분쟁에 대해 개입할 의무가 없으며 이로 인한 손해를 배상할 책임도 없습니다.<br><br>⑬ 회사는 회원이 서비스를 이용하여 기대하는 효용을 얻지 못한 것에 대하여 책임을 지지 않으며 서비스에 대한 취사 선택 또는 이용으로 발생하는 손해 등에 대해서는 책임이 면제됩니다.<br><br>⑭ 회사는 회원의 게시물을 등록 전에 사전심사 하거나 상시적으로 게시물의 내용을 확인 또는 검토하여야 할 의무가 없으며, 그 결과에 대한 책임을 지지 않습니다.<br><br><br>제18조 준거법 및 재판관할<br><br>① 회사와 회원 간 제기된 소송에는 대한민국법을 준거법으로 합니다.<br><br>② 회사와 회원간 발생한 분쟁에 관한 소송은 민사소송법 상의 관할법원에 제소합니다.
        </div>
        <script type="text/javascript">
        $("#legal-agreement-version-selector").on("change", function(e){
          $.ajax({
            url: "/legals/" + e.target.value + ".json",
            dataType: "json",
            success: function(res){
              $(".legal-element.legal-watcha .legal-dialog__content .legal-dialog__content-text").html(res.description.replace(/\n/g, "<br>"));
            }
          })
        });
        </script>
      </div>
    </div>
  </div>
  <div class="modal-backdrop"></div>
</div>
      <div class="legal-element  legal-privacy ">
  <div class="modal">
    <div class="legal-dialog">
      <div class="legal-dialog__header">개인정보 취급방침</div>
      <a class="legal-dialog__close">
        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="30px" height="30px" viewBox="0 0 30 30" enable-background="new 0 0 30 30" xml:space="preserve">
          <g transform="scale(1)">
            <line fill="none" stroke="#999 " stroke-width="2" stroke-miterlimit="10" x1="0.815" y1="0.8" x2="19.184" y2="19.2"></line>
            <line fill="none" stroke="#999 " stroke-width="2" stroke-miterlimit="10" x1="0.815" y1="19.2" x2="19.184" y2="0.8"></line>
          </g>
        </svg>
      </a>
      <div class="legal-dialog__content">
        <select name="version" id="legal-privacy-version-selector" class="legal-version-selector"><option value="11">3</option>
<option value="10">2</option>
<option value="2">1</option></select>
        <div class="legal-dialog__content-text">
          <div class="legal-privacy-section-summary">
            개인정보처리방침<br><br>본 방침은 2016년 9월 27일부터 적용됩니다.<br><br>총칙<br>주식회사 프로그램스는(이하 ‘회사’라고 합니다)는 왓챠(Watcha), 왓챠플레이(WATCHA PLAY) 및 왓챠 관련 제반 서비스(이하 “서비스”라고 합니다)를 이용하는 회원의 개인정보 보호를 소중하게 생각하고, 회원의 개인정보를 보호하기 위하여 항상 최선을 다해 노력하고 있습니다.<br>회사는 개인정보 보호 관련 주요 법률인 개인정보 보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 “정 보통신망법”이라고 합니다.)을 비롯한 모든 개인정보 보호에 관련 법률 규정 및 국가기관 등이 제정한 고시, 훈령, 지침 등을 준수합니다.<br><br>본 개인정보취급방침은 왓챠, 왓챠플레이 및 왓챠 관련 제반 서비스를 이용하는 회원에 대하여 적용되며, 회원에 대하여 적용되며, 회원이 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보 보호를 위하여 어떠한 조처를 취하고 있는지 알립니다.<br><br>개인정보의 수집·이용에 대한 동의<br>회사에서 적법하고 공정한 방법에 의하여 서비스 이용계약의 성립 및 이행에 필요한 최소한의 개인정보를 수집하며 이용자의 개인 식별이 가능한 개인정보를 수집하기 위하여 회원가입시 개인정보수집·이용 동의에 대한 내용을 제공하고 회원이 '동의' 버튼을 클릭하면 개인정보 수집·이용에 대해 동의한 것으로 봅니다.<br><br>개인정보의 수집범위 및 수집방법<br>1. 회사는 회원가입, 상담, 서비스 신청 등 서비스 제공 및 계약이행을 위해 아래와 같이 개인정보를 수집할 수 있습니다.<br>- 아이디(이메일 주소), 비밀번호, 페이스북 이메일과 회원번호(페이스북 연동 회원에 한함), 이름, 생년월일, 성별,<br>내/외국인 여부, 아이핀 번호(아이핀 사용자의 경우), 휴대전화번호, 연계정보(CI), 중복확인정보(DI),<br>2. 회사는 회원이 유료 서비스를 이용하고자 하는 경우 결제 시점에 아래와 같이 결제에 필요한 정보를 수집할 수 있습니다.<br>- 결제수단 소유자 정보(이름, 주민등록번호), 신용카드정보, 휴대전화번호, 유선전화번호<br>3. 회사는 회원이 이벤트, 프로모션에 참여하는 경우 아래의 정보를 수집할 수 있습니다.<br>- 이름, 이메일 주소, 휴대전화번호, 주소, 생년월일<br>4. 서비스 이용과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다.<br>(1) PC : PC MacAddress, PC 사양정보, 브라우저 정보, 기타 서비스 이용 시 사용되는 프로그램 버전 정보<br>(2) 휴대전화(스마트폰) &amp; 스마트OS 탑재 모바일 기기(Tablet PC 등) : 모델명, 기기별 고유번호(UDID,IMEI 등), OS정보, 이동통신사, 구글/애플 광고 ID<br>(3) 기타 정보 : 서비스 이용(정지) 기록, 접속 로그, 쿠키, 접속 IP정보<br>5. 회사는 다음과 같은 방식으로 개인정보를 수집합니다.<br>(1) 홈페이지 이용 및 서면양식, 상담 게시판, 경품 행사 응모, 배송요청<br>(2) 제휴 회사로부터의 제공<br>(3) 생성정보 수집툴을 통한 수집<br>6. 기본적 인권침해의 우려가 있는 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 요구하지 않으며, 위의 항목 이외에 다른 어떠한 목적으로도 수집, 사용하지 않습니다.
          </div>
          <div class="legal-privacy-section-description">
            개인정보처리방침<br><br>본 방침은 2016년 9월 27일부터 적용됩니다.<br><br>총칙<br>주식회사 프로그램스는(이하 ‘회사’라고 합니다)는 왓챠(Watcha), 왓챠플레이(WATCHA PLAY) 및 왓챠 관련 제반 서비스(이하 “서비스”라고 합니다)를 이용하는 회원의 개인정보 보호를 소중하게 생각하고, 회원의 개인정보를 보호하기 위하여 항상 최선을 다해 노력하고 있습니다.<br>회사는 개인정보 보호 관련 주요 법률인 개인정보 보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률(이하 “정 보통신망법”이라고 합니다.)을 비롯한 모든 개인정보 보호에 관련 법률 규정 및 국가기관 등이 제정한 고시, 훈령, 지침 등을 준수합니다.<br><br>본 개인정보취급방침은 왓챠, 왓챠플레이 및 왓챠 관련 제반 서비스를 이용하는 회원에 대하여 적용되며, 회원에 대하여 적용되며, 회원이 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보 보호를 위하여 어떠한 조처를 취하고 있는지 알립니다.<br><br>개인정보의 수집·이용에 대한 동의<br>회사에서 적법하고 공정한 방법에 의하여 서비스 이용계약의 성립 및 이행에 필요한 최소한의 개인정보를 수집하며 이용자의 개인 식별이 가능한 개인정보를 수집하기 위하여 회원가입시 개인정보수집·이용 동의에 대한 내용을 제공하고 회원이 '동의' 버튼을 클릭하면 개인정보 수집·이용에 대해 동의한 것으로 봅니다.<br><br>개인정보의 수집범위 및 수집방법<br>1. 회사는 회원가입, 상담, 서비스 신청 등 서비스 제공 및 계약이행을 위해 아래와 같이 개인정보를 수집할 수 있습니다.<br>- 아이디(이메일 주소), 비밀번호, 페이스북 이메일과 회원번호(페이스북 연동 회원에 한함), 이름, 생년월일, 성별,<br>내/외국인 여부, 아이핀 번호(아이핀 사용자의 경우), 휴대전화번호, 연계정보(CI), 중복확인정보(DI),<br>2. 회사는 회원이 유료 서비스를 이용하고자 하는 경우 결제 시점에 아래와 같이 결제에 필요한 정보를 수집할 수 있습니다.<br>- 결제수단 소유자 정보(이름, 주민등록번호), 신용카드정보, 휴대전화번호, 유선전화번호<br>3. 회사는 회원이 이벤트, 프로모션에 참여하는 경우 아래의 정보를 수집할 수 있습니다.<br>- 이름, 이메일 주소, 휴대전화번호, 주소, 생년월일<br>4. 서비스 이용과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다.<br>(1) PC : PC MacAddress, PC 사양정보, 브라우저 정보, 기타 서비스 이용 시 사용되는 프로그램 버전 정보<br>(2) 휴대전화(스마트폰) &amp; 스마트OS 탑재 모바일 기기(Tablet PC 등) : 모델명, 기기별 고유번호(UDID,IMEI 등), OS정보, 이동통신사, 구글/애플 광고 ID<br>(3) 기타 정보 : 서비스 이용(정지) 기록, 접속 로그, 쿠키, 접속 IP정보<br>5. 회사는 다음과 같은 방식으로 개인정보를 수집합니다.<br>(1) 홈페이지 이용 및 서면양식, 상담 게시판, 경품 행사 응모, 배송요청<br>(2) 제휴 회사로부터의 제공<br>(3) 생성정보 수집툴을 통한 수집<br>6. 기본적 인권침해의 우려가 있는 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 요구하지 않으며, 위의 항목 이외에 다른 어떠한 목적으로도 수집, 사용하지 않습니다.<br><br>개인정보의 수집목적 및 이용목적<br>회사는 수집한 개인정보를 다음의 목적으로 활용합니다.<br>1. 서비스 제공에 관한 계약 이행 유료 서비스 제공에 따른 요금정산<br>콘텐츠 제공, 유료 서비스 이용에 대한 과금, 구매 및 요금 결제, 본인인증, 물품배송 또는 청구서 등 발송, 요금 추심<br>2. 회원관리<br>회원제 서비스 이용에 따른 본인확인, 개인식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 중복가입확인, 가 입의사 확인, 연령확인, 만 14세 미만 아동 개인정보 수집 시 법정대리인 동의 여부 확인, 만 18세 미만 아동 및 청 소년의 회원가입 시 법정대리인의 동의 여부 확인 및 법정대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달<br>3. 마케팅 및 광고에 활용<br>신규 서비스 개발 및 맞춤 서비스 제공, 통계학적 특성에 따른 서비스 제공 및 광고 게재, 서비스 유효성 확인, 접속 빈도 파악, 회원의 서비스 이용에 대한 통계, 이벤트 및 광고성 정보와 참여기회 제공<br><br>수집한 개인정보의 취급 위탁<br>회사는 서비스 향상을 위해 아래와 같이 외부 전문업체에 개인정보를 위탁하여 운영하고 있습니다.<br>[수탁업체 및 위탁업무내용]<br>- (주) 다날: 휴대폰을 통한 결제 대행<br>- (주) KG 이니시스: 신용카드를 통한 결제 대행<br>- NICE 신용평가 : 휴대폰, I-pin 사용자 본인인증<br><br>개인정보의 자동 수집 장치의 설치, 운영 및 그 거부에 관한 사항<br>쿠키란 웹 서버가 웹 브라우저에 보내어 저장했다가 서버의 부가적인 요청이 있을 때 다시 서버로 보내주는 문자열 정보(텍스트 파일)로 회원의 컴퓨터 하드디스크에 저장되며 쿠키 (cookie)에는 사용한 웹사이트의 정보 및 이용자 의 개인정보가 담길 수 있습니다.<br>1. 회사에서 운영하는 서비스는 인터넷을 통하여 회원의 정보를 저장하고 수시로 찾아내는 쿠키(cookie)를 설치, 운용하고 있습니다. 회원이 웹사이트에 접속을 하면 회원의 브라우저에 있는 쿠키의 내용을 읽고, 추가정보를 찾아 접속에 따른 성명 등의 추가 입력없이 서비스를 제공할 수 있습니다.<br>2. 회원은 쿠키 설치에 대한 선택권을 가지고 있으며 회원은 웹브라우저에서 옵션을 설정함으로서 모든 쿠키를 허용하거나, 또는 쿠키가 저장될 때마다 확인을 거치거나, 혹은 모든 쿠키의 저장을 거부할 수도 있습니다. 다만, 회원 님께서 쿠키 설치를 거부했을 경우 서비스 제공에 어려움이 발생할 수도 있습니다.<br>3. 서비스 쿠키를 통해 수집하는 정보는 회원의 고유번호에 한하며, 그 외의 다른 정보는 수집하지 않습니다. 서비 스가 쿠키(cookie)를 통해 수집한 회원의 고유번호는 다음의 목적을 위해 사용될 수 있습니다.<br>(1) 개인의 관심 분야에 따라 차별화 된 정보를 제공<br>(2) 회원과 비회원의 접속 빈도 또는 머문 시간 등을 분석하여 이용자의 취향과 관심분야를 파악하여 타겟 (target) 마케팅에 활용<br>(3) 서비스 이용 내역을 추적하여 분석을 통한 추후 개인 맞춤 서비스를 제공 및 서비스 개편 등의 척도로 활용<br>(4) 유료서비스 이용 시 이용기간 안내 등<br><br>개인정보의 공유 및 제공<br>1. 회사는 회원의 개인정보를 본 개인정보취급방침에서 명시된 범위를 초과하여 이용하거나 제 3자(타인 또는 타기 업 기관)에 제공하지 않습니다. 다만, 회원의 동의가 있거나 다음 각호의 어느 하나에 해당하는 경우에는 예외로 합 니다.<br>(1) 서비스 제공에 따른 요금 정산을 위하여 필요한 경우<br>(2) 관계법령에 의하여 수사, 재판 또는 행정상의 목적으로 관계기관으로부터 요구가 있을 경우<br>(3) 통계작성, 학술연구나 시장조사를 위하여 특정 개인을 식별할 수 없는 형태로 가공하여 제공하는 경우<br>(4) 금융실명거래및비밀보장에관한법률, 신용정보의이용및보호에관한법률, 전기통신기본법, 전기통신사업법, 지방 세법, 소비자보호법, 한국은행법, 형사소송법 등 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우<br>2. 영업의 전부 또는 일부를 양도하거나, 합병/상속 등으로 서비스제공자의 권리,의무를 이전 승계하는 경우 개인 정보보호 관련 회원의 권리를 보장하기 위하여 반드시 그 사실을 회원에게 통지합니다.<br>3. 보다 나은 서비스 제공을 위하여 회사가 귀하의 개인정보를 타 기업 등 제3자에게 제공하는 것이 필요한 경우에 는 회사는 사전에 제휴사가 누구인지, 제공 또는 공유되어야 하는 개인정보항목이 무엇인지, 제공 또는 공유되는 개인정보의 이용목적, 그리고 언제까지 공유되며 어떻게 보호 관리되는 지에 대하여 귀하께 고지하여 동의를 구하 는 절차를 거칠 것이며, 귀하께서 동의하지 않는 정보는 제3자에 제공하거나 제3자와 공유하지 않습니다. 이 경우 고지 및 동의방법은 홈페이지내의 공지사항을 통해 최소 7일 이전부터 고지함과 동시에 전자우편 등의 방법을 통 하여 동의를 받습니다. 단 시간상 사전 공지가 불가능한 예외적인 경우는 제공 및 공유가 공지와 동시에 이루어질 수 있습니다. 회사는 개인정보취급방침에서 정한 본래의 수집목적 및 이용목적에 반하여 무분별하게 귀하의 개인 정보가 제공되지 않도록 최대한 노력하겠습니다.<br><br>이용자 및 법정 대리인의 권리와 그 행사방법<br>1. 회원 및 법정 대리인은 언제든지 등록되어 있는 자신 또는 당해 만 14세 미만 아동의 개인정보를 조회하거나 수 정할 수 있으며 가입해지를 요청할 수도 있습니다.<br>2. 회원 또는 만 14세 미만 아동의 개인정보를 조회, 수정하기 위해서는 “개인정보변경”을, 가입해지를 위해서는 “회 원탈퇴”를 클릭하여 본인 확인 절차를 거친 후 직접 조회, 수정 또는 탈퇴가 가능합니다. 또는 개인정보관리책임자 에게 서면, 전화 또는 이메일로 연락하시면 지체 없이 조치하겠습니다.<br>3. 개인정보의 오류에 대한 정정을 요청하신 경우에는 정정을 완료하기 전까지 당해 개인정보를 이용 또는 제공하 지 않습니다. 또한 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통 지하여 정정이 이루어지도록 하겠습니다. 단, 다음과 같은 경우에는 예외적으로 개인정보의 열람 및 정정을 제한할 수 있습니다.<br>(1) 본인 또는 제 3 자의 생명, 신체, 재산 또는 권익을 현저하게 해할 우려가 있는 경우<br>(2) 당해 서비스 제공자의 업무에 현저한 지장을 미칠 우려가 있는 경우<br>(3) 법령에 위반하는 경우<br>4. 회사는 회원 또는 법정 대리인의 요청에 의해 해지 또는 삭제된 개인정보는 "수집한 개인정보의 보유 및 이용기 간"에 명시된 바에 따라 처리하고 그 외의 용도로 열람 또는 이용할 수 없도록 처리하고 있습니다.<br>5. 회사는 타인의 개인정보를 도용하여 회원가입 등을 하였음을 알게 된 때 지체없이 해당 아이디에 대한 서비스 이용정지 또는 회원탈퇴 등 필요한 조치를 취합니다. 또한 자신의 개인정보 도용을 인지한 이용자가 해당 아이디에 대한 서비스 이용정지 또는 회원탈퇴를 요구하는 경우에도 회사는 즉시 조치를 취합니다.<br><br>개인정보의 보관기간 및 이용기간<br>1. 이용자의 개인정보는 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기됩니다. 회원이 회원탈퇴를 하거 나 개인정보 허위기재로 인해 회원 ID 삭제 처분을 받은 경우 수집된 개인정보는 완전히 삭제되며 어떠한 용도로도 이용할 수 없도록 처리됩니다. 다만, 도용으로 인한 원치 않는 회원탈퇴 등의 피해가 발생할 우려가 있으므로 탈퇴 신청 후 7일의 유예기간 동안 개인정보를 임시 보관하게 되며, 이는 이용 해지 시 이용자에게 고지됩니다. 7일 후에 는 회사의 회원정보 데이터베이스(DB)에서 완전히 삭제됩니다.<br>2. 또한 명의 도용 등 분쟁 발생시 본인확인을 위해 제출 받은 신분증 사본은 본인확인 후 즉시 파기합니다. 만 18세 미만 아동 및 청소년의 법정대리인 정보는 해당 아동 및 청소년이 성년에 도달하거나 해당 아동 및 청소년의 회원 탈퇴에 따른 개인정보 파기 시 함께 파기됩니다.<br>3. 이용자의 개인정보는 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기되나, 아래 각 항목에 해당하는 경우에는 명시한 기간 동안 보관할 수 있으며, 그 외 다른 목적으로는 사용하지 않습니다.<br>(1) 불건전한 서비스 이용으로 서비스에 물의를 일으킨 이용자의 경우 사법기관 수사의뢰를 하거나 다른 회원을 보호할 목적으로 1년간 해당 개인정보를 보관할 수 있습니다.<br>(2) 관계법령의 규정에 의하여 보관할 필요가 있는 경우 회사는 수집 및 이용 목적 달성 후에도 관계법령 에서 정한 일정 기간 동안 회원의 개인정보를 보관할 수 있습니다.<br>가. 계약 또는 청약철회 등에 관한 기록 : 5년<br>나. 대금결제 및 재화의 공급에 관한 기록 : 5년<br>다. 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 라. 표시, 광고에 관한 기록 : 1년<br>마. 웹사이트 방문기록 : 1년<br><br>개인정보의 파기절차 및 방법<br>회사는 수집한 개인정보의 이용목적이 달성된 후 별도의 DB로 옮겨져 보관기간 및 이용기간에 따라 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.<br>1. 파기절차<br>회원이 서비스 가입 등을 위해 기재한 개인정보는 서비스 해지 등 이용목적이 달성된 후 내부 방침 및 기타 관련 법 령에 의한 정보보호 사유에 따라 일정기간( 개인정보 보관기간 및 이용기간 참조) 동안 저장 보관된 후 삭제되거나 파기합니다.<br>2. 파기방법<br>서면양식에 기재하거나, 종이에 출력된 개인정보는 분쇄기로 분쇄하여 파기하고, 전자적 파일형태로 저장된 개인 정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.<br><br>링크 사이트<br>회사는 운영중인 서비스 홈페이지를 통하여 회원에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있 습니다. 이 경우 해당 사이트의 「개인정보취급방침」은 회사가 운영중인 서비스의 「개인정보취급방침」과 무관하므로 새로 방문한 사이트의 「개인정보취급방침」을 확인하시기 바랍니다.<br><br>회원의 권리와 의무<br>회원은 본인의 개인정보를 최신의 상태로 정확하게 입력하여 불의의 사고를 예방해주시기 바랍니다. 이용자가 입력한 부정확한 정보로 인해 발생하는 사고의 책임은 이용자 자신에게 있으며 타인 정보의 도용 등 허위정보를 입력 할 경우 계정의 이용이 제한될 수 있습니다.<br>회사가 운영하는 서비스를 이용하는 회원은 개인정보를 보호 받을 권리와 함께 스스로를 보호하고 타인의 정보를 침해하지 않을 의무도 가지고 있습니다. 회원은 아이디(ID), 비밀번호를 포함한 개인정보가 유출되지 않도록 조심 하여야 하며, 게시물을 포함한 타인의 개인정보를 훼손하지 않도록 유의해야 합니다. 만약 이 같은 책임을 다하지 못하고 타인의 정보 및 타인의 존엄성을 훼손할 경우에는 「정보통신망 이용촉진 및 정보보호 등에 관한 법률」등에 의해 처벌 받을 수 있습니다.<br><br>고지의 의무<br>현 「개인정보취급방침」 내용의 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지의 '공지사항'을 통해 고지하고, 개정 내용이 이용자에게 불리할 경우에는 30일간 고지할 것입니다. 변경 관련 문의는 고객센터를 통해 할 수 있습니다.<br><br>개인정보관리책임자 및 담당자<br>회사는 회원의 개인정보보호를 가장 중요시하며, 회원의 개인정보가 훼손, 침해 또는 누설되지 않도록 최선을 다하고 있습니다. 서비스를 이용하시면서 발생하는 모든 개인정보보호 관련 민원을 고객센터에 신고하시면 신속하게 답변해드리도록 하겠습니다.<br>[개인정보관리책임자]<br>성 명 : 박태훈<br>직 위 : 대표이사<br>전자우편 : tpark@frograms.com<br>[개인정보관리담당자]<br>성 명 : 김효진<br>직 위 : 사업개발팀<br>전자우편 : jason@frograms.com<br><br>개인정보 침해 관련 상담 및 신고<br>당사는 귀하의 의견을 소중하게 생각합니다.<br>회사가 운영중인 서비스(왓챠, 왓챠플레이 및 관련 제반 서비스)에 대하여 문의사항이 있을 경우 고객센터 등에 문 의하시면 신속/정확한 답변을 드리겠습니다.<br>당사는 귀하와 원활환 의사소통을 위해 고객상담센터를 운영하고 있으며 연락처는 다음과 같습니다.<br><br>[고객상담센터]<br>- 전화번호 : 02-515-9985<br>- 팩스번호 : 02-3478-2202<br>- 전자우편 : cs@frograms.com<br><br>기타 개인정보에 관한 상담이 필요한 경우에는 정보통신부 산하 공공기관인 한국인터넷진흥원(KISA) 개인정보침 해신고센터 또는 경찰청 사이버테러대응센터로 문의하시기 바랍니다.<br>[한국인터넷진흥원 개인정보침해신고센터]<br>전화번호 : 국번없이 118<br>홈페이지 주소 : http://privacy.kisa.or.kr [경찰청 사이버테러대응센터]<br>전화번호 : 02-393-9112<br>홈페이지 주소 : http://www.netan.go.kr [대검찰청 사이버범죄수사단]<br>전화번호 : 02-3480-3751<br>홈페이지 주소 : http://www.spo.go.kr
          </div>
        </div>
        

      </div>
      <script type="text/javascript">
        $("#legal-privacy-version-selector").on("change", function(e){
          $.ajax({
            url: "/legals/" + e.target.value + ".json",
            dataType: "json",
            success: function(res){
              $(".legal-element.legal-privacy .legal-dialog__content .legal-dialog__content-text .legal-privacy-section-summary").html(res.summary.replace(/\n/g, "<br>"));
              $(".legal-element.legal-privacy .legal-dialog__content .legal-dialog__content-text .legal-privacy-section-description").html(res.description.replace(/\n/g, "<br>"));
            }
          })
        });
      </script>
    </div>
  </div>
  <div class="modal-backdrop"></div>
</div>
    </div>
  </div>
</div>
</body>
</html>