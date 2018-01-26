package com.test.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.test.svc.BoardListService;
import com.test.vo.BoardBean;
import com.test.vo.BookVO;

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
		RequestDispatcher dis = null;
		if (command.equals("/boardList.do")) {
			BoardListService bService = new BoardListService();
			try {
				ArrayList<BoardBean> list = bService.getArticleList(0);
				req.setAttribute("list", list);
			} catch (Exception e) {
				e.printStackTrace();
			}
			dis = req.getRequestDispatcher("/board_list.jsp");
		} else if (command.equals("/book.do")) {
			URL url = new URL("http://www.aladin.co.kr/ttb/api/ItemSearch.aspx?ttbkey=ttbgsgod0906001&Query=aladdin&QueryType=Title&MaxResults=10&start=1&SearchTarget=Book&output=js&Version=20131101");
			HttpURLConnection connection = null;
			
			try {
				connection = (HttpURLConnection)url.openConnection();
				connection.setRequestMethod("GET");
				connection.connect();
				int resCode = connection.getResponseCode();
				 if (resCode == HttpURLConnection.HTTP_OK) {
					    String result = read(connection);
					    Gson gson = new Gson();
					    BookVO bVo = gson.fromJson(result, BookVO.class);
					    req.setAttribute("book", bVo);
				} else {
					throw new IOException("ERROR : Communication Error\nMSG Code : " + resCode);
				}
				 dis = req.getRequestDispatcher("/book.jsp");
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				connection.disconnect();
			}
		}
		
		dis.forward(req, res);
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
