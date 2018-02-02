package com.test.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;
import com.test.member.service.MemberJoinIdChkService;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

public class MemberJoinIdChkAction implements Action {

	
	/*****************************
	 * db에 아이디를 체크해 json으로 결과를 준다
	 */
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		ActionForward forward = null;
		MemberJoinIdChkService mjidService = new MemberJoinIdChkService();
		boolean isIdChk = mjidService.joinMemberIdChk(req.getParameter("m_id"));
		JsonObject json = new JsonObject();
		res.setContentType("application/x-json;charset=utf-8");
		json.addProperty("type", "email");
		if(isIdChk) {
			json.addProperty("result", true);
		}else {
			json.addProperty("result", false);
		}
		res.getWriter().print(json);
		return null;
	}
}
