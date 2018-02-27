package com.minu.book.action;

import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minu.book.svc.InsertBookProService;
import com.minu.book.vo.ActionForward;
import com.minu.book.vo.BookBean;

public class InsertBookProAction implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		ActionForward forward =null;
		BookBean bookBean = null;
		
		bookBean =new BookBean();
		bookBean.setC_no(Integer.parseInt(req.getParameter("c_no")));
		bookBean.setIb_title(req.getParameter("ib_title"));
		bookBean.setIb_writer(req.getParameter("ib_writer"));
		bookBean.setIb_price(Integer.parseInt(req.getParameter("ib_price")));

		String date = req.getParameter("ib_date");
		bookBean.setIb_date(Integer.parseInt(date));
		bookBean.setIp_no(Integer.parseInt(req.getParameter("ip_no")));
		bookBean.setIb_intro(req.getParameter("ib_intro"));
		bookBean.setIb_page(Integer.parseInt(req.getParameter("ib_page")));
		
		System.out.println(req.getParameter("my_file"));
		System.out.println(req.getParameter("my_file1"));
		System.out.println(req.getParameter("my_file2"));
		System.out.println(req.getParameter("my_file3"));
		
		bookBean.setIb_img(req.getParameter("my_file"));
		bookBean.setIb_img1(req.getParameter("my_file1"));
		bookBean.setIb_img2(req.getParameter("my_file2"));
		bookBean.setIb_img3(req.getParameter("my_file3"));
		
		bookBean.setIb_size(req.getParameter("ib_size"));
		bookBean.setIb_stock(Integer.parseInt(req.getParameter("ib_stock")));
				
		InsertBookProService boardWriteProService = new InsertBookProService();
		boolean isWriteSuccess = boardWriteProService.registArticle(bookBean);
				
		if(!isWriteSuccess) {
			res.setContentType("text/html; charset=utf-8");
			PrintWriter out =res.getWriter();
			out.println("<script>");
			out.println("alert('책 등록 실패!!')");
			out.println("history.back()");
			out.println("</script>");
		}else {
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("/bookList.jsp");
		}
		return forward;
	}
}
