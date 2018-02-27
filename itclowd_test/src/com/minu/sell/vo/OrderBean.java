package com.minu.sell.vo;

import java.util.ArrayList;

import com.minu.basket.vo.Basket;
import com.minu.book.vo.BookBean;
import com.test.member.medel.MemberVo;

public class OrderBean {
	MemberVo mVo;
	ArrayList<BookBean> books;
	ArrayList<Basket> baskets;
	int O_TOTAL_PRICE;
	String o_addr;
	String phone;
	String message;
	String O_NAME;
	int O_COMP;
	int O_CHOICE;
	String bank;
	BookBean book;
	Basket basket;
	
	public BookBean getBook() {
		return book;
	}
	public void setBook(BookBean book) {
		this.book = book;
	}
	public Basket getBasket() {
		return basket;
	}
	public void setBasket(Basket basket) {
		this.basket = basket;
	}
	public MemberVo getmVo() {
		return mVo;
	}
	public void setmVo(MemberVo mVo) {
		this.mVo = mVo;
	}
	public ArrayList<BookBean> getBooks() {
		return books;
	}
	public void setBooks(ArrayList<BookBean> books) {
		this.books = books;
	}
	public ArrayList<Basket> getBaskets() {
		return baskets;
	}
	public void setBaskets(ArrayList<Basket> baskets) {
		this.baskets = baskets;
	}
	public int getO_TOTAL_PRICE() {
		return O_TOTAL_PRICE;
	}
	public void setO_TOTAL_PRICE(int o_TOTAL_PRICE) {
		O_TOTAL_PRICE = o_TOTAL_PRICE;
	}
	public String getO_addr() {
		return o_addr;
	}
	public void setO_addr(String o_addr) {
		this.o_addr = o_addr;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getO_NAME() {
		return O_NAME;
	}
	public void setO_NAME(String o_NAME) {
		O_NAME = o_NAME;
	}
	public int getO_COMP() {
		return O_COMP;
	}
	public void setO_COMP(int o_COMP) {
		O_COMP = o_COMP;
	}
	public int getO_CHOICE() {
		return O_CHOICE;
	}
	public void setO_CHOICE(int o_CHOICE) {
		O_CHOICE = o_CHOICE;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	
}
