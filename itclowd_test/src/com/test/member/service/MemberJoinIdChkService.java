package com.test.member.service;

import com.test.member.dao.MemberDao;

public class MemberJoinIdChkService {

	public boolean joinMemberIdChk(String m_id) {
		MemberDao mDao = MemberDao.getInstance();
		int result =  mDao.joinMemberIdChk(m_id);
		if(result > 0)return true;
		else return false;
	}

}
