package com.minu.book.svc;

import static com.minu.db.JdbcUtil.*;

import java.sql.Connection;

import com.minu.book.dao.BookDAO;
import com.minu.book.vo.BookBean;

public class BookModifyFormService {

	public BookBean selectBook(int ib_no) {
		BookBean book = new BookBean();
		BookDAO bookDao = BookDAO.getInstance();
		Connection conn = getConnection();
		bookDao.setConnection(conn);
		book = bookDao.detailBook(ib_no);
		
		close(conn);
		return book;
	}

}
