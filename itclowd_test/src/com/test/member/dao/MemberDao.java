package com.test.member.dao;

import org.apache.ibatis.session.SqlSession;

import com.test.member.medel.MemberVo;
import com.test.util.SqlUtil;

public class MemberDao {
	private static MemberDao mDao;
	private MemberDao() {}
	public static MemberDao getInstance() {
		if(mDao == null) mDao = new MemberDao();
		return mDao;
	}
	
	public int joinMember(MemberVo mVo) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			result = session.insert("member.insertMember", mVo);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
			result = 0;
		} 
		return result;
	}
}
