package com.minu.selling.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minu.book.action.Action;
import com.minu.book.vo.ActionForward;
import com.minu.selling.svc.SellingBookService;

public class SellingFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ActionForward forward = new ActionForward();
		
		int od_no = Integer.parseInt(req.getParameter("od_no"));
		
		
		int ib_no = Integer.parseInt(req.getParameter("ib_no"));
		int page = Integer.parseInt(req.getParameter("nowPage"));
		int od_amount = Integer.parseInt(req.getParameter("od_amount"));
		
		SellingBookService sellService = new SellingBookService();
		
		Boolean result = sellService.integrateData(od_no, ib_no, od_amount);
		
		
		
		return forward;
	}

}
