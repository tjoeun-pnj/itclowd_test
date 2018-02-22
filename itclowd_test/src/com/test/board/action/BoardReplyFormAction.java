package com.test.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.board.model.BoardBean;
import com.test.board.svc.BoardDetailService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

public class BoardReplyFormAction implements Action {

	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
       
		ActionForward forward = new ActionForward();
		int board_num = Integer.parseInt(req.getParameter("board_num"));
		String nowPage = req.getParameter("page");
		BoardDetailService baordDetailservice = new BoardDetailService();
		BoardBean article = baordDetailservice.getArticle(board_num);

		req.setAttribute("page", nowPage);
		req.setAttribute("article", article);
		forward.setPath("/qna/board_reply.jsp");
		return forward;		
	
	}

}
