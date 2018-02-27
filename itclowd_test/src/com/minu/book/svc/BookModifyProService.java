package com.minu.book.svc;

import java.sql.Connection;

import com.minu.book.dao.BookDAO;
import com.minu.book.vo.BookBean;
import static com.minu.db.JdbcUtil.*;

public class BookModifyProService {

	public Boolean modifyBook(BookBean bookBean) {
		Boolean isModify=false;
		Connection conn = getConnection();
		BookDAO bookDao = BookDAO.getInstance();
		bookDao.setConnection(conn);
		
		int updateCount = bookDao.modifyBook(bookBean);
		
		if(updateCount >0 ) {
			commit(conn);
			isModify=true;
		}
		else rollback(conn);
		
		close(conn);
		return isModify;
	}

}
