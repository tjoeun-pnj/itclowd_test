package com.test.board.svc;

import static com.test.util.JDBCUtil.close;
import static com.test.util.JDBCUtil.commit;
import static com.test.util.JDBCUtil.getConnection;
import static com.test.util.JDBCUtil.rollback;

import java.sql.Connection;

import com.test.board.dao.BoardDAO;
import com.test.board.model.BoardBean;


public class BoardDetailService {

	public BoardBean getArticle(int board_num) throws Exception {
        
		BoardBean article = null;
		Connection conn = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(conn);
		int updateCount = boardDAO.updateReadCount(board_num);
		
		if(updateCount > 0) commit(conn); else rollback(conn);
		
		article = boardDAO.selectArticle(board_num);
		close(conn);
		
		return article;
	}

}
