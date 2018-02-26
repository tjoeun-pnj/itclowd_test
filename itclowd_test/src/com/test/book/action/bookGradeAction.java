package com.test.book.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;
import com.test.book.service.BookGradeService;
import com.test.book.service.IndieBookGradeService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

public class bookGradeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HashMap<String, Object> pMap = new HashMap<String, Object>();
		pMap.put("b_no", req.getParameter("b_no"));
		pMap.put("m_no", req.getParameter("m_no"));
		pMap.put("ba_grade", req.getParameter("ba_grade"));
		pMap.put("ba_content", req.getParameter("ba_content"));
		BookGradeService bgService = new BookGradeService();
		boolean result = bgService.insertBookGrade(pMap);
		JsonObject jObj = new JsonObject();
		res.setContentType("application/x-json;charset=utf-8");
		jObj.addProperty("result", result);
		res.getWriter().print(jObj);
		return null;
	}

}
