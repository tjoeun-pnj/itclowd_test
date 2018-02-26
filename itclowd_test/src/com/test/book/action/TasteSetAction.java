package com.test.book.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.test.book.model.BookDto;
import com.test.book.service.TasteSetService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

public class TasteSetAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		TasteSetService tsService = new TasteSetService();
		ArrayList<BookDto> list = tsService.tasteSetList();
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
