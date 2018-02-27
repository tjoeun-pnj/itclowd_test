package com.test.book.action;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.test.book.model.IndieAssessmentVo;
import com.test.book.service.IndieBookDetailService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;
import com.test.vo.PageInfo;

public class IndieGradeListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		int ib_no = Integer.parseInt(req.getParameter("ib_no"));
		HashMap<String, Object> pMap = new HashMap<String, Object>();
		int page = Integer.parseInt(req.getParameter("page"));
		int limit = 5;
		pMap.put("startRow", (page-1)*limit );
		pMap.put("limit", limit );
		pMap.put("ib_no", ib_no );
		IndieBookDetailService ibService = new IndieBookDetailService();
		ArrayList<IndieAssessmentVo> list =  ibService.indieBookGradeList(pMap); 
		int listCount = ibService.indieBookGradeListCount(ib_no);
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
		String pageJson = new Gson().toJson(pageInfo);
		JsonObject jObj = new JsonObject();
		res.setContentType("application/x-json;charset=utf-8");
		if(list != null) {
			jObj.addProperty("result", true);
			jObj.addProperty("json", new Gson().toJson(list));
			jObj.addProperty("page", pageJson);
		} else {
			jObj.addProperty("result", false);
		}
		res.getWriter().print(jObj);
		return null;
	}

}
