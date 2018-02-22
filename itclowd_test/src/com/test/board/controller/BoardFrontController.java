package com.test.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.board.action.BoardDeleteProAction;
import com.test.board.action.BoardDetailAction;
import com.test.board.action.BoardListAction;
import com.test.board.action.BoardModifyFormAction;
import com.test.board.action.BoardModifyProAction;
import com.test.board.action.BoardReplyFormAction;
import com.test.board.action.BoardReplyProAction;
import com.test.board.action.BoardWriteProAction;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

@WebServlet("*.bo")
public class BoardFrontController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {

		doProcess(req,res);
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		doProcess(req,res);
	}
	
	private void doProcess(HttpServletRequest req, HttpServletResponse res) 			
			throws ServletException, IOException {

		req.setCharacterEncoding("utf-8"); 
		String requestURI = req.getRequestURI(); // /jsp10_board_controller/*.bo
		String contextPath = req.getContextPath(); // /jps10_board_controller
		String command = requestURI.substring(contextPath.length()); // /*.bo
		

		
		ActionForward forward = null;
		Action action = null;
		
		if(command.equals("/boardWriteForm.bo")) { 
			forward = new ActionForward();
			forward.setPath("/qna/board_wrtie.jsp");
		}else if(command.equals("/boardWrtiePro.bo")) { // BoardWriteProAction.java
			action = new BoardWriteProAction();
			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/boardList.bo")) {
			action = new BoardListAction();
			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
	
		}else if(command.equals("/boardDetail.bo")) {
			action = new BoardDetailAction();

			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
	
		}else if(command.equals("/boardReplyForm.bo")) {
			action = new BoardReplyFormAction();
			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
			 
         	}else if(command.equals("/boardModifyForm.bo")) {
			action = new BoardModifyFormAction();
			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
				
	     }else if(command.equals("/boardReplyPro.bo")) {
				action = new BoardReplyProAction();
				try {
					forward = action.execute(req, res);
				} catch (Exception e) {
					e.printStackTrace();
				}
	     }else if(command.equals("/boardModifyPro.bo")) {
				action = new BoardModifyProAction();
				try {
					forward = action.execute(req, res);
				} catch (Exception e) {
					e.printStackTrace();
				}
				
         }else if(command.equals("/boardDeleteForm.bo")) {
        	 String nowPage = req.getParameter("page");
        	 req.setAttribute("page", nowPage);
        	 int board_num = Integer.parseInt(req.getParameter("board_num"));
        	 req.setAttribute("board_num", board_num);
        	 forward = new ActionForward();
        	 forward.setPath("/qna/board_delete.jsp");
        			
	         }else if(command.equals("/boardDeletePro.bo")) {
				action = new BoardDeleteProAction();
				try {
					forward = action.execute(req, res);
				} catch (Exception e) {
					e.printStackTrace();
				}
	         }

		
		if(forward != null) {
			if(forward.isRedirect()) {
				res.sendRedirect(forward.getPath());
			}else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, res);
			}
		}
		 
	  }
	
	}

	
