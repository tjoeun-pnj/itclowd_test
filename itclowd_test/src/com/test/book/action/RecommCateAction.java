package com.test.book.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.test.book.model.BookDto;
import com.test.book.model.IndieBookVo;
import com.test.book.service.RecommCateService;
import com.test.book.service.TasteSetService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

public class RecommCateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		RecommCateService rcService = new RecommCateService();
		ArrayList<IndieBookVo> list = rcService.recommCate(Integer.parseInt(req.getParameter("m_no")));
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
