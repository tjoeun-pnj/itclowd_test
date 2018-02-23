package com.test.member.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.test.member.medel.MemberVo;
import com.test.member.service.MemberLoginService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

public class MemberLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ActionForward forward = null;
		MemberLoginService mlService = new MemberLoginService();
		HashMap<String, String> lData = new HashMap();
		lData.put("m_id", req.getParameter("m_id"));
		lData.put("m_pass", req.getParameter("m_pass"));
		
		
		MemberVo mVo = mlService.loginMember(lData);
		JsonObject json = new JsonObject();
		res.setContentType("application/x-json;charset=utf-8");
		if(mVo == null) {
			json.addProperty("result", false);
			res.getWriter().println(json);
			return forward;
		} else {
			req.getSession().setAttribute("authUser", mVo);
			req.getSession().setAttribute("authUserJson", new Gson().toJson(mVo));
			json.addProperty("result", true);
			res.getWriter().println(json);
			return forward;
		}
		
		// 계속 로그인 트루
		/*JsonObject json = new JsonObject();
		res.setContentType("application/x-json;charset=utf-8");
		MemberVo mVo = new MemberVo();
		mVo.setM_id("aa");
		mVo.setM_pass("aa");
		req.getSession().setAttribute("authUser", new Gson().toJson(mVo));
		json.addProperty("result", true);
		res.getWriter().println(json);
		return forward;*/
	}

}
