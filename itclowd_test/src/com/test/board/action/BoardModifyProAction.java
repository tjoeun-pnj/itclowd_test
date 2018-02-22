package com.test.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.board.model.BoardBean;
import com.test.board.svc.BoardModifyProService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

public class BoardModifyProAction implements Action {


	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
        

		ActionForward forward = new ActionForward();
        boolean isModifySuccess = false;
        int board_num = Integer.parseInt(req.getParameter("BOARD_NUM"));
        BoardBean article = new BoardBean();
        BoardModifyProService boardModifyProService = new BoardModifyProService();
        boolean isRightUser = boardModifyProService.isArticleWriter(board_num, req.getParameter("BOARD_PASS"));

		
		if(!isRightUser) {
			res.setContentType("text/html;charset=utf-8");
			PrintWriter out = res.getWriter();
			out.print("<script>");
			out.print("alert('수정할 권한이 없습니다.');");
			out.println("history.back();");
			out.print("</script>");
		}else {
			article.setBoard_num(board_num);
			article.setBoard_subject(req.getParameter("BOARD_SUBJECT"));
			article.setBoard_content(req.getParameter("BOARD_CONTENT"));
			System.out.println(article.getBoard_subject());
			isModifySuccess = boardModifyProService.modifyArticle(article);
			
			
			if(!isModifySuccess) {
				res.setContentType("text/html;charset=utf-8");
				PrintWriter out = res.getWriter();
				out.print("<script>");
				out.print("alert('게시글 수정 실패');");
				out.println("history.back();");
				out.print("</script>");
			}else {
				forward = new ActionForward();
				forward.setRedirect(true);
				forward.setPath("boardDetail.bo?board_num=" + article.getBoard_num());
			}

		} 
		return forward;
	}

}
