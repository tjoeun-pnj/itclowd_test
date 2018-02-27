package com.test.member.action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.JsonObject;
import com.test.member.medel.MemberVo;
import com.test.member.service.MemberLoginService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

public class MemberLogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		JsonObject json = new JsonObject();
		res.setContentType("application/x-json;charset=utf-8");
		HttpSession session = req.getSession(false);
		if(session != null) session.invalidate();
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("/main.jsp");
		return forward;
	}

}
