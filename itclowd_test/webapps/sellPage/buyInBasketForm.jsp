<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구매 페이지</title>
  <script src="/assets/js/jquery.min.js"></script>
<link rel="stylesheet" href="/menubarcss.css" />
<link rel="stylesheet" href="/assets/css/mainmenu.css" />
<link rel="stylesheet" href="/what2.css" />
<script src="/menubar.js"></script>
<script src="/assets/js/util.js"></script>
<script src="/assets/js/main.js"></script> 
  <script src="/mainboot.js"></script>
  <script src="/pwstrength.js"></script>
  <link rel="stylesheet" href="/mainboot.css">
 	<link rel="stylesheet" href="/mainCustom.css">
  <script src="/mainCustom.js"></script>
</head>
<body id="body">
	<div id="main_header">
		<jsp:include page="/header.jsp" flush="false" />
	</div>
	<div id="blog-container"> 
		<jsp:include page="/sellPage/buyForm.jsp" flush="false" />
	</div>
	<div id="footer">
		풋터
	</div> 
</body>
</html>