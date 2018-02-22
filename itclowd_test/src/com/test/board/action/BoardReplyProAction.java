package com.test.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.board.model.BoardBean;
import com.test.board.svc.BoardReplyProService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

public class BoardReplyProAction implements Action {

	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {

		ActionForward forward = null;
		BoardBean article = new BoardBean();
		String nowPage = req.getParameter("page"); 
		
	    article.setBOARD_NUM(Integer.parseInt(req.getParameter("BOARD_NUM")));
	    article.setBOARD_NAME(req.getParameter("BOARD_NAME"));
	    article.setBOARD_PASS(req.getParameter("BOARD_PASS"));
	    article.setBOARD_SUBJECT(req.getParameter("BOARD_SUBJECT"));
	    article.setBOARD_CONTENT(req.getParameter("BOARD_CONTENT"));	    
	    article.setBOARD_RE_REF(Integer.parseInt(req.getParameter("BOARD_RE_REF")));
	    article.setBOARD_RE_LEV(Integer.parseInt(req.getParameter("BOARD_RE_LEV")));
	    article.setBOARD_RE_SEQ(Integer.parseInt(req.getParameter("BOARD_RE_SEQ")));
	    
		BoardReplyProService boardReplyProService = new BoardReplyProService();
		boolean isReplySuccess = boardReplyProService.replyArticle(article);
	    
	    if(isReplySuccess) {
	    	
	    	forward = new ActionForward();
	    	forward.setRedirect(true);
	    	forward.setPath("boardList.bo?page=" + nowPage);
	    	
	    }else {
	    	res.setContentType("text/html;charset=utf-8");
	    	PrintWriter out = res.getWriter();
	    	out.print("<script>");
	    	out.print("alert(답장글 등록 실패);");
	    	out.print("history.back();");
	    	out.print("</script>");
	    }
	    
		
		return forward;
	}

}
