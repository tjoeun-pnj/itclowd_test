<%@page import="java.util.ArrayList"%>
<%@page import="com.test.vo.BookItemVO"%>
<%@page import="com.test.vo.BookVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%
	BookVO book = (BookVO)request.getAttribute("book");
    ArrayList<BookItemVO> list = book.getItem();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		for(BookItemVO item : list){
	%>
	<img alt="없음" src="<%=item.getCover() %>">
	<%
		}
	%>
</body>
</html>