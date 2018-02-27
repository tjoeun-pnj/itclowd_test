package com.minu.sell.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minu.basket.vo.Status;
import com.minu.book.action.Action;
import com.minu.book.vo.ActionForward;
import com.minu.book.vo.BookBean;
import com.minu.sell.svc.SellService;
import com.test.member.medel.MemberVo;

public class BuyBookAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ActionForward forward = new ActionForward();
		BookBean books = null;
		Status status = new Status();
		MemberVo mVo = (MemberVo)req.getSession(false).getAttribute("authUser");
		int m_no = mVo.getM_no();
		int ib_no =1;//Integer.parseInt(req.getParameter("ib_no"));
		int c_amount = 2;//Integer.parseInt(req.getParameter("c_amount"));
		
		if((req.getParameter("c_amount") == null)) {
			status.addException(new Exception("Please enter product numbers"));
		}
		if((c_amount == 0)) {
			status.addException(new Exception("Please enter product numbers"));
		}
		
		SellService sellService = new SellService();
		
		books = sellService.getBook(ib_no);
		
		try {
			req.setAttribute("c_amount", c_amount);
			req.setAttribute("book", books);
			forward.setPath("buyBookForm.jsp");
		} catch(Exception e) {
			status.addException(e);
			forward.setPath("buyBookForm.jsp");
		}
		return forward;
	}

}
