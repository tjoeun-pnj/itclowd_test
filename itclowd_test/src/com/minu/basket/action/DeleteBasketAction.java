package com.minu.basket.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.minu.basket.svc.BasketService;
import com.minu.basket.vo.Basket;
import com.minu.book.action.Action;
import com.minu.book.vo.ActionForward;
import com.minu.book.vo.BookBean;

public class DeleteBasketAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ActionForward forward = new ActionForward();
		BasketService basketService = new BasketService();
		
		/********
		 * 로그인 정보가 확립되었을때
		 */
		HttpSession httpSession = req.getSession();
		int m_no = Integer.parseInt(req.getParameter("m_no"));
		int c_no = Integer.parseInt(req.getParameter("c_no"));
		
		ArrayList<Basket> baskets = null;
		ArrayList<BookBean> book = null;
		basketService.deleteBasket(m_no, c_no);
		baskets = basketService.getBasket(m_no);
        book = basketService.getAllBook(baskets);
		
        req.setAttribute("book", book);
        req.setAttribute("baskets", baskets);
        req.setAttribute("user", httpSession.getAttribute("user"));
        forward.setPath("/sellPage/mybasket.jsp");
		return forward;
	}

}
