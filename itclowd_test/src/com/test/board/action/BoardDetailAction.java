package com.test.board.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.board.model.BoardBean;
import com.test.board.svc.BoardDetailService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

public class BoardDetailAction implements Action {


	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {

		int board_num = Integer.parseInt(req.getParameter("board_num"));
		String page = req.getParameter("page");
		BoardDetailService boardDetailService = new BoardDetailService();
		BoardBean article = boardDetailService.getArticle(board_num);
		ActionForward forward = new ActionForward();
		req.setAttribute("page", page);
		req.setAttribute("article", article);
		forward.setPath("/qna/board_view.jsp");	
		
		return forward;
	}

}
