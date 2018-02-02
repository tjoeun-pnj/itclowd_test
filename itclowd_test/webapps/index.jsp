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
  <script type="text/javascript">
  	function myModal(){
  		$('#myModal').modal('show');
  		$("body").removeClass("is-menu-visible");
  	}
  	function myModal1(){
  		$('#myModal1').modal('show');
  		$("body").removeClass("is-menu-visible");
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
    
   <!-- 여기다가 맘껏 넣어보시요 -->
   
   CREATE TABLE `member`  (
  `m_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '회원번호',
  `m_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '회원아이디',
  `m_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '회원닉네임',
  `m_pass` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '회원 비밀번호',
  `m_date` date NOT NULL COMMENT '가입일',
  `m_point` int(11) NULL DEFAULT NULL COMMENT '포인트',
  PRIMARY KEY (`m_no`) USING BTREE,
  UNIQUE INDEX `id_uni`(`m_id`) USING BTREE,
  UNIQUE INDEX `name_uni`(`m_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '회원' ROW_FORMAT = Dynamic;
   
    </div> <!-- content container -->
<div id="footer"> <!-- footer시작 -->
	footer 설정 나중에
</div> 


<div id="modal_container">
<!-- The Modal1 -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      	<form action="#" method="post">
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">보담 회원가입</h4>
          <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
        </div>
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
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <a href="#"  class="button big"  >보담 회원가입신청</a>
          <a href="#"  class="button big"  data-dismiss="modal">Close</a>
          <!-- <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button> -->
        </div>
      	</form>
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