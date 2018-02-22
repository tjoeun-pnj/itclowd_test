package com.test.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.board.svc.BoardDeleteService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;


public class BoardDeleteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
    ActionForward forward = null;
    
    int board_num = Integer.parseInt(req.getParameter("board_num"));
    String nowPage = req.getParameter("page");
    BoardDeleteService boardDeleteService = new BoardDeleteService();
    boolean isArticleWriter = boardDeleteService.isArticleWriter(board_num, req.getParameter("BOARD_PASS"));
    
    if(!isArticleWriter) {
    	res.setContentType("text.html;charset=utf-8");
    	PrintWriter out = res.getWriter();
    	out.println("<script>");
    	out.println("alert('삭제할 권한이 없습니다.');");
    	out.println("history.back();");
    	out.println("</script>");
    }else {
    	boolean isDeleteSuccess = boardDeleteService.removeArticle(board_num);
    	if(!isDeleteSuccess) {
        	res.setContentType("text.html;charset=utf-8");
        	PrintWriter out = res.getWriter();
        	out.println("<script>");
        	out.println("alert('삭제 실패.');");
        	out.println("history.back();");
        	out.println("</script>");
    		
    	}else {
    		forward = new ActionForward();
    		forward.setRedirect(true);
    		forward.setPath("./boardList.bo?page=" + nowPage);
    	}
    }
    
    
		return forward;
	}

}
