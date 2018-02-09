package com.test.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;
import com.test.member.medel.MemberVo;
import com.test.member.service.MemberJoinServece;
import com.test.util.ActionForward;
import com.test.util.inter.Action;

public class MemberJoinAction implements Action {

	/*******************8
	 * 회원가입 
	 * db등록 성공 여부를 받아 json을 줌 그리고 화면에서 판단
	 */
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		ActionForward forward = null;
		MemberVo mVo = new MemberVo();
		mVo.setM_id(req.getParameter("m_id"));
		mVo.setM_name(req.getParameter("m_name"));
		mVo.setM_pass(req.getParameter("m_pass"));
		System.out.println(mVo.getM_id());
		MemberJoinServece mjService = new MemberJoinServece();
		boolean isJoinSuccess = mjService.joinMember(mVo);
		JsonObject json = new JsonObject();
		res.setContentType("application/x-json;charset=utf-8");
		if(isJoinSuccess) {
			json.addProperty("result", true);
		}else {
			json.addProperty("result", false);
		}
		res.getWriter().print(json);
		return null;
	}
	/**************
	 * 계속 트루용 시험용 삭제요망
	 */
	/*@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		JsonObject json = new JsonObject();
		res.setContentType("application/x-json;charset=utf-8");
		if(true) {
			json.addProperty("result", true);
		}
		res.getWriter().print(json);
		return null;
	}*/

}
