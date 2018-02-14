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
	<div class="guide">
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
      <ol class="sections-wrapper">
    <li id="evalmore-section" class="evalmore responsive-mask section"><h2 class="title">독립출판물</h2>
    <div class="slider-wrapper"  > <!-- 무비카드 컨테이너 -->
    <div class="vertical-list" >
       <ul id="bookIndie-grid-container" class="grid-container" style="position: relative; width: 100%; height: 1000px;" >
		
</ul>
	

</div></div><!-- slider wrap end -->
</li>
</ol>
</div></div>
</body>
</html>