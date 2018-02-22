package com.test.board.action;

import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.test.board.model.BoardBean;
import com.test.board.svc.BoardWriteProService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

public class BoardWriteProAction implements Action {


	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
	   ActionForward forward = null;
	   BoardBean boardBean = null;
	   
	   

	   boardBean = new BoardBean();
	   boardBean.setBoard_name(req.getParameter("BOARD_NAME"));
	   boardBean.setBoard_pass(req.getParameter("BOARD_PASS"));
	   boardBean.setBoard_subject(req.getParameter("BOARD_SUBJECT"));
	   boardBean.setBoard_content(req.getParameter("BOARD_CONTENT"));
	   boardBean.setM_no(Integer.parseInt(req.getParameter("m_no")));
	   BoardWriteProService boardWriteProService = new BoardWriteProService();
	   boolean isWriteSuccess = boardWriteProService.registArticle(boardBean);
	   
	   if(!isWriteSuccess) {
		   res.setContentType("text/html;charset=utf-8");
		   PrintWriter out = res.getWriter();
		   out.println("<script>");
		   out.println("alert('게시글 등록 실패');");
		   out.println("history.back();");
		   out.println("</script>");
		   
	   }else {
		   forward = new ActionForward();
		   forward.setRedirect(true);
		   forward.setPath("boardList.bo");
	   }
	   return forward;
	   
	}

}

















