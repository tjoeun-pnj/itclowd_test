package com.test.board.svc;


import static com.test.util.JDBCUtil.close;
import static com.test.util.JDBCUtil.commit;
import static com.test.util.JDBCUtil.getConnection;
import static com.test.util.JDBCUtil.rollback;

import java.sql.Connection;

import com.test.board.dao.BoardDAO;
import com.test.board.model.BoardBean;

public class BoardModifyProService {

	public boolean isArticleWriter(int board_num, String pass) throws Exception{

		boolean isArticleWriter = false;
		
		Connection conn = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(conn);
		isArticleWriter =boardDAO.isArticleBoardWriter(board_num, pass);
		close(conn);
		
		return isArticleWriter;
	}

	public boolean modifyArticle(BoardBean article)throws Exception{

		boolean isModifySuccess = false;
		
		Connection conn = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(conn);
		int updateCount = boardDAO.updateArticle(article);
		
		if(updateCount > 0) {
			commit(conn); 
			isModifySuccess = true;
		}else rollback(conn);
		close(conn);		
		return isModifySuccess;
	}

}















