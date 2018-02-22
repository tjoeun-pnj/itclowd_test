package com.test.board.svc;

import static com.test.util.JDBCUtil.*;
import java.sql.Connection;

import com.test.board.dao.BoardDAO;


public class BoardDeleteService {

	public boolean isArticleWriter(int board_num, String pass) throws Exception{

		boolean isArticleWriter = false;
		
		Connection conn = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(conn);
		isArticleWriter = boardDAO.isArticleBoardWriter(board_num, pass);
		close(conn);
		
		
		
		return isArticleWriter;
	}



	public boolean removeArticle(int board_num) throws Exception{
       
		boolean isRemoveSuccess = false;		
		
		Connection conn = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(conn);
		int deleteCount = boardDAO.deleteArticle(board_num);
		
		if(deleteCount > 0) {
			commit(conn);
			isRemoveSuccess = true;
		}else {
			rollback(conn);
		}
		close(conn);
		return isRemoveSuccess;
	}

}
