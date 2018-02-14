package com.test.book.action;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.test.book.model.IndieBookVo;
import com.test.book.service.IndieListService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

public class IndieListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HashMap<String, Integer> pMap = new HashMap();
		int page = Integer.parseInt(req.getParameter("page"));
		pMap.put("startRow", (page-1)*20 );
		pMap.put("cate",Integer.parseInt(req.getParameter("cate")));
		IndieListService ilService = new IndieListService();
		ArrayList<IndieBookVo> list = ilService.indieGetList(pMap);
		String json = new Gson().toJson(list);
		JsonObject jObj = new JsonObject();
		res.setContentType("application/x-json;charset=utf-8");
		if(list != null) {
			jObj.addProperty("result", true);
			jObj.addProperty("json", json);
		} else {
			jObj.addProperty("result", false);
		}
		res.getWriter().print(jObj);
		return null;
	}

}
