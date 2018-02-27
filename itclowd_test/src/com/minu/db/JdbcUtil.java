package com.minu.db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/* JNDI(Java Naming and Directory Interface)?
 * 
 * 
 *  디렉터리 서비스에서 제공하는 데이터 및 객체를 발견하고 참고(lookup)하기 위한 자바 API이다.
 *  즉, 쉽게 이야기해서 외부에서 있는 객체를 가져오기 위한 기술이다. tomcat서버와 같은 WAS를 보면 특정폴더에 필요한 데이터 소스(라이브러리)등을
 *  사용하기 위해 JNDI기술을 이용해서 가져오는 기법을 이야기한다.
 * */


public class JdbcUtil {
	
	public static Connection getConnection() {

		Connection conn = null;
		
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context)initCtx.lookup("java:comp/env");
			DataSource ds = (DataSource)envCtx.lookup("jdbc/Board"); //DataSource는 Resource Context파일에서 Resource중 "board"라는 이름에 정보를 가져온다.
			conn=ds.getConnection();
			conn.setAutoCommit(false);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public static void close(Connection conn) {
		try {
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(Statement stmt) {
		try {
			stmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
	public static void close(ResultSet rs) {
		try {
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void commit(Connection conn) {
		try {
			conn.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
	public static void rollback(Connection conn) {
		try {
			conn.rollback();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
