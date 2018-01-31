package com.test.member.service;

import com.test.member.dao.MemberDao;
import com.test.member.medel.MemberVo;

public class MemberJoinServece {

	public boolean joinMember(MemberVo mVo) throws Exception {
		MemberDao mDao = MemberDao.getInstance();
		int result =  mDao.joinMember(mVo);
		if(result > 0)return true;
		else return false;
	}

}
