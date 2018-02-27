package com.minu.sell.dao;

import static com.minu.db.JdbcUtil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.minu.basket.vo.Basket;
import com.minu.book.vo.BookBean;
import com.minu.sell.vo.OrderBean;
import com.test.member.medel.MemberVo;

public class SellDao {

	public int basketAdd(int m_no, int ib_no, int c_amount, Connection conn) {
		PreparedStatement stmt =null;
		ResultSet rs = null;
		String sql = "insert into cart(c_no, m_no, ib_no, c_amount) values(?, ?, ?, ?)";
		int num = 0;
		int result = 0;
		try {
			stmt = conn.prepareStatement("select max(c_no) from cart");
			rs=stmt.executeQuery();
			if(rs.next()) num =rs.getInt(1)+1; else num = 1;
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, num);
			stmt.setInt(2, m_no);
			stmt.setInt(3, ib_no);
			stmt.setInt(4, c_amount);
			result=stmt.executeUpdate();
			
		} catch(Exception e) {
			System.out.println("장바구니 담기 실패");
		} finally {
			close(rs);
			close(stmt);
		}
		return result;
	}

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

	public int addOrderDetail(BookBean book, Basket basket,int o_no, Connection conn) {
		int result=0;
		PreparedStatement stmt = null;
		ResultSet rs= null;
		
		String sql="insert into order_detail(o_no, ib_no, od_amount) values(?, ?, ?)";
		
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, o_no);
			stmt.setInt(2, book.getIb_no());
			stmt.setInt(3, basket.getC_amount());
			result=stmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(stmt);
		}
		return result;
	}

	public int changeIndieBookStock(Basket basket, BookBean bookBean, Connection conn) {
		int result=0;
		PreparedStatement stmt = null;
		String sql = "update indie_book set ib_stock=? where ib_no=?";
		
		try {
			stmt=conn.prepareStatement(sql);
			stmt.setInt(1, bookBean.getIb_stock()-basket.getC_amount());
			stmt.setInt(2, bookBean.getIb_no());
			result=stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(stmt);
		}
		return result;
	}

}

