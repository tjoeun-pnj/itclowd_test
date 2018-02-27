package com.minu.book.svc;

import static com.minu.db.JdbcUtil.close;
import static com.minu.db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.minu.book.dao.BookDAO;
import com.minu.book.vo.BookBean;

public class BookListService {
	public int getListCount() {
		int listCount=0;
		Connection conn = getConnection();
		BookDAO bookDAO = BookDAO.getInstance();
		bookDAO.setConnection(conn);
		listCount = bookDAO.selectListCount();
		return listCount;
	}
	public ArrayList<BookBean> getArticleList(int page, int limit) throws Exception {
		ArrayList<BookBean> bookList =null;
		Connection conn = getConnection();
		BookDAO bookDAO = BookDAO.getInstance();
		bookDAO.setConnection(conn);
		bookList = bookDAO.selectArticleList(page, limit);

		
		
		
		
		close(conn);
		
		
		return bookList;
	}
}
