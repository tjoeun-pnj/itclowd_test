package com.minu.basket.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.minu.basket.svc.BasketService;
import com.minu.basket.vo.Status;
import com.minu.book.action.Action;
import com.minu.book.vo.ActionForward;
import com.test.member.medel.MemberVo;

/***
 * 
 * 필요한 정보값들
 *   m_no 회원 고유 번호(member 회원 테이블)
 *   c_amount 수량 (장바구니에 저장될 값/ input tag 등으로 받아야함
 *   ib_no 책에 고유 번호(indie_book 테이블에 값)
 * @author 이민우
 *
 */
public class AddBasketAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ActionForward forward = new ActionForward();
		BasketService basketService = new BasketService();
		//물품 서비스
		
		Status status = new Status();
		int m_no = Integer.parseInt(req.getParameter("m_no"));
		int ib_no = Integer.parseInt(req.getParameter("ib_no"));
		int c_amount = Integer.parseInt(req.getParameter("c_amount"));

		
		
		
		if((req.getParameter("c_amount") == null)) {
			status.addException(new Exception("Please enter product numbers"));
		}
		if((c_amount == 0)) {
			status.addException(new Exception("Please enter product numbers"));
		}
		
		/****
		 *  프로그램 구조상 추가하고 나서 상품 목록이 다시 나와야 하기에 추가된 코드
		 *  만약 다음 화면에서 전달해야 될 정보값이 있으면 이 부분에 삽입하기 
		ArrayList<Product> products =null;
		products = productService.getAllBook();
		req.setAttribute("products", products);
		req.setAttribute("user", httpSession.getAttribute("user"));
		 */
		
		try {
			basketService.addBasket(m_no, ib_no, c_amount);
			if(!status.isSuccessful()) {
				forward.setPath("/bookMain.jsp");
			}
			forward.setPath("/bookMain.jsp");
		} catch (Exception e1) {
			status.addException(e1);
			forward.setPath("/bookMain.jsp");
		}
		return forward;
	}

}
