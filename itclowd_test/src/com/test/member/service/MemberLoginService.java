package com.test.member.service;

import java.util.HashMap;

import com.test.member.dao.MemberDao;
import com.test.member.medel.MemberVo;

public class MemberLoginService {

	public MemberVo loginMember(HashMap<String, String> lData) {
		MemberDao mDao = MemberDao.getInstance();
		return mDao.loginMember(lData);
	}

}
