package com.minu.book.svc;

import static com.minu.db.JdbcUtil.close;
import static com.minu.db.JdbcUtil.commit;
import static com.minu.db.JdbcUtil.getConnection;
import static com.minu.db.JdbcUtil.rollback;

import java.sql.Connection;

import com.minu.book.dao.BookDAO;
import com.minu.book.vo.BookBean;

public class InsertBookProService {
	public boolean registArticle(BookBean bookBean) {
		boolean isWriteSuccess = false;
		Connection conn = getConnection(); 
		BookDAO bookDao = BookDAO.getInstance();
		bookDao.setConnection(conn);
		
		int insertCount = bookDao.insertBook(bookBean);
		
		if(insertCount >0) {
			commit(conn);
			isWriteSuccess=true;
		}else {
			rollback(conn);
		}
		close(conn);
		return isWriteSuccess;
	}
}
