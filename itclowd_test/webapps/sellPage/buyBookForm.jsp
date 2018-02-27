<%@page import="com.minu.basket.vo.SonBean"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.test.member.medel.MemberVo"%>
<%@page import="com.minu.book.vo.BookBean"%>
<%@page import="com.minu.basket.vo.Basket"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	BookBean book = (BookBean)request.getAttribute("book");
	int c_amount = (int)request.getAttribute("c_amount");
	SonBean sonBean = new SonBean();
	String json = new Gson().toJson(book);
	int point=0;
	int sum=0;
	MemberVo mVo = (MemberVo)request.getSession(false).getAttribute("authUser");
%>
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
		<jsp:include page="/sellPage/buyBook.jsp" flush="false" />
	</div>
	<div id="footer">
		풋터
	</div> 
</body>
</html>