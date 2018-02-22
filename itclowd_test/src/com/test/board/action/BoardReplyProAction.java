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
		
	    article.setBoard_num(Integer.parseInt(req.getParameter("BOARD_NUM")));
	    article.setBoard_name(req.getParameter("BOARD_NAME"));
	    article.setBoard_pass(req.getParameter("BOARD_PASS"));
	    article.setBoard_subject(req.getParameter("BOARD_SUBJECT"));
	    article.setBoard_content(req.getParameter("BOARD_CONTENT"));	    
	    article.setBoard_re_ref(Integer.parseInt(req.getParameter("BOARD_RE_REF")));
	    article.setBoard_re_lev(Integer.parseInt(req.getParameter("BOARD_RE_LEV")));
	    article.setBoard_re_seq(Integer.parseInt(req.getParameter("BOARD_RE_SEQ")));
	    
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
