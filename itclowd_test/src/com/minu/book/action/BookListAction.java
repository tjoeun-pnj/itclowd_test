package com.minu.book.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minu.book.svc.BookListService;
import com.minu.book.vo.ActionForward;
import com.minu.book.vo.BookBean;
import com.minu.book.vo.PageInfo;

public class BookListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		 
		ArrayList<BookBean> bookList = new ArrayList<BookBean>();
		int page = 1;
		int limit = 10;
		
		if(req.getParameter("page")!=null) page=Integer.parseInt(req.getParameter("page"));
		
		BookListService bookListService = new BookListService();
		int listCount = bookListService.getListCount();
		bookList = bookListService.getArticleList(page, limit); //게시글목록 가져옴
		
		//총 페이지 수
		int maxPage = (int)((double)listCount/limit+0.95); //페이지 올림
		
		//현재 페이지에 보여줄 시작 페이지 수 (1, 11, 21,....)
		int startPage = (((int)((double)page/10+0.9))-1)*10+1;
		
		//현재 페이지에 보여줄 마지막 페이지 수(10, 20, 30...)
		int endPage=startPage+10-1;
		
		if(endPage>maxPage) endPage=maxPage;
		PageInfo pageInfo = new PageInfo();
		pageInfo.setEndPage(endPage);
		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setStartPage(startPage);
		req.setAttribute("pageInfo", pageInfo);
		req.setAttribute("bookList", bookList);
		ActionForward forward =new ActionForward();
		forward.setPath("/bookPage/book_list.jsp");
		return forward;
	}
}
