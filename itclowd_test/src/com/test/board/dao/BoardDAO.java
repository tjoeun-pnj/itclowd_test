package com.test.board.dao;

import static com.test.util.JDBCUtil.close;
import static com.test.util.JDBCUtil.commit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;

import com.test.board.model.BoardBean;
import com.test.util.SqlUtil;

 

public class BoardDAO {
	
	Connection conn = null;
	DataSource ds = null;
	
	private static BoardDAO boardDAO;	
	private BoardDAO() {}	
	public static BoardDAO getInstance() {
		if(boardDAO == null) boardDAO = new BoardDAO();
		return boardDAO;
	}
	
	// DB커넥션
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	
	// 글의 갯수를 구하기
	/*public int selectListCount() {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null; // 테이블 값을 가져오는 것
		String sql = "select count(*) from qna";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) listCount = rs.getInt(1);
		}catch(Exception e) {
			System.out.println("게시글갯수 가져오기 실패" + e);
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return listCount;
		
	} */
	public int selectListCount(HashMap<String , Object> pMap) {
		int result = 0;
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			result = session.selectOne("qnaboard.selectListCount", pMap);
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
		} 
		return result;
	}
	
	
	
	// 글목록조회
/*	public ArrayList<BoardBean> selectArticleList(int page, int limit) {
		ArrayList<BoardBean> articleList = new ArrayList<>();
		BoardBean board = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select  * from qna "
					+ "order by board_re_ref desc, " +
		             " board_re_seq asc "
		             + "  limit ?, 10";
		String sql = "select * from (select @ROWNUM:=@ROWNUM+1 AS ROWNUM, qna.* from qna, (select @ROWNUM:=0)R "
				+ "order by board_re_ref asc, " +
				" board_re_seq desc) qna "
				+ " order by board_re_ref desc, board_re_seq asc limit ?, 10";
		
		int startRow = (page-1) * 10;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow); // startRow는 ?에 던져짐
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				board = new BoardBean();
//				board.setROWNUM(rs.getInt("ROWNUM"));
				board.setBOARD_NUM(rs.getInt("board_num"));
				board.setBOARD_NAME(rs.getString("board_name"));
				board.setBOARD_SUBJECT(rs.getString("board_subject"));
				board.setBOARD_CONTENT(rs.getString("board_content"));
				board.setBOARD_FILE(rs.getString("board_file"));
				board.setBOARD_SUBJECT(rs.getString("board_subject"));
				board.setBOARD_RE_REF(rs.getInt("board_re_ref"));
				board.setBOARD_RE_LEV(rs.getInt("board_re_lev"));
				board.setBOARD_RE_SEQ(rs.getInt("board_re_seq"));
				board.setBOARD_READCOUNT(rs.getInt("board_readcount"));
				board.setBOARD_DATE(rs.getDate("board_date"));
				articleList.add(board);			
			}			
		} catch (Exception e) {
            System.out.println("게시글목록조회 실패" + e);
		}finally {
			close(rs);
			close(pstmt);
		}		
		return articleList;
	}*/
	public List<BoardBean> selectArticleList(HashMap<String , Object> pMap){
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectList("qnaboard.selectArticleList", pMap);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} 
	}
	// 글내용보기
	/*public BoardBean selectArticle(int board_num) {
		
		BoardBean board = null;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from qna where board_num = " + board_num;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				board = new BoardBean();
				board.setBOARD_NUM(rs.getInt("board_num"));
				board.setBOARD_NAME(rs.getString("board_name"));
				board.setBOARD_SUBJECT(rs.getString("board_subject"));
				board.setBOARD_CONTENT(rs.getString("board_content"));
				board.setBOARD_FILE(rs.getString("board_file"));
				board.setBOARD_SUBJECT(rs.getString("board_subject"));
				board.setBOARD_RE_REF(rs.getInt("board_re_ref"));
				board.setBOARD_RE_LEV(rs.getInt("board_re_lev"));
				board.setBOARD_RE_SEQ(rs.getInt("board_re_seq"));
				board.setBOARD_READCOUNT(rs.getInt("board_readcount"));
				board.setBOARD_DATE(rs.getDate("board_date"));				
			}
		} catch (Exception e) {
           System.out.println("게시글 조회 실패" + e);
		}finally {
		   close(rs);	
		   close(pstmt);	
		}
			return board;
	}*/
	public BoardBean selectArticle(int board_num) {
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			return session.selectOne("qnaboard.selectArticle", board_num);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} 
	}
	// 글등록 boardWriteProService에서 넘어옴
	/*public int insertArticle(BoardBean article) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "insert into qna(board_num, board_name, board_pass, board_subject," +
		             " board_content, board_file, board_re_ref, board_re_lev, board_re_seq, board_readcount," +
				     " board_date) values(?,?,?,?,?,?,?,?,?,?,now())";
		
		int insertCount = 0;
		int num = 0;
		
		try {
			
			// 기존 게시물이 존재하면 해당 글번호 + 1을 답변글 번호로 사용
			pstmt = conn.prepareStatement("select max(board_num) from qna");
			rs = pstmt.executeQuery();
	
			if(rs.next()) num = rs.getInt(1) + 1; else num = 1;
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, article.getBOARD_NAME());
			pstmt.setString(3, article.getBOARD_PASS());
			pstmt.setString(4, article.getBOARD_SUBJECT());
			pstmt.setString(5, article.getBOARD_CONTENT());
			pstmt.setString(6, article.getBOARD_FILE());
			pstmt.setInt(7, num);
			pstmt.setInt(8, 0);
			pstmt.setInt(9, 0);
			pstmt.setInt(10, 0);
			insertCount = pstmt.executeUpdate();			
		}catch(Exception e) {
			System.out.println("게시글등록 실패" + e);
		}finally {
			close(rs);
			close(pstmt);
		}
		return insertCount;
		
	} */
	public int insertArticle(BoardBean article) {
		SqlSession session = null;
		int result = 0;
		try {
			session = SqlUtil.getSession();
			int num = session.selectOne("qnaboard.insertArticleNum");
			num += 1;
			article.setBOARD_RE_REF(num);
			article.setBOARD_NUM(num);
			result = session.insert("qnaboard.insertArticle", article);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			result = 0;
			session.rollback();
		}
		return result;
	}
	// 글답변
	/*public int insertReplyArticle(BoardBean article) {
		
		int insertCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "";
		int num = 0;
	    int re_ref = article.getBOARD_RE_REF();
	    int re_lev = article.getBOARD_RE_LEV();
	    int re_seq = article.getBOARD_RE_SEQ();	
		
		try {
			
			// 기존 게시물이 존재하면 해당 글번호 + 1을 답변글 번호로 사용
			pstmt = conn.prepareStatement("select max(board_num) + 1 from qna");
			rs = pstmt.executeQuery(); 
			
			if(rs.next()) num = rs.getInt(1); else num = 1;  
			
			sql  = "update qna set board_re_seq = board_re_seq + 1 " + 
			       " where board_re_ref = ? and board_re_seq > ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, re_ref);
			pstmt.setInt(2, re_seq);
			int updateCount = pstmt.executeUpdate();
			
			if(updateCount > 0) commit(conn);
			
			re_seq = re_seq + 1;
			re_lev = re_lev + 1;
			sql = "insert into qna(board_num, board_name, board_pass, board_subject," +
		          " board_content, board_file, board_re_ref, board_re_lev, board_re_seq, board_readcount," +
				  " board_date) values(?,?,?,?,?,?,?,?,?,?,now())";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, article.getBOARD_NAME());
			pstmt.setString(3, article.getBOARD_PASS());
			pstmt.setString(4, article.getBOARD_SUBJECT());
			pstmt.setString(5, article.getBOARD_CONTENT());
			pstmt.setString(6, ""); //답장에는 파일을 업로드 하지 않음
			pstmt.setInt(7, re_ref);
			pstmt.setInt(8, re_lev);
			pstmt.setInt(9, re_seq);
			pstmt.setInt(10, 0);
			insertCount = pstmt.executeUpdate();
			
			
		} catch (Exception e) {
          System.out.println("답변글 등록 실패" + e);
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return insertCount;
		
	}*/
	public int insertReplyArticle(BoardBean article) {
		SqlSession session = null;
		int insertCount = 0;
		int num = 0;
		HashMap<String, Integer> pMap = new HashMap<String, Integer>();
		pMap.put("re_ref", article.getBOARD_RE_REF());
		pMap.put("re_lev", article.getBOARD_RE_LEV());
		pMap.put("re_seq", article.getBOARD_RE_SEQ());
		try {
			session = SqlUtil.getSession();
			num = session.selectOne("qnaboard.insertref");
			if(num==0) num = 1;
			article.setBOARD_RE_REF(num);
			int updateCount = session.update("qnaboard.updateref", pMap);
			if(updateCount > 0) session.commit();
			article.setBOARD_RE_SEQ(pMap.get("re_seq")+1);
			article.setBOARD_RE_LEV(pMap.get("re_lev")+1);
			insertCount = session.insert("qnaboard.insertArticle", article);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			insertCount = 0;
			session.rollback();
		}
		return insertCount;
	}
	
	// 글수정
	/*public int updateArticle(BoardBean article) {
		
		int updateCount = 0;
		
		PreparedStatement pstmt = null;
		String sql = "update qna set board_subject = ?, board_content = ? " +
		             " where board_num = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, article.getBOARD_SUBJECT());
			pstmt.setString(2, article.getBOARD_CONTENT());
			pstmt.setInt(3, article.getBOARD_NUM());
			updateCount = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("게시글 수정 실패" + e);
		}finally {
			close(pstmt);
		}		
		return updateCount;
				
	}*/
	
	public int updateArticle(BoardBean article) {
		int updateCount = 0;
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			updateCount = session.update("qnaboard.updateArticle", article);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			updateCount = 0;
			session.rollback();
		}
		return updateCount;
	}
	
	
	// 글삭제
	/*public int deleteArticle(int board_num) {
		int deleteCount = 0;
		PreparedStatement pstmt = null;
		String sql = "delete from qna where board_num = " + board_num;
		try {
			pstmt = conn.prepareStatement(sql);
			deleteCount = pstmt.executeUpdate();		
		} catch (Exception e) {
           System.out.println("게시글 삭제 실패" + e);
		}finally {
			close(pstmt);
		}
		return deleteCount;
	}*/
	public int deleteArticle(int board_num) {
		int deleteCount = 0;
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			deleteCount = session.update("qnaboard.deleteArticle", board_num);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			deleteCount = 0;
			session.rollback();
		}
		return deleteCount;
	}
	
	// 조회수
	/*public int updateReadCount(int board_num) {
		int updateCount = 0;
		
		PreparedStatement pstmt = null;
		String sql = "update qna set board_readcount = board_readcount + 1 " +
		             " where board_num = " + board_num;
		try {
			pstmt = conn.prepareStatement(sql);
			updateCount = pstmt.executeUpdate();
		} catch (Exception e) {
            System.out.println("게시글조회수 업데이트 실패" + e);
		}finally {
			close(pstmt);
		}
			return updateCount;
		
	}*/
	public int updateReadCount(int board_num) {
		int updateCount = 0;
		SqlSession session = null;
		try {
			session = SqlUtil.getSession();
			updateCount = session.update("qnaboard.updateReadCount", board_num);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			updateCount = 0;
			session.rollback();
		}
		return updateCount;
	}
	
	// 글작성자 확인
	/*public boolean isArticleBoardWriter(int board_num, String pass) {
		boolean isWriter = false; // 인스턴스화 하지 않아 false
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from qna where board_num = " + board_num;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt. executeQuery();
			rs.next();
			if(pass.equals(rs.getString("BOARD_PASS"))) {
				isWriter = true;
			}
		} catch (Exception e) {
          System.out.println("게시글 수정 실패" + e);
		}finally {
			close(pstmt);
		}
		return isWriter;
	}*/
	public boolean isArticleBoardWriter(int board_num, String pass) {
		SqlSession session = null;
		boolean isWriter = false;
		try {
			session = SqlUtil.getSession();
			BoardBean article = session.selectOne("qnaboard.isArticleBoardWriter", board_num);
			if(pass.equals(article.getBOARD_PASS())) isWriter = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isWriter;
	}

}

























