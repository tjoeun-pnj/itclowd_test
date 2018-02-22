package com.test.board.svc;

import static com.test.util.JDBCUtil.close;
import static com.test.util.JDBCUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.board.dao.BoardDAO;
import com.test.board.model.BoardBean;


public class BoardListService { // DAO에서 가져옴
	
	public int getListCount(HashMap<String, Object> pMap) {
		int listCount = 0;
		Connection conn = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(conn);
		listCount = boardDAO.selectListCount(pMap); // dao으로 감
		
		return listCount; // dao 호출 후 baordListAction 
	}
	public ArrayList<BoardBean> getArticleList(HashMap<String, Object> pMap) 
	          throws Exception {
		
		ArrayList<BoardBean> articleList = null;
		Connection conn = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(conn);
		articleList = (ArrayList<BoardBean>) boardDAO.selectArticleList(pMap);
		close(conn);
	return articleList; //BaordListAction으로 리턴
		
		
	}
	

}
