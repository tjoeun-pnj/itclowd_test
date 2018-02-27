package com.minu.book.action;

import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minu.book.svc.BookModifyProService;
import com.minu.book.vo.ActionForward;
import com.minu.book.vo.BookBean;

public class ModifyBookProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ActionForward forward = new ActionForward();
		String[] temp_img = new String[4];
		
		/**********
		 * 기존 이미지와 변경이미지 교체 선택 코드
		 */
		for(int i=0; i<4; i++) {
			String tmp = "temp_img"+Integer.toString(i);
			temp_img[i] =req.getParameter(tmp);
			tmp = "my_file"+Integer.toString(i);
			if(!req.getParameter(tmp).isEmpty()) {
				temp_img[i] = req.getParameter(tmp);				
			}
		}
		
		
		
		BookBean bookBean = null;
		
		bookBean =new BookBean();
		bookBean.setIb_no(Integer.parseInt(req.getParameter("ib_no")));
		bookBean.setC_no(Integer.parseInt(req.getParameter("c_no")));
		bookBean.setIb_title(req.getParameter("ib_title"));
		bookBean.setIb_writer(req.getParameter("ib_writer"));
		bookBean.setIb_price(Integer.parseInt(req.getParameter("ib_price")));

		String date = req.getParameter("ib_date");
		bookBean.setIb_date(Date.valueOf(date));
		bookBean.setIp_no(Integer.parseInt(req.getParameter("ip_no")));
		bookBean.setIb_intro(req.getParameter("ib_intro"));
		bookBean.setIb_page(Integer.parseInt(req.getParameter("ib_page")));
		
		bookBean.setIb_img(temp_img[0]);
		bookBean.setIb_img1(temp_img[1]);
		bookBean.setIb_img2(temp_img[2]);
		bookBean.setIb_img3(temp_img[3]);
		
		bookBean.setIb_size(req.getParameter("ib_size"));
		bookBean.setIb_stock(Integer.parseInt(req.getParameter("ib_stock")));
		
		BookModifyProService bookService = new BookModifyProService();
		Boolean isModify = bookService.modifyBook(bookBean);
		

		if(!isModify) {
			res.setContentType("text/html; charset=utf-8");
			PrintWriter out =res.getWriter();
			out.println("<script>");
			out.println("alert('책 수정 실패!!')");
			out.println("history.back()");
			out.println("</script>");
		}else {
			req.setAttribute("book", bookBean);
			forward.setPath("/bookMain.jsp");			
		}
		return forward;
	}

}
