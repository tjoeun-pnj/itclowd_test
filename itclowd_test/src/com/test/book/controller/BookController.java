package com.test.book.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.book.action.BookMainBestAction;
import com.test.member.action.MemberJoinAction;
import com.test.member.action.MemberJoinIdChkAction;
import com.test.member.action.MemberJoinNameChkAction;
import com.test.member.action.MemberLoginAction;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

@WebServlet("/book/*")
public class BookController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		process(req, res);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		process(req, res);
	}

	private void process(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		
		req.setCharacterEncoding("utf-8");
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length()+5);
		ActionForward forward = null;
		Action action = null;
		if (command.equals("/mainBest")) {
			action = new BookMainBestAction();
			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/idchk")) {
			action = new MemberJoinIdChkAction();
			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/namechk")) {
			action = new MemberJoinNameChkAction();
			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(command.equals("/login")) {
			action = new MemberLoginAction();
			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if(forward != null) {
			if(forward.isRedirect()) res.sendRedirect(forward.getPath());
			else {
				RequestDispatcher dis = req.getRequestDispatcher(forward.getPath());
				dis.forward(req, res);
			}
		}
	}


	
}
