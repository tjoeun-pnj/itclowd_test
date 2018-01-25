package com.test.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.svc.BoardListService;
import com.test.vo.BoardBean;

@WebServlet("*.do")
public class BoardController extends HttpServlet{

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
		String command = requestURI.substring(contextPath.length());
		if (command.equals("/boardList.do")) {
			BoardListService bService = new BoardListService();
			try {
				ArrayList<BoardBean> list = bService.getArticleList(0);
				req.setAttribute("list", list);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		RequestDispatcher dis = req.getRequestDispatcher("/board_list.jsp");
		dis.forward(req, res);
	}
	
}
