package com.test.board.svc;

import static com.test.util.JDBCUtil.close;
import static com.test.util.JDBCUtil.commit;
import static com.test.util.JDBCUtil.getConnection;
import static com.test.util.JDBCUtil.rollback;

import java.sql.Connection;

import com.test.board.dao.BoardDAO;
import com.test.board.model.BoardBean;

public class BoardReplyProService {

	public boolean replyArticle(BoardBean article) throws Exception{

		boolean isReplySuccess = false;
		
		Connection conn = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstance();
		boardDAO.setConnection(conn);
		int insertCount = boardDAO.insertReplyArticle(article);
		
		if(insertCount > 0) {
			commit(conn);
			isReplySuccess = true;
		}	else rollback(conn);
		close(conn);
		return isReplySuccess;
		 
	
	}


}
