package com.minu.basket.vo;

import java.util.ArrayList;

import com.minu.book.vo.BookBean;
/*******
 * jsp에서 다수의 불특정 ArrayList 정보를 (json을 이용하여) Servlet 으로 넘기기 위해 사용하는 데이터 모델이다.
 * @author 이민우
 *
 */
public class SonBean {
	private ArrayList<Basket> baskets;
	private ArrayList<BookBean> books;

	public ArrayList<Basket> getBaskets() {
		return baskets;
	}

	public void setBaskets(ArrayList<Basket> baskets) {
		this.baskets = baskets;
	}

	public ArrayList<BookBean> getBooks() {
		return books;
	}

	public void setBooks(ArrayList<BookBean> books) {
		this.books = books;
	}
	
}
