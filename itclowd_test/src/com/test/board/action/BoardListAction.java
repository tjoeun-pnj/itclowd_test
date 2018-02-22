package com.test.board.action;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.board.model.BoardBean;
import com.test.board.svc.BoardListService;
import com.test.util.ActionForward;
import com.test.util.db.PageInfo;
import com.test.util.inter.Action;

public class BoardListAction implements Action {

	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
	   
		HttpSession session = req.getSession();
		Object aa = session.getAttribute("isLogin");
		
		
		ArrayList<BoardBean> articleList = new ArrayList<>();
		int page = 1;
		int limit = 10;
		
		if(req.getParameter("page") != null) page = Integer.parseInt(req.getParameter("page"));
		
		BoardListService boardListService = new BoardListService(); 
		HashMap<String, Object> pMap = new HashMap<String, Object>();
		pMap.put("limit", limit);
		pMap.put("startRow", (page-1)*10);
		int listCount = boardListService.getListCount(pMap); 
		articleList = boardListService.getArticleList(pMap); // 게시글목록 가져옴
		// 총페이지수
		int maxPage = (int)((double)listCount / limit + 0.95); // 페이지올림
		// 현재페이지에 보여줄 시작 페이지수(1, 11, 21...)
		int startPage = (((int)((double)page / 10 + 0.9)) - 1) * 10 + 1; 
		// 현재페이지에 보여줄 마지막 페이지수(10, 20, 30 ...)
		int endPage = startPage + 10 - 1;
		
		if(endPage > maxPage) endPage = maxPage;
		
		PageInfo pageInfo = new PageInfo();
		pageInfo.setEndPage(endPage);
		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setStartPage(startPage);
		req.setAttribute("pageInfo", pageInfo);
		req.setAttribute("articleList", articleList);
		ActionForward forward = new ActionForward();
		forward.setPath("/qna/board_list.jsp");
		
		return forward;
		
	}

}
