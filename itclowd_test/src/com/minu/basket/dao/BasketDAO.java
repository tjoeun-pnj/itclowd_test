package com.minu.basket.dao;

import static com.minu.db.JdbcUtil.close;
import static com.minu.db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.minu.basket.vo.Basket;
import com.minu.book.vo.BookBean;
import com.minu.sell.vo.OrderBean;
import com.test.member.medel.MemberVo;

public class BasketDAO {

	public ArrayList<Basket> basketSearch(int no) throws SQLException {
		ArrayList<Basket> baskets = new ArrayList<>();
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = "select * from cart where m_no = ?";
		try {
			conn = getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, no);
			rs = stmt.executeQuery();
		while(rs.next()) {
			int c_no = rs.getInt(1);
			int m_no = rs.getInt(2);
			int ib_no = rs.getInt(3);
			int c_amount = rs.getInt(4);
			baskets.add(new Basket(c_no, m_no, ib_no, c_amount));
		 }
		 return baskets;			
			
		}catch(Exception e) {
			System.out.println("모든 상품 검색 실패" + e);
		}finally {
			close(rs);
			close(stmt);
			close(conn);
		}	
	
		return null;		
	}
	/********
	 * 카트 넘버 알맞는 장바구니  품목 조회하기
	 * @param cNo
	 * @return
	 */
	public ArrayList<Basket> basketSearch(String[] cNo) {
		ArrayList<Basket> baskets = new ArrayList<Basket>();
		Connection conn = null;
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		String sql = "select * from cart where c_no = ?";
		try {
			conn = getConnection();
			for(int i=0; i<cNo.length; i++) {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, cNo[i]);
				rs= pstmt.executeQuery();
				while(rs.next()) {
					int c_no = rs.getInt(1);
					int m_no = rs.getInt(2);
					int ib_no = rs.getInt(3);
					int c_amount = rs.getInt(4);
					baskets.add(new Basket(c_no, m_no, ib_no, c_amount));					
				}
			}
			return baskets;
		} catch (Exception e) {
			System.out.println("선택 상품 검색 실패 "+e);
		} finally {
			close(rs);
			close(pstmt);
			close(conn);
		}
		return null;
	}
	public ArrayList<BookBean> productInfo(int[] ib_no) {
		ArrayList<BookBean> bookList = new ArrayList<>();
		BookBean book = new BookBean();
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = "select * from indie_book where ib_no = ?";
		// 조인을 사용해서 줄일 수 있음.
		
		try {
			conn = getConnection();
			stmt = conn.prepareStatement(sql);
			for(int i=0; i<ib_no.length; i++) {
				stmt.setInt(1, ib_no[i]);
				rs = stmt.executeQuery();
				
				while(rs.next()) {
					book.setIb_no(rs.getInt("ib_no"));
					book.setC_no(rs.getInt("c_no"));
					book.setIb_title(rs.getString("ib_title"));
					book.setIb_writer(rs.getString("ib_writer"));
					book.setIb_price(rs.getInt("ib_price"));
					book.setIb_date(rs.getInt("ib_date"));
					book.setIp_no(rs.getInt("ip_no"));
					book.setIb_intro(rs.getString("ib_intro"));
					book.setIb_page(rs.getInt("ib_page"));
					book.setIb_img(rs.getString("ib_img"));
					book.setIb_img1(rs.getString("ib_img1"));
					book.setIb_img2(rs.getString("ib_img2"));
					book.setIb_img3(rs.getString("ib_img3"));
					book.setIb_size(rs.getString("ib_size"));
					book.setIb_stock(rs.getInt("ib_stock"));
					
					bookList.add(book);
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
			close(conn);
		}
		return bookList;
	}

	public void basketDelete(int m_no, int c_no) {
		Connection conn =null;
		PreparedStatement stmt =null;
		String sql = "delete from cart where m_no=? and c_no =?";
		int result = 0;
		
		System.out.println("이민우");
		try {
			conn = getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, m_no);
			stmt.setInt(2, c_no);
			result = stmt.executeUpdate();
			
			if(result >0) conn.commit();
			else conn.rollback();
			
		} catch (Exception e) {
			System.out.println("장바구니 삭제 실패");
		} finally {
			close(stmt);
			close(conn);
		}
	}

	public void basketAdd(int m_no, int ib_no, int c_amount) {
		Connection conn =getConnection();
		PreparedStatement stmt =null;
		String sql = "insert into cart(m_no, ib_no, c_amount) values(?, ?, ?)";
		int result = 0;
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, m_no);
			stmt.setInt(2, ib_no);
			stmt.setInt(3, c_amount);
			result=stmt.executeUpdate();
			if(result >0) conn.commit();
			else conn.rollback();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(conn);
		}
	}

	/******
	 * 무통장 입금에서 구매내역 테이블에 추가하기
	 * @param o_addr
	 * @param O_COMP
	 * @param sum
	 * @param m_no
	 * @param O_CHOICE
	 * @param depositor
	 * @param conn
	 * @return
	 */
	public int addOrder(OrderBean order, Connection conn) {
		int result = 0;
		PreparedStatement stmt = null;
		ResultSet rs =null;
		MemberVo mVo = order.getmVo();
		String sql = "INSERT INTO `order`(o_no,o_addr, o_date, o_comp, o_total_price, m_no, o_choice, o_name) values( ?, ?, now(), ?, ?, ?, ?, ?)";
		int o_no=0;
		
		try {
			stmt= conn.prepareStatement("select max(o_no) from `order`");
			rs=stmt.executeQuery();
			if(rs.next()) o_no=rs.getInt(1)+1; else o_no=1;
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, o_no);
			stmt.setString(2, order.getO_addr());
			stmt.setInt(3, order.getO_COMP());
			stmt.setInt(4, order.getO_TOTAL_PRICE());
			stmt.setInt(5, mVo.getM_no());
			stmt.setInt(6, order.getO_CHOICE());
			stmt.setString(7, order.getO_NAME());
			stmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
			return 0;
		} finally {
			close(rs);
			close(stmt);
		}
		
		return o_no;
	}
	/***
	 *  데이터 삽입 실패 시 이전 데이터 동기화를 위한 rollback();
	 */
	public void deleteOrder(int o_no, Connection conn) {
		PreparedStatement stmt = null;
		String sql = "delete from `order` where o_no = ?";
		int result=0;
		
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, o_no);
			result=stmt.executeUpdate();
			
			if(result>0) {
				conn.commit();
			}else {
				conn.rollback();
				System.out.println("주문페이지 동기화 실패");
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(stmt);
		}
	}
	
	/***********
	 * 주문 상세 내역을 추가한다.
	 * @param order
	 * @param o_no
	 * @param conn
	 * @return
	 */
	public int addOrderDetail(OrderBean order, int o_no, Connection conn) {
		int result=0;
		PreparedStatement stmt = null;
		ResultSet rs= null;
		ArrayList<Basket> baskets = order.getBaskets();
		int od_no;
		
		String sql="insert into order_detail(o_no, ib_no, od_amount) values(?, ?, ?)";
		
		try {
			stmt=conn.prepareStatement("select max(od_no) from order_detail");
			rs=stmt.executeQuery();
			if(rs.next()) od_no=rs.getInt(1)+1; else od_no=1;
			for(int i=0; i<baskets.size(); i++) {
				stmt=conn.prepareStatement(sql);
				stmt.setInt(1, o_no);
				stmt.setInt(2, baskets.get(i).getIb_no());
				stmt.setInt(3, baskets.get(i).getC_amount());
				result=stmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}
		return result;
	}
	/**********
	 * 주문 시 데이터 동기화 실패 시 삭제 작업.
	 * @param size
	 * @param conn
	 */
	public void deleteOrderDetail(int size, Connection conn) {
		int result=0;
		ResultSet rs = null;
		PreparedStatement stmt = null;
		int od_no;
		
		String sql="delete from order_detail where od_no = ?";
		
		try {
			stmt=conn.prepareStatement("select max(od_no) from order_detail");
			rs=stmt.executeQuery();
			if(rs.next()) {
				od_no=rs.getInt(1); 
				for(od_no=od_no ; od_no>od_no-size ; od_no--) {
					stmt=conn.prepareStatement(sql);
					stmt.setInt(1, od_no);
					result=stmt.executeUpdate();
				}
			}else {
				System.out.println("od_no 호출 실패했습니다. 동기화 실패했습니다.");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}		
	}	

	/************
	 * 장바구니에서 구매한 품목들을 장바구니 목록에서 제거한다.
	 * @param baskets
	 * @param conn
	 * @return
	 */
	public int deleteCart(ArrayList<Basket> baskets, Connection conn) {
		int result=0;
		PreparedStatement stmt = null;
		String sql = "delete from cart where c_no = ?";
		
		try {
			for(int i=0; i<baskets.size(); i++) {
				stmt=conn.prepareStatement(sql);
				stmt.setInt(1, baskets.get(i).getC_no());
				result=stmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(stmt);
		}
		return result;
	}
	/**********
	 * 구매시 데이터 동기화 실패할 경우, 이전에 바뀐 데이터를 동기화 하기위해 추가하는 작업
	 * @param baskets
	 * @param conn
	 */
	public void basketRecovery(ArrayList<Basket> baskets, Connection conn) {
		int result=0;
		PreparedStatement stmt = null;
		ResultSet rs=null;
		String sql = "insert into cart(c_no, m_no, ib_no, c_amount) values(?, ?, ?, ?)";
		
		try {
			for(int i=0; i<baskets.size(); i++) {
				stmt=conn.prepareStatement(sql);
				stmt.setInt(1, baskets.get(i).getC_no());
				stmt.setInt(1, baskets.get(i).getM_no());
				stmt.setInt(1, baskets.get(i).getIb_no());
				stmt.setInt(1, baskets.get(i).getC_amount());
				result=stmt.executeUpdate();
				
				if(result>0) {
					conn.commit();
				} else {
					System.out.println("장바구니 복구 실패했습니다. 데이터 동기화에 실패했습니다.");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(stmt);
		}		
	}
	
	
	/*********
	 * 수요와 공급량을 파악하기 위해 indie_book 테이블에 공급된 공급량 - 주문한 수요량을
	 *  ib_stock 컬럼(재고량)으로 수정한다.
	 * @param books 
	 * @param baskets
	 * @param conn
	 * @return
	 */
	public int changeIndieBookStock(ArrayList<Basket> baskets, ArrayList<BookBean> books, Connection conn) {
		int result=0;
		PreparedStatement stmt = null;
		String sql = "update indie_book set ib_stock=? where ib_no=?";
		
		try {
			for(int i=0; i<baskets.size(); i++) {
				stmt=conn.prepareStatement(sql);
				stmt.setInt(1, books.get(i).getIb_stock()-baskets.get(i).getC_amount());
				stmt.setInt(2, baskets.get(i).getIb_no());
				result=stmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(stmt);
		}
		return result;
	}


}
