<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
 <!--  <script src="/jquery.js"></script> -->
  <script src="assets/js/jquery.min.js"></script>
<link rel="stylesheet" href="menubarcss.css" />
<link rel="stylesheet" href="assets/css/mainmenu.css" />
<link rel="stylesheet" href="what2.css" />
<script src="/menubar.js"></script>
<!-- 
<script src="assets/js/skel.min.js"></script>
 -->
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script> 
  <script src="mainboot.js"></script>
  <script src="/pwstrength.js"></script>
  <link rel="stylesheet" href="mainboot.css">
<!--   <script type="text/javascript" src="/bootstrap.js"></script>
  <link rel="stylesheet" href="/bootstrap.css">
 -->  
 	<link rel="stylesheet" href="mainCustom.css">
  <script src="mainCustom.js"></script>
<head><title></title></head>
<body>
  <div id="main_header">
		<jsp:include page="/header.jsp" flush="false" />
	</div>

	<div id="blog-container"> 
		<jsp:include page="/taste.jsp" flush="false" />				
	</div>
	
	<div>
		<jsp:include page="/footer.jsp" flush="false" />
	</div>
</body>
</html>