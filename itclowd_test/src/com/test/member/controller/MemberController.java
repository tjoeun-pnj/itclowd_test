package com.test.member.controller;

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


import com.test.member.action.MemberJoinAction;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

@WebServlet("/member/*")
public class MemberController extends HttpServlet{

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
		String command = requestURI.substring(contextPath.length()+7);
		ActionForward forward = null;
		Action action = null;
		System.out.println("memberCon");
		if (command.equals("/join")) {
			System.out.println("memberCon - join");
			action = new MemberJoinAction();
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
	/**
	  * 전송하는 부분
	  * @param p_con
	  * @throws IOException
	  */
	 private void send(HttpURLConnection con, byte[] p_writeMsg)
	   throws IOException {
	  DataOutputStream dos = new DataOutputStream(con.getOutputStream());
	  dos.write(p_writeMsg);
	  dos.flush();
	 }


	 /**
	  * 수신하는 부분
	  * @param p_con
	  * @throws IOException
	  */
	 private String read(HttpURLConnection con) throws IOException {
	  BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	  String strData = null;
	  StringBuffer sb = new StringBuffer();
	  while ((strData = br.readLine()) != null) {
	   sb.append(strData);
	  }
	  return new String(sb.toString().getBytes());
	 }


	
}
