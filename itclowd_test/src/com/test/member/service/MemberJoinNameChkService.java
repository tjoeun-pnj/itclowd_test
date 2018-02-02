package com.test.member.service;

import com.test.member.dao.MemberDao;

public class MemberJoinNameChkService {

	public boolean joinMemberNameChk(String m_name) {
		MemberDao mDao = MemberDao.getInstance();
		int result =  mDao.joinMemberNameChk(m_name);
		if(result > 0)return true;
		else return false;
	}

}
