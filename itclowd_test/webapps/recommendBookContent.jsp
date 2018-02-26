<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head><title></title>
<script type="text/javascript">
$(document).ready(function(){
	var member = <%=request.getSession().getAttribute("authUserJson")%>;
	reqRecommCate(member.m_no);	
});
</script>
</head>
<body>
  <div class="guideBook">
        <div class="center-box-book">
    	<h1>추천</h1>
      <div class="vertical-list" >
      <h2>장르평점순 추천</h2>
       <ul id="recommCate-grid-container" class="grid-container" style="position: relative; width: 100%; height: 300px" >
		</ul>
      <h2>나와 같은 책을 본 사람들의 추천</h2>
       <ul id="recommPeo-grid-container" class="grid-container" style="position: relative; width: 100%; height: 300px" >
		</ul>
      <h2>평점순 추천</h2>
       <ul id="recommIndie-grid-container" class="grid-container" style="position: relative; width: 100%; height: 300px" >
		</ul>
</div>
</div>
</div>
</body>
</html>