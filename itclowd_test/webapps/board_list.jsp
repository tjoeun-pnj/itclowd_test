<%@page import="com.test.vo.BoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	ArrayList<BoardBean> articleList = (ArrayList)request.getAttribute("list");
%>
<!DOCTYPE>
<html>
<head><title>게시글 목록</title></head>
<body>
  <center>
  	<h2>게시글목록<a href="boardWriteForm.bo">게시판 글쓰기</a></h2>
  	<table border="1">
  		<tr align="center">
  			<td>번호</td>
  			<td>제목</td>
  			<td>작성자</td>
  			<td>날짜</td>
  			<td>조회수</td>
  		</tr>
  		<% 
  				for(BoardBean board: articleList) {	
  		%>
  		<tr>
  			<td><%=board.getBOARD_NUM() %></td>
  			<td>
  				<%if(board.getBOARD_RE_LEV() != 0) {
					for(int i=0; i<=board.getBOARD_RE_LEV()*2;i++){%>
						&nbsp;
				<%}%>
						...
  				<%} else {%>
  					...
  				<%}%>
  			
  			<%=board.getBOARD_SUBJECT() %>
  			
  			</td>
  			<td><%=board.getBOARD_NAME() %></td>
  			<td><%=board.getBOARD_DATE() %></td>
  			<td><%=board.getBOARD_READCOUNT() %></td>
  		</tr>
  		<%}%>
  			<
  		
  	</table>
  </center>
</body>
</html>