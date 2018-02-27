package com.minu.basket.action;

import java.io.PrintWriter;
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

public class RetrieveBasketAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ActionForward forward = new ActionForward();
        
		BasketService basketService = null;
		ArrayList<Basket> baskets = null;
		ArrayList<BookBean> book = null;
		
		/***
		 * 로그인 정보 넣었을 경우
		 * 로그인 펌에서 ID를 따온 파라미터를 가지고
		 * m_no을 가져온 뒤 장바구니를 가져오기를 해야함.
		HttpSession httpSession = req.getSession();
		int m_no = Integer.parseInt(req.getParameter("m_no"));
		MemberVo mVo = new Gson().fromJson((String)req.getSession(false).getAttribute("authUser"), MemberVo.class);
		 */
		MemberVo mVo = (MemberVo)req.getSession().getAttribute("authUser");
		int m_no = mVo.getM_no();		
		
        basketService = new BasketService();
        
        /****
         * 서치를 할 때 m_no가 같은 것만 가져와야함.
         */
        baskets = basketService.getBasket(m_no);
        /*****
         * 예외 처리
         */
        if(baskets.isEmpty()) {
			res.setContentType("text/html; charset=utf-8");
			PrintWriter out =res.getWriter();
			out.println("<script>");
			out.println("alert('장바구니 품목이 없습니다.')");
			out.println("</script>");
			forward.setPath("main.jsp");
			return forward;
        }
        book = basketService.getAllBook(baskets);       
        
        req.setAttribute("book", book);
        req.setAttribute("baskets", baskets);
		
        forward.setPath("/sellPage/mybasket.jsp");
		return forward;
	}

}
