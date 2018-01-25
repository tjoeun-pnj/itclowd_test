package com.test.util;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlUtil {
	private static SqlSession session;
	
	public static SqlSession getSession() throws Exception{
		if(session == null) {
			
			String resource = "mybatisconfig.xml"; 

		   Reader reader = Resources.getResourceAsReader(resource);

		   SqlSessionFactory sqlMapper = new SqlSessionFactoryBuilder().build(reader);

		   session = sqlMapper.openSession();
		   return session;
		}else {
			return session;
		}
	}
}
