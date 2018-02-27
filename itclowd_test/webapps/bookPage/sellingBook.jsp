<%@page import="com.minu.book.vo.BookBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	BookBean book = (BookBean)request.getAttribute("book");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구매</title>
</head>
<body>
	<center>
		<form>
			<table>
				<tr>
					<td>책제목 </td>
					<td><%= book.getIb_title() %></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>