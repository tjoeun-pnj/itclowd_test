package com.test.book.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;
import com.test.book.service.IndieBookGradeService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

public class IndieGradeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HashMap<String, Object> pMap = new HashMap<String, Object>();
		pMap.put("ib_no", req.getParameter("ib_no"));
		pMap.put("m_no", req.getParameter("m_no"));
		pMap.put("ia_grade", req.getParameter("ia_grade"));
		pMap.put("ia_content", req.getParameter("ia_content"));
		IndieBookGradeService ibgService = new IndieBookGradeService();
		boolean result = ibgService.insertIndieGrade(pMap);
		JsonObject jObj = new JsonObject();
		res.setContentType("application/x-json;charset=utf-8");
		jObj.addProperty("result", result);
		res.getWriter().print(jObj);
		return null;
	}

}
