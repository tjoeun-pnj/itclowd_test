package com.minu.book.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minu.book.svc.BookModifyFormService;
import com.minu.book.vo.ActionForward;
import com.minu.book.vo.BookBean;

public class ModifyBookFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ActionForward forward = new ActionForward();
		int ib_no = Integer.parseInt(req.getParameter("ib_no"));
		BookBean book= new BookBean();
		
		BookModifyFormService bookModify = new BookModifyFormService();
		book = bookModify.selectBook(ib_no);
		
		req.setAttribute("book", book);
		forward.setPath("/bookPage/modifyBookForm.jsp");
		return forward;
	}

}
