<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>독립책상세</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="/menubarcss.css" />
<link rel="stylesheet" href="/assets/css/mainmenu.css" />
<link rel="stylesheet" href="/what2.css" />
<script src="/menubar.js"></script>
<script src="/assets/js/skel.min.js"></script>
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
		<jsp:include page="/indieDetailView.jsp" flush="false" />				
	</div>
	
</body>
</html>