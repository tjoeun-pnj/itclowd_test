package com.minu.book.dao;

import static com.minu.db.JdbcUtil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.sql.DataSource;

import com.minu.book.vo.BookBean;

public class BookDAO {
	
	Connection conn =null;
	DataSource ds =null;
	
	private static BookDAO boardDAO;
	private BookDAO() {	}
	public static BookDAO getInstance() {
		if(boardDAO == null) boardDAO = new BookDAO();
		return boardDAO;
	}
	public void setConnection(Connection conn) {
		this.conn =conn;
	}
	
	public int selectListCount() {
		int listCount = 0;
		PreparedStatement  pstmt = null;
		ResultSet rs =null;
		String sql = "select count(*) from indie_book";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) listCount=rs.getInt(1);
		} catch (Exception e) {
			System.out.println("게시글 갯수 가져오기 실패!!");
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return listCount;
	}
	
	public ArrayList<BookBean> selectArticleList(int page, int limit) {
		
		ArrayList<BookBean> bookList =new ArrayList<BookBean>();
		BookBean book = null;
		PreparedStatement pstmt =null;
		ResultSet rs =null;
		String sql = "select * from indie_book limit ?, 10";
		
		int startRow=(page-1) *10;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			rs =pstmt.executeQuery();
			
			while(rs.next()) {
				book = new BookBean();
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
		} catch (Exception e) {
			System.out.println("게시글 목록 조회 실패!!"+e);
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return bookList;
	}
	public int insertBook(BookBean book) {
		PreparedStatement pstmt =null;
		String sql="insert into indie_book(c_no, ib_title, ib_writer, ib_price, ib_date, ip_no, ib_intro, ib_page, ib_img, ib_img1, ib_img2, ib_img3, ib_size, ib_stock)"+
				"values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		int insertCount=0;
		int num=0;
		
		try {
			pstmt =conn.prepareStatement(sql);
			pstmt.setInt(1, book.getC_no());
			pstmt.setString(2, book.getIb_title());
			pstmt.setString(3, book.getIb_writer());
			pstmt.setInt(4, book.getIb_price());

			pstmt.setInt(5, book.getIb_date());
			pstmt.setInt(6, book.getIp_no());
			pstmt.setString(7, book.getIb_intro());
			pstmt.setInt(8, book.getIb_page());
			pstmt.setString(9, book.getIb_img());
			pstmt.setString(10, book.getIb_img1());
			pstmt.setString(11, book.getIb_img2());
			pstmt.setString(12, book.getIb_img3());
			pstmt.setString(13, book.getIb_size());
			pstmt.setInt(14, book.getIb_stock());
			insertCount =pstmt.executeUpdate();			
		} catch (Exception e) {
			System.out.println("게시글 등록 실패"+e);
		} finally {
			close(pstmt);
		}
		return insertCount;
	}
	
	public BookBean detailBook(int ib_no) {
		BookBean book = new BookBean();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from indie_book where ib_no=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, ib_no);
			rs=pstmt.executeQuery();
			if(rs.next()) {
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
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return book;
	}
	public int modifyBook(BookBean book) {
		PreparedStatement pstmt = null;
		String sql = "update indie_book set c_no=?, ib_title=?, ib_writer=?, "+
				"ib_price=?, ib_date=?, ip_no=?, ib_intro=?, ib_page=?, ib_img=?, ib_img1=?, ib_img2=?, ib_img3=?, "
				+"ib_size=?, ib_stock=? where ib_no=?";
		int updateCount= 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, book.getC_no());
			pstmt.setString(2, book.getIb_title());
			pstmt.setString(3, book.getIb_writer());
			pstmt.setInt(4, book.getIb_price());
			pstmt.setInt(5,book.getIb_date());
			pstmt.setInt(6, book.getIp_no());
			pstmt.setString(7, book.getIb_intro());
			pstmt.setInt(8, book.getIb_page());
			pstmt.setString(9, book.getIb_img());
			pstmt.setString(10, book.getIb_img1());
			pstmt.setString(11, book.getIb_img2());
			pstmt.setString(12, book.getIb_img3());
			pstmt.setString(13, book.getIb_size());
			pstmt.setInt(14, book.getIb_stock());
			pstmt.setInt(15, book.getIb_no());
			updateCount=pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return updateCount;
		
	}
}
