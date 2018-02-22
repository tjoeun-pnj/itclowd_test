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
	   String realFolder = "";
	   String saveFolder = "/boardUpload";
	   int fileSize = 1024 * 1024 * 5;
	   ServletContext context = req.getServletContext();
	   
	   realFolder = context.getRealPath(saveFolder);    
	   
	   MultipartRequest multi
	      = new MultipartRequest(req, realFolder, fileSize, "utf-8", new DefaultFileRenamePolicy());

	   boardBean = new BoardBean();
	   boardBean.setBOARD_NAME(multi.getParameter("BOARD_NAME"));
	   boardBean.setBOARD_PASS(multi.getParameter("BOARD_PASS"));
	   boardBean.setBOARD_SUBJECT(multi.getParameter("BOARD_SUBJECT"));
	   boardBean.setBOARD_CONTENT(multi.getParameter("BOARD_CONTENT"));
	   boardBean.setBOARD_FILE(
			   multi.getOriginalFileName((String)multi.getFileNames().nextElement()));
	   


	   
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

















