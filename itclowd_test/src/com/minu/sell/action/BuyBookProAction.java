package com.minu.sell.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.minu.basket.vo.Basket;
import com.minu.book.action.Action;
import com.minu.book.vo.ActionForward;
import com.minu.book.vo.BookBean;
import com.minu.sell.svc.CardService;
import com.minu.sell.svc.MooTongJangService;
import com.minu.sell.vo.OrderBean;
import com.test.member.medel.MemberVo;

public class BuyBookProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ActionForward forward = new ActionForward();
		OrderBean order = new OrderBean();
		
		/*****
		 * 회원정보 받아 오기
		 */
		order.setmVo((MemberVo)req.getSession(false).getAttribute("authUser"));

		/******
		 * 상품정보
		 */		
		BookBean book = new Gson().fromJson(req.getParameter("book"), BookBean.class);
		order.setO_TOTAL_PRICE(Integer.parseInt(req.getParameter("sum")));
		int amount = Integer.parseInt(req.getParameter("c_amount"));
		Basket basket =new Basket(amount);
		order.setBook(book);
		order.setBasket(basket);
		
		/*****
		 * 배송 정보
		 */
		String m_name = req.getParameter("m_name");
		String o_addr="";
		for(int i =0; i<=1; i++) {
			o_addr += req.getParameter("o_addr"+Integer.toString(i));
			o_addr +='\t';
		}
		order.setO_addr(o_addr);
		String phone = req.getParameter("first_no")+req.getParameter("middle_no")+req.getParameter("last_no");
		order.setPhone(phone);
		String message = req.getParameter("message");
		order.setMessage(message);
		
		/*********
		 * 결제 수단
		 *  DB 정보
		 *   카드결제 :1 
		 *   무통장 입금 :2
		 *   
		 *  배송상태
		 *    입금전 : 1
		 *    입금확인 : 2
		 *    상품포장 : 3
		 *    배송중 : 4 
		 *    물품수령확인 : 5 
		 */
		String buyMethod = req.getParameter("radioBuyButton");
		if(buyMethod.equals("무통장 입금")) {
			String depositor = req.getParameter("depositor");
			String bank = req.getParameter("bank");
			int O_COMP = 1;
			int O_CHOICE = 2;
			Boolean result = false;
			
			order.setO_COMP(O_COMP);
			order.setO_CHOICE(O_CHOICE);
			order.setO_NAME(depositor);
			
			MooTongJangService mooService = new MooTongJangService(order);
			result = mooService.changeData();
			if(result) {

				res.setContentType("text/html; charset=utf-8");
				PrintWriter out = res.getWriter();
				out.println("<script>");
				out.println("alert('무통장 입금 절차가 진행되었습니다. 마이페이지에서 배송상태를 확인하세요.')");
				out.println("</script>");
				forward.setPath("basket.ba");
				return forward;
			} else {
				res.setContentType("text/html; charset=utf-8");
				PrintWriter out =res.getWriter();
				out.println("<script>");
				out.println("alert('무통장 결제 진행이 실패했습니다. 관리자에게 문의하세요.')");
				out.println("history.back();");
				out.println("</script>");
			}
		} else if(buyMethod.equals("카드 결제")){
			/****
			 *  1. 첫번째 방법
			res.setContentType("text/html; charset=utf-8");
			PrintWriter out =res.getWriter();
			out.println("<script>");
			out.println("alert('보안을 위해 ActiveX를 설치하세요.')");
			out.println("history.back();");
			out.println("</script>");
			
			 *	2. 두 번째 방법
			 */
			
			System.out.println("2. 이민우");

			
			int O_COMP=	2;
			int O_CHOICE = 1;
			Boolean result = false;
			
			order.setO_COMP(O_COMP);
			order.setO_CHOICE(O_CHOICE);


			CardService cardService = new CardService(order);
			result = cardService.changeData();
			
			if(result) {
				res.setContentType("text/html; charset=utf-8");
				PrintWriter out = res.getWriter();
				out.println("<script>");
				out.println("alert('카드 결제 절차가 진행되었습니다. 마이페이지에서 배송상태를 확인하세요.')");
				out.println("</script>");
				forward.setPath("basket.ba");
				return forward;
			} else {
				res.setContentType("text/html; charset=utf-8");
				PrintWriter out =res.getWriter();
				out.println("<script>");
				out.println("alert('카드 결제 진행이 실패했습니다. 관리자에게 문의하세요.')");
				out.println("history.back();");
				out.println("</script>");
			}
			
			
		} else {
			res.setContentType("text/html; charset=utf-8");
			PrintWriter out =res.getWriter();
			out.println("<script>");
			out.println("alert('결제가 실패했습니다. 관리자에게 문의하세요.')");
			out.println("history.back();");
			out.println("</script>");
		}
		return forward;
	}

}
