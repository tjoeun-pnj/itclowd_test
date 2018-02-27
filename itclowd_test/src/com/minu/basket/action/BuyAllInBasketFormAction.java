package com.minu.basket.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.minu.basket.svc.BasketService;
import com.minu.basket.vo.Basket;
import com.minu.book.action.Action;
import com.minu.book.vo.ActionForward;
import com.minu.book.vo.BookBean;
import com.test.member.medel.MemberVo;

public class BuyAllInBasketFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ActionForward forward =new ActionForward();
		ArrayList<Basket> baskets = null;
		ArrayList<BookBean> books = null;
		BasketService basketService = new BasketService();
		
		
		int m_no = Integer.parseInt(req.getParameter("m_no"));
		
		baskets =basketService.getBasket(m_no);
		books = basketService.getAllBook(baskets);	
		
		req.setAttribute("baskets", baskets);
		req.setAttribute("books", books);
		forward.setPath("/sellPage/buyInBasketForm.jsp");
		return forward;
	}

}
