package com.test.board.svc;

import static com.test.util.JDBCUtil.close;
import static com.test.util.JDBCUtil.commit;
import static com.test.util.JDBCUtil.getConnection;
import static com.test.util.JDBCUtil.rollback;

import java.sql.Connection;

import com.test.board.dao.BoardDAO;
import com.test.board.model.BoardBean;


public class BoardWriteProService {

   public boolean registArticle(BoardBean boardBean) throws Exception{
	
	   boolean isWriteSuccess = false;
	   Connection conn = getConnection(); //JDBCUtil.getConnetion()
	   BoardDAO boardDAO = BoardDAO.getInstance();
	   boardDAO.setConnection(conn);
	   int insertCount = boardDAO.insertArticle(boardBean); // boardBean은 BoardWriteProAction에서 받아옴
	   
	   if(insertCount > 0) {
		   commit(conn);
		   isWriteSuccess = true;
	   }else {
		   rollback(conn);
	   }
	   
	   close(conn);	   
	   return isWriteSuccess;
	   
   }

}
























