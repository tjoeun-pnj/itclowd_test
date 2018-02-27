package com.test.book.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.test.book.model.BookAssessmentVo;
import com.test.book.model.BookDto;
import com.test.book.model.IndieAssessmentVo;
import com.test.book.model.IndieBookQueryVo;
import com.test.book.model.IndieBookVo;
import com.test.util.JDBCUtil;
import com.test.util.SqlUtil;

public class BookDao {
	private static BookDao bDao;
	private BookDao() {};
	public static BookDao getInstance() {
		if(bDao == null) bDao = new BookDao();
		return bDao;
	}
	
	public List<IndieBookVo> getIndieBookList(HashMap<String, Object> pMap){
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectList("book.indieBookList", pMap);
		} catch (Exception e) {
			e.printStackTrace();
			return null; 
		}
	}
	public int getListCount(HashMap<String, Object> pMap) {
		SqlSession session = null;
		
		try {
			session = SqlUtil.getSession();
			return session.selectOne("book.getListCount", pMap);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	public IndieBookVo getIndieBookDetail(int ib_no) {
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectOne("book.indieBookDetail", ib_no);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public int insertIndieGrade(HashMap<String, Object> pMap) {
		SqlSession session = null;
		int result = 0;
		try {
			session = SqlUtil.getSession();
			result = session.insert("book.insertIndieGrade", pMap);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
			session.rollback();
		}
		return result;
	}
	public List<BookDto> tasteSetList() {
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectList("book.tasteSetList");
		} catch (Exception e) {
			e.printStackTrace();
			return null; 
		}
	}
	/*public ArrayList<BookDto> tasteSetList() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select a.b_no b_no, c_no, b_title, b_img, avg(ba_grade) ba_grade, count(ba_grade) ba_count " + 
					"	from book a left outer join book_assessment b " + 
					"	on a.b_no = b.b_no where 0 = 0 " + 
					"	GROUP BY b_no " + 
					"	order by rand() " + 
					"	 limit 20";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			ArrayList<BookDto> list = new ArrayList<BookDto>();
			while(rs.next()) {
				BookDto bDto = new BookDto();
				bDto.setB_no(rs.getLong("b_no"));
				bDto.setC_no(rs.getInt("c_no"));
				bDto.setB_title(rs.getString("b_title"));
				bDto.setB_img(rs.getString("b_img"));
				bDto.setBa_grade(rs.getDouble("ba_grade"));
				bDto.setBa_count(rs.getInt("ba_count"));
				list.add(bDto);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null; 
		} finally {
			
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}*/
	public int insertBookGrade(HashMap<String, Object> pMap) {
		SqlSession session = null;
		int result = 0;
		try {
			session = SqlUtil.getSession();
			result = session.insert("book.insertBookGrade", pMap);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
			session.rollback();
		}
		return result;
	}
	public List<IndieBookVo> recommCate(int cate) {
		
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectList("book.recommCate", cate);
		} catch (Exception e) {
			e.printStackTrace();
			return null; 
		}
	}
	public int memberTasteCate(int m_no) {
		SqlSession session = null;
		
		try {
			session = SqlUtil.getSession();
			return session.selectOne("book.memberTasteCate", m_no);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	public int indieGradeMember(int m_no) {
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectOne("book.indieGradeMember", m_no);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	public List<IndieBookVo> recommGrade(HashMap<String, Integer> pMap) {
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectList("book.recommGrade", pMap);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public List<BookAssessmentVo> recommSelectMyBookGrade(int m_no) {
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectList("book.recommSelectMyBookGrade", m_no);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public List<BookAssessmentVo> recommSelectYourBookGrade(long b_no) {
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectList("book.recommSelectYourBookGrade", b_no);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public List<IndieAssessmentVo> recommSelectMyIndieGrade(int m_no) {
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectList("book.recommSelectMyIndieGrade", m_no);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public int getMyPageGradeListCount(int m_no) {
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectOne("book.getMyPageGradeListCount", m_no);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	public List<BookDto> getMyPageGradeList(HashMap<String, Object> pMap) {
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectList("book.getMyPageGradeList", pMap);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public List<IndieAssessmentVo> indieBookGradeList(HashMap<String, Object> pMap) {
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectList("book.indieBookGradeList", pMap);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	public int indieBookGradeListCount(int ib_no) {
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectOne("book.indieBookGradeListCount", ib_no);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
}
