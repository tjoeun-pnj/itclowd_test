<%@page import="com.minu.book.vo.PageInfo"%>
<%@page import="com.minu.book.vo.BookBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	ArrayList<BookBean> bookList = (ArrayList<BookBean>)request.getAttribute("bookList");
	PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
	int listCount = pageInfo.getListCount();
	int nowPage = pageInfo.getPage();
	int maxPage = pageInfo.getMaxPage();
	int startPage = pageInfo.getStartPage();
	int endPage = pageInfo.getEndPage();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>책 목록</title>
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
<script src="https://ucarecdn.com/libs/widget/3.2.1/uploadcare.full.min.js" charset="utf-8"></script>
</head>
<body>
	<center>
		<h2>책 목록<a href="insertBookForm.bo">책 등록하기</a></h2>
		<table border="1">
			<% if(bookList != null && listCount >0 ) {%>
			<tr align="center">
				<td>책번호</td>
				<td>책제목</td>
				<td>작가</td>
				<td>가격</td>
				<td>사진</td>
			</tr>
			<% for(int i=0; i<bookList.size(); i++) { %>
				<tr>
					<td><%= bookList.get(i).getIb_no() %></td>
					<td>
						 <a href="bookDetail.bo?ib_no=<%= bookList.get(i).getIb_no()%>&page=<%=nowPage%>">
							<%= bookList.get(i).getIb_title() %>						 
						 </a>
					</td>
					<td><%= bookList.get(i).getIb_writer() %></td>
					<td><%= bookList.get(i).getIb_price() %></td>
					<td><img src= "<%= bookList.get(i).getIb_img()%>" alt="이미지 없음" width="70" height="100"/></td>
				</tr>
			<% } %>
			
			<tr align ="center">
				<td colspan="5">
					<% if(nowPage<=1) { %> 
						[이전] &nbsp; 
					<%} else { %> 
						<a href="bookList.bo?page=<%=nowPage-1%>">[이전]</a> &nbsp;
					<%} %>
					<% for(int i=startPage; i<=endPage; i++) { %>
						<% if(i==nowPage) { %>
							[<%= i %>]
						<%} else { %>
							<a href="bookList.bo?page=<%=i%>"><%= i %></a> &nbsp;
						<%} %>	
					<% } %>
					<% if(nowPage>=maxPage) { %>
						[다음]
					<% } else { %>
						<a href="bookList.bo?page=<%=nowPage+1%>">[다음]</a> &nbsp;
					<%} %>
				</td>
			</tr>
			<% } else { %>
				<h2>등록된 게시글이 없습니다.</h2>
			<% } %>
		</table>
	</center>
</body>
</html>