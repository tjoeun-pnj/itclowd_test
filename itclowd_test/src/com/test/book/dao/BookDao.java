package com.test.book.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.book.model.IndieBookQueryVo;
import com.test.book.model.IndieBookVo;
import com.test.util.SqlUtil;

public class BookDao {
	private static BookDao bDao;
	private BookDao() {};
	public static BookDao getInstance() {
		if(bDao == null) bDao = new BookDao();
		return bDao;
	}
	
	public List<IndieBookVo> getIndieBookList(HashMap<String, Object> pMap){
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectList("book.indieBookList", pMap);
		} catch (Exception e) {
			e.printStackTrace();
			return null; 
		}
	}
	public int getListCount(HashMap<String, Object> pMap) {
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectOne("book.getListCount", pMap);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	public IndieBookVo getIndieBookDetail(int ib_no) {
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectOne("book.indieBookDetail", ib_no);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
