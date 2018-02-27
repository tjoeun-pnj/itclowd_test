package com.minu.basket.svc;

import java.util.ArrayList;

import com.minu.basket.dao.BasketDAO;
import com.minu.basket.vo.Basket;
import com.minu.book.vo.BookBean;

public class BasketService {
	private BasketDAO basketDataAccess;
	
	public BasketService() {
		basketDataAccess = new BasketDAO();
	}
	/***********
	 * 장바구니의 품목을 가져오는 메소드
	 * @return
	 */
	public ArrayList<Basket> getBasket(int m_no){
		ArrayList<Basket> baskets = null;
		try {
			baskets = basketDataAccess.basketSearch(m_no);
		}catch(Exception e) {
			baskets = null;
		}
		return baskets;
	}
	/**********
	 * 장바구니 번호로 상품 검색하기 
	 * @param cNo
	 * @return
	 */
	public ArrayList<Basket> getBasket(String[] cNo) {
		ArrayList<Basket> baskets = null;
		try {
			baskets = basketDataAccess.basketSearch(cNo);
		} catch(Exception e) {
			baskets = null;
		}
		return baskets;
	}
	
	public ArrayList<BookBean> getAllBook(ArrayList<Basket> baskets) {
		ArrayList<BookBean> book = null;
		
		int[] ib_no = new int[baskets.size()];
		
		for(int i=0; i<baskets.size(); i++) {
			ib_no[i]=baskets.get(i).getIb_no();
		}
		
		try {
			book = basketDataAccess.productInfo(ib_no);
		} catch (Exception e) {
			book = null;
		}
		return book;
	}
	/**********
	 * 장바구니 품목 삭제
	 * @param m_no
	 * @param c_no
	 */
	public void deleteBasket(int m_no, int c_no) {
		basketDataAccess.basketDelete(m_no, c_no);
	}
	/*********
	 *  장바구니 품목 추가
	 * @param m_id
	 * @param ib_no
	 * @param c_amount
	 */
	public void addBasket(int m_no, int ib_no, int c_amount) {
		basketDataAccess.basketAdd(m_no, ib_no, c_amount);
	}	
}

