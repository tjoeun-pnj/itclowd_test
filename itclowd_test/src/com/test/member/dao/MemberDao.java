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
	
	/**************************88
	 * 회원 가입 
	 * @param mVo
	 * @return int
	 */
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
	/**********************************8
	 * 이메일 중복확인
	 * @param m_id
	 * @return int
	 */
	public int joinMemberIdChk(String m_id) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			result = session.selectOne("member.joinIdChk", m_id);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
			result = 0;
		} 
		return result;
	}
	
	/***************************************************
	 * 닉네임 중복 확인
	 * @param m_name
	 * @return int
	 */
	public int joinMemberNameChk(String m_name) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			result = session.selectOne("member.joinNameChk", m_name);
			session.commit();
		} catch (Exception e) {
			session.rollback();
			e.printStackTrace();
			result = 0;
		} 
		return result;
	}
}
