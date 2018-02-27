package com.minu.book.vo;

import java.util.Date;

public class BookBean { //'RE'는 게시글의 답변형 형태의 글의 레벨을 나타내 주는 변수

	private int ib_no; //책번호 (x)
	private int c_no; //장르번호 (o)
	private String ib_title; // 책 제목 (o)
	private String ib_writer; //작가명 (o)
	private int ib_price; //책 가격 (o)
	private Date ib_date; // 출판 년도 (o)
	private	int ip_no; //출판사 번호 (o)
	private String ib_intro; //책 소개 (o)
 	private int ib_page; //총 페이지 수 (o)
	private String ib_img; //책 표지 이미지 (o)
	private String ib_img1; //책 보조 이미지1 (o)
	private String ib_img2; //책 보조 이미지2	(o)
	private String ib_img3; //책 보조 이미지3 (o)
	private String ib_size; //책 크기  (o)
	private int ib_stock; //재고량 (o)
	public int getIb_no() {
		return ib_no;
	}
	public void setIb_no(int ib_no) {
		this.ib_no = ib_no;
	}
	public int getC_no() {
		return c_no;
	}
	public void setC_no(int c_no) {
		this.c_no = c_no;
	}
	public String getIb_title() {
		return ib_title;
	}
	public void setIb_title(String ib_title) {
		this.ib_title = ib_title;
	}
	public String getIb_writer() {
		return ib_writer;
	}
	public void setIb_writer(String ib_writer) {
		this.ib_writer = ib_writer;
	}
	public int getIb_price() {
		return ib_price;
	}
	public void setIb_price(int ib_price) {
		this.ib_price = ib_price;
	}
	public Date getIb_date() {
		return ib_date;
	}
	public void setIb_date(Date ib_date) {
		this.ib_date = ib_date;
	}
	public int getIp_no() {
		return ip_no;
	}
	public void setIp_no(int ip_no) {
		this.ip_no = ip_no;
	}
	public String getIb_intro() {
		return ib_intro;
	}
	public void setIb_intro(String ib_intro) {
		this.ib_intro = ib_intro;
	}
	public int getIb_page() {
		return ib_page;
	}
	public void setIb_page(int ib_page) {
		this.ib_page = ib_page;
	}
	public String getIb_img() {
		return ib_img;
	}
	public void setIb_img(String ib_img) {
		this.ib_img = ib_img;
	}
	public String getIb_img1() {
		return ib_img1;
	}
	public void setIb_img1(String ib_img1) {
		this.ib_img1 = ib_img1;
	}
	public String getIb_img2() {
		return ib_img2;
	}
	public void setIb_img2(String ib_img2) {
		this.ib_img2 = ib_img2;
	}
	public String getIb_img3() {
		return ib_img3;
	}
	public void setIb_img3(String ib_img3) {
		this.ib_img3 = ib_img3;
	}
	public String getIb_size() {
		return ib_size;
	}
	public void setIb_size(String ib_size) {
		this.ib_size = ib_size;
	}
	public int getIb_stock() {
		return ib_stock;
	}
	public void setIb_stock(int ib_stock) {
		this.ib_stock = ib_stock;
	}
}
