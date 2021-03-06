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

public class IndieBookDetailAction implements Action {

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
		ActionForward forward = new ActionForward();
		req.setAttribute("article", new Gson().toJson(ibService.indieBookDetail(ib_no)));
		ArrayList<IndieAssessmentVo> list = ibService.indieBookGradeList(pMap);
		JsonObject jObj = new JsonObject();
		jObj.addProperty("json", new Gson().toJson(list));
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
		jObj.addProperty("page", new Gson().toJson(pageInfo));
		req.setAttribute("listIndieGrade", jObj); 
		forward.setPath("/indieDetail.jsp");
		return forward;
	}

}
