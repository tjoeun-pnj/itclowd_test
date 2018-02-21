<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	$(document).ready(function(){
		reqBookMainIndie(null,null);
	});
</script>
</head>
<body>
	<div class="guideBook">
        <div class="center-box">
        <div id="bookCate">
        <ul>
        <li><a onclick="reqBookMainIndie(1, 0);">전체</a></li>
        <li><a onclick="reqBookMainIndie(1, 1);">소설</a></li>
        <li><a onclick="reqBookMainIndie(1, 2);">시</a></li>
        <li><a onclick="reqBookMainIndie(1, 3);">여행/에세이</a></li>
        <li><a onclick="reqBookMainIndie(1, 4);">사진</a></li>
        <li><a onclick="reqBookMainIndie(1, 5);">디자인</a></li>
        <li><a onclick="reqBookMainIndie(1, 6);">일러스트/회화</a></li>
        </ul>
        </div>
        <div id="searchIndie">
        		<ul>
        			<li class="search">
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
        				<input type="button" value="검색">
        			</li>
        		</ul>
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
		<!-- <a href="#"  class="button small">이전</a>
		<a href="#"  class="button small">다음</a> -->
	</div>
</div>
</div>
</body>
</html>