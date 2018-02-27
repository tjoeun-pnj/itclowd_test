package com.test.book.action;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.test.book.model.BookDto;
import com.test.book.model.IndieBookVo;
import com.test.book.service.IndieListService;
import com.test.book.service.MyPageFradeListService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;
import com.test.vo.PageInfo;

public class MyPageGradeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HashMap<String, Object> pMap = new HashMap<String, Object>();
		int page = Integer.parseInt(req.getParameter("page"));
		int limit = 20;
		int m_no = Integer.parseInt(req.getParameter("m_no"));
		pMap.put("m_no", m_no);
		pMap.put("startRow", (page-1)*limit );
		pMap.put("limit", limit );
		MyPageFradeListService mplService = new MyPageFradeListService();
		int listCount = mplService.getMyPageGradeListCount(m_no);
		ArrayList<BookDto> list = mplService.getMyPageGradeList(pMap);
		int maxPage = (int)((double)listCount/limit+0.95);
		int startPage = (((int)((double)page/10+0.9))-1)*10+1;
		int endPage = startPage + 10 -1;
		if(endPage > maxPage) endPage = maxPage;
		PageInfo pageInfo = new PageInfo();
		pageInfo.setEndPage(endPage);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setStartPage(startPage);
		pageInfo.setPage(page);
		pageInfo.setListCount(listCount);
//		req.setAttribute("pageInfo", pageInfo);
		String json = new Gson().toJson(list);
		String pageJson = new Gson().toJson(pageInfo);
		JsonObject jObj = new JsonObject();
		res.setContentType("application/x-json;charset=utf-8");
		if(list != null) {
			jObj.addProperty("result", true);
			jObj.addProperty("json", json);
			jObj.addProperty("page", pageJson);
			req.getSession().setAttribute("indiePage",pageJson);
		} else {
			jObj.addProperty("result", false);
		}
		res.getWriter().print(jObj);
		return null;
	}

}
