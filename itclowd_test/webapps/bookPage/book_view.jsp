<%@page import="com.minu.book.vo.BookBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	BookBean book  = (BookBean)request.getAttribute("book");
	int nowPage = (int)request.getAttribute("page");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>책 상세보기</title>
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
		<table border="1">
			<tr>
				<td colspan="2"><h4>글 내용 상세보기</h4></td>
			</tr>
			<tr>
				<td>제목</td>
				<td>[<%= book.getIb_no() %>]<%= book.getIb_title() %></td>
			</tr>			
			<tr>
				<td>작가</td>
				<td><%= book.getIb_writer() %></td>			
			</tr>
			<tr>
				<td>장르</td>
				<td><%= book.getC_no() %></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><%= book.getIb_price() %></td>			
			</tr>
			<tr>
				<td>출판날짜</td>
				<td><%= book.getIb_date() %></td>			
			</tr>
			<tr>
				<td>출판사 번호</td>
				<td><%= book.getIp_no() %></td>			
			</tr>
			<tr>
				<td>책 소개</td>
				<td>
					<textarea name="" id="" cols="30" rows="10" readonly="readonly"><%= book.getIb_intro() %></textarea>
				</td>			
			</tr>						
			<tr>
				<td>전체 페이지</td>
				<td>
					<%= book.getIb_page() %>
				</td>			
			</tr>
			<tr>
				<td>소개 이미지</td>
				<td>
					<img src="<%= book.getIb_img() %>" alt="이미지 없음" />
				</td>
			</tr>
			<tr>
				<td>이미지</td>
				<td>
					<img src="<%= book.getIb_img1() %>" alt="이미지 없음" />
				</td>
			</tr>
			<tr>
				<td>이미지</td>
				<td>
					<img src="<%= book.getIb_img2() %>" alt="이미지 없음" />
				</td>
			</tr>
			<tr>
				<td>이미지</td>
				<td>
					<img src="<%= book.getIb_img3() %>" alt="이미지 없음" />
				</td>
			</tr>
			<tr>
				<td>이미지 크기</td>
				<td>
					<%= book.getIb_size() %>
				</td>
			</tr>			
			<tr>
				<td>재고량</td>
				<td>
					<%= book.getIb_stock() %>
				</td>
			</tr>
			<tr>
				<td>
					<a href="bookList.bo?page=<%=nowPage%>">목록으로</a>
				</td>
				<td>
					<form action="sellingBook.se">
					<input type="hidden" name="page" value="<%= nowPage %>" />
					<input type="hidden" name="ib_no" value="<%= book.getIb_no() %>"/>
					<input type="hidden" name="od_no" value="123456789"/>
					<h4>개수</h4>
					<input type="text" name="od_amount"/>
					<input type="submit" value="구매하기" />
					</form>
				</td>
				
				<!-- 관리자일 경우에만 보이게 하기 --> 
				<td>
					<a href="modifyBook.bo?ib_no=<%=book.getIb_no() %>&page=<%=nowPage%>">수정하기</a>
				</td>
			</tr>			
		</table>
	</center>
</body>
</html>