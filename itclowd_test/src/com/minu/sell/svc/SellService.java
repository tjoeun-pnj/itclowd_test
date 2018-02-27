package com.minu.sell.svc;

import static com.minu.db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.minu.book.dao.BookDAO;
import com.minu.book.vo.BookBean;

public class SellService {

	public BookBean getBook(int ib_no) {
		Connection conn = getConnection();
		BookBean book=null;
		BookDAO bookDao = BookDAO.getInstance();
		bookDao.setConnection(conn);
		
		book=bookDao.detailBook(ib_no);
		return book;			
		
	}

}
