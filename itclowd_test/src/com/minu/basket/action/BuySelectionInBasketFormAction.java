package com.minu.basket.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minu.basket.svc.BasketService;
import com.minu.basket.vo.Basket;
import com.minu.book.action.Action;
import com.minu.book.vo.ActionForward;
import com.minu.book.vo.BookBean;

public class BuySelectionInBasketFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ActionForward forward = new ActionForward();
		ArrayList<Basket> baskets =null;
		ArrayList<BookBean> books = null;
		BasketService basketService = new BasketService();
		String[] cNo = req.getParameterValues("choice_cNo");

		
		baskets = basketService.getBasket(cNo);
		books = basketService.getAllBook(baskets);
		
		req.setAttribute("baskets", baskets);
		req.setAttribute("books", books);
		forward.setPath("/sellPage/buyInBasketForm.jsp");
		return forward;
	}

}
