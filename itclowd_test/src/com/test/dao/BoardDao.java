package com.test.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.test.util.SqlUtil;
import com.test.vo.BoardBean;

public class BoardDao {
	
	private static BoardDao bDao;
	private BoardDao() {}
	public static BoardDao getInstance() {
		if(bDao == null) bDao = new BoardDao();
		return bDao;
	}
	public List<BoardBean> selectListBoard(int startRow) throws Exception {
		return SqlUtil.getSession().selectList("board.selectListBoard", startRow);
	}
}
