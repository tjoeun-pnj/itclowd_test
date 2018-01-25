package com.test.svc;

import java.sql.Connection;
import java.util.ArrayList;

import com.test.dao.BoardDao;
import com.test.vo.BoardBean;


public class BoardListService {
	public ArrayList<BoardBean> getArticleList(int startRow) throws Exception {
		ArrayList<BoardBean> articleList = null;
		BoardDao bDao = BoardDao.getInstance();
		articleList = (ArrayList<BoardBean>) bDao.selectListBoard(startRow);
		return articleList;
	}
}
