package com.minu.book.action;

import static com.minu.db.JdbcUtil.*;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minu.book.dao.BookDAO;
import com.minu.book.vo.ActionForward;
import com.minu.book.vo.BookBean;

public class BookDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
				
		int page = Integer.parseInt(req.getParameter("page"));
		int ib_no = Integer.parseInt(req.getParameter("ib_no"));
		
		ActionForward forward = new ActionForward();
		
		BookBean book = new BookBean();
		BookDAO bookDao = BookDAO.getInstance();
		Connection conn = getConnection();
		bookDao.setConnection(conn);
		book =bookDao.detailBook(ib_no);
		close(conn);
		
		req.setAttribute("book", book);
		req.setAttribute("page", page);
		forward.setPath("/bookPage/book_view.jsp");
		return forward;
	}

}
