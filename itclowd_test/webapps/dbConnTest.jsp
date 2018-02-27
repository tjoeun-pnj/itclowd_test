<%@page import="java.sql.Connection"%>
<%@page import="com.minu.db.JdbcUtil"%>
<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DB 연결 테스트</title>
</head>
<body>
	<%
		try(Connection conn = JdbcUtil.getConnection()) {
			out.println("DB커넥션 성공");
		} catch(SQLException e) {
			out.print("DB커넥션 연결 실패 : "+e.getMessage());
			application.log("DB커넥션 연결 실패", e);
		}
	%>
</body>
</html>