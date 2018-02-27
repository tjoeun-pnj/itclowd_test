package com.minu.book.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minu.book.action.Action;
import com.minu.book.action.BookDetailAction;
import com.minu.book.action.BookListAction;
import com.minu.book.action.InsertBookProAction;
import com.minu.book.action.ModifyBookFormAction;
import com.minu.book.action.ModifyBookProAction;
import com.minu.book.vo.ActionForward;

@WebServlet("*.bk")
public class FirstController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		doProcess(req, res);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		doProcess(req, res);
	}

	private void doProcess(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		ActionForward forward = null;
		Action action =null;
		
		
		 if(command.equals("/insertBookForm.bk")) {
			forward = new ActionForward();
			forward.setPath("/bookPage/insert_book.jsp");
		} else if(command.equals("/insertBookPro.bk")) {
			action = new InsertBookProAction();
			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/bookDetail.bk")) {
			action = new BookDetailAction();
			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/modifyBook.bk")) {
			action = new ModifyBookFormAction();
			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/modiFyBookPro.bk")) {
			action = new ModifyBookProAction();
			try {
				forward = action.execute(req, res);
			} catch( Exception e) {
				e.printStackTrace();
			}
		}
		
		if(forward != null) {
			if(forward.isRedirect()) {
				res.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
				dispatcher.forward(req, res);
			}
		
		}
	}

	
}
