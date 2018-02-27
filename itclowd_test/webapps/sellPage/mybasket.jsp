<%@page import="com.minu.basket.vo.Basket"%>
<%@page import="com.minu.book.vo.BookBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="menubarcss.css" />
<link rel="stylesheet" href="assets/css/mainmenu.css" />
<link rel="stylesheet" href="what2.css" />
<script src="menubar.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>
  <script src="mainboot.js"></script>
  <script src="pwstrength.js"></script>
  <link rel="stylesheet" href="mainboot.css">
  <link rel="stylesheet" href="mainCustom.css">
  <!-- <link rel="stylesheet" href="bootstrap.css"> -->
  <!-- <script src="bootstrap.js"></script> -->
  <script src="mainCustom.js"></script>
<%

ArrayList<Basket> baskets = (ArrayList<Basket>) request.getAttribute("baskets");
ArrayList<BookBean> books = (ArrayList<BookBean>)request.getAttribute("book");
/* Member user = (Member) request.getAttribute("user"); */
/* session.setAttribute("user", user); */
%>
</head>
<body>
	<div id="main_header">
		<jsp:include page="/header.jsp" flush="false" />
	</div>

	<div id="blog-container"> 
	<center>
		<%-- <h2>hello, <%= user.getName() %></h2> --%>
		<table border="2px">
	
			<tr>
				<th width="100">choice buy</th>
				<th width="100">Product ID</th>
				<th width="200">Product Name</th>
				<th width="400">Explanation</th>
				<th width="100">Price</th>
				<th width="100">The number of adding book</th>
				<th width="100">picture</th>
			</tr>
			<form action="buySelectionInBasketForm.ba">
			<%
				for (int i=0; i< baskets.size(); i++){
				   Basket basket = baskets.get(i);
				  BookBean book = books.get(i);	
			%>
			<tr>
				<td align="center">
					<input type="checkbox" name="choice_cNo" value="<%=basket.getC_no()%>"/></td>
				<td align="center"><%=basket.getC_no()%></td>
				<td align="center"><%=book.getIb_title()%></td>
				<td align="center">
					<h5>시작글 : </h5><%=book.getIb_intro() %>
					<h5>원고량(페이지) : </h5> <%=book.getIb_page() %>
					<h5>책 크기 : <%= book.getIb_size() %></h5>
					<h5>재고 : </h5><%= book.getIb_stock() %>
				</td>
				<td align="center">$<%= book.getIb_price() %></td>
				<td align="center">
					<a href=""><%= basket.getC_amount() %></a>
				</td>
				<td align="center"><img src="<%= book.getIb_img() %>" alt="없음" width="50" height="80"/></td>
				<td align="center">
   						<a href="delete.ba?c_no=<%=basket.getC_no()%>&m_no=<%=basket.getM_no()%>">Delete</a>
				</td>
				
			</tr>

			<% } %>
				<input type="submit" value="Buy Selection"/>
			</form>
			<form action="buyAllInBasketForm.ba">
				<input type="hidden" name="m_no" value="<%= baskets.get(0).getM_no() %>" />				
				<input type="submit" value="Buy All" />
			</form>

 	  </table>
	</center>					
	</div>
	
	<div id="footer">
		풋터
	</div>
</body>
</html>