package com.minu.basket.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.minu.basket.action.AddBasketAction;
import com.minu.basket.action.BuyAllInBasketFormAction;
import com.minu.basket.action.BuyInBasketProAction;
import com.minu.basket.action.BuySelectionInBasketFormAction;
import com.minu.basket.action.DeleteBasketAction;
import com.minu.basket.action.RetrieveBasketAction;
import com.minu.book.action.Action;
import com.minu.book.vo.ActionForward;

@WebServlet("*.ba")
public class BasketController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doprocess(req, res);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doprocess(req, res);
	}

	private void doprocess(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		req.setCharacterEncoding("utf-8");
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		ActionForward forward = null;
		Action action = null;
		
		if(command.equals("/basket.ba")) {
			action = new RetrieveBasketAction();
			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/delete.ba")) {
			action = new DeleteBasketAction();
			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/take.ba")) {
			action = new AddBasketAction();
			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/buyAllInBasketForm.ba")) {
			action = new BuyAllInBasketFormAction();
			try {
				forward = action.execute(req, res);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/buyInBasketPro.ba")) {
			action = new BuyInBasketProAction();
			try {
				forward=action.execute(req, res);
			} catch(Exception e) {
				e.printStackTrace();
			} 
		}else if(command.equals("/buySelectionInBasketForm.ba")) {
			action = new BuySelectionInBasketFormAction();
			try {
				forward=action.execute(req, res);
			} catch (Exception e) {
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
