<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <title>메인 틀</title>
</head>
<body>
    <div id="blog-header-container">
        <div class="content" width="100%" id="header_logo_container">
        <ul id="header_menu">
        <li><a href="/boardList.bo">Q & A</a></li>
        <li><a>주문내역</a></li>
        <li><a>장바구니</a></li>
            <u:isLogin>
           <li><a href="/member/logout">로그아웃</a></li>
            </u:isLogin>
        </ul>
        </div>
    </div>
    <div id="menu-container"> 
        <header id="header">
						<h1><a href="/main.jsp">보담</a></h1>
						<nav class="links">
							<ul>
								<li><a href="#">취향테스트</a></li>
								<li><a href="#">추천도서</a></li>
								<li><a href="/bookMain.jsp">독립출판</a></li>
								<li><a href="/Mypage.jsp">마이페이지</a></li>
							</ul> 
						</nav>
						<nav class="main">
							<ul>
								<!-- <li class="search">
									<a class="fa-search" href="#search">Search</a>
									<form id="search" method="get" action="#">
										<input type="text" name="query" placeholder="Search" />
									</form>
								</li> -->
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
							<section id="profile_section">
								<table width="100%" id="profile_table">
									<tr>
									<td width="25%%">
									<img src="/images/lion_profile.gif" width="60x" height="60px">
									</td>
									<td width="25%">누구누구님</td>
									<td align="right" rowspan="2">
									<img src="/images/lion_profile.gif" width="45x" height="45px">
									</td>
									</tr>
								</table>
							</section>
						<!-- Links -->
							<section>
								<ul class="links">
									<li>
										<a>
										<img width="60x" height="60px" alt="" src="/images/lion_profile.gif">
										친구친구님
										</a>
									</li>
									<li>
										<a>
										<img width="60x" height="60px" alt="" src="/images/lion_profile.gif">
										친구친구님
										</a>
									</li>
									<li>
										<a>
										<img width="60x" height="60px" alt="" src="/images/lion_profile.gif">
										친구친구님
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
									<form  id="loginForm">
									<li><input type="email" id="log_id" name="m_id" placeholder="이메일입력"/></li>
									<li><input type="password" id="log_pass" name="m_pass" placeholder="비밀번호입력"/></li>
									</form>
									<li align="center"><a href="#" onclick="myModal1();">비밀번호 찾기</a>&nbsp;&nbsp;<a href="#">비회원 주문조회하기</a></li>
									<li><a href="#" class="button big fit" onclick="loginMember();">보담 로그인</a></li>
									<li><a href="#"  class="button big fit" onclick="myModal();" data-toggle="modal" data-target="#myModal">보담 회원가입</a></li>
									<li><a href="#" ><img src="images/kakao_login_btn1.png" width="100%"/></a></li>
									<li></li>
								</ul>
								
							</section>
						</u:notLogin>
					</section>
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
				<li><input type="email" id="join_id" name="m_id" placeholder="이메일입력"/><span id="emailChk"></span></li>
				<li><input type="text" id="join_name" name="m_name" placeholder="닉네임입력"/><span align="center" id="nameChk"></span></li>
				<li><input type="password" id="join_pass" name="m_pass" placeholder="비밀번호입력"/></li>
				<li><input type="password" id="join_pass_chk" name="m_pass_chk" placeholder="비밀번호확인"/><span id="passChk">비번 잘 쳤는지 알려줌</span></li>
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