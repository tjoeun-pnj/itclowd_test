package com.test.book.model;

import java.sql.Date;

public class BookDto {
	 private long b_no	;			//						 bigint(15) NOT NULL COMMENT 'isbn',
	 private String b_img	;			//							varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '표지',
	 private String b_title ;			//											varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '상품명',
	 private String b_writer; 			//								varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '저자',
	 private Date b_date 	;		//									varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '출간일',
	 private String b_intro ;			//												text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '책소개',
	 private int b_price ;			//												int(11) NOT NULL COMMENT '정가',
	 private int c_no 	;			//										int(11) NULL DEFAULT NULL COMMENT '장르번호',
	 private String b_size 	;		//								varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '책크기',
	 private int b_page  ;           //
	 private double ba_grade;
	 private int ba_count;
	 private int ba_no;
	 
	public int getBa_no() {
		return ba_no;
	}
	public void setBa_no(int ba_no) {
		this.ba_no = ba_no;
	}
	public double getBa_grade() {
		return ba_grade;
	}
	public void setBa_grade(double ba_grade) {
		this.ba_grade = ba_grade;
	}
	public int getBa_count() {
		return ba_count;
	}
	public void setBa_count(int ba_count) {
		this.ba_count = ba_count;
	}
	public long getB_no() {
		return b_no;
	}
	public void setB_no(long b_no) {
		this.b_no = b_no;
	}
	public String getB_img() {
		return b_img;
	}
	public void setB_img(String b_img) {
		this.b_img = b_img;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_writer() {
		return b_writer;
	}
	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}
	public Date getB_date() {
		return b_date;
	}
	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}
	public String getB_intro() {
		return b_intro;
	}
	public void setB_intro(String b_intro) {
		this.b_intro = b_intro;
	}
	public int getB_price() {
		return b_price;
	}
	public void setB_price(int b_price) {
		this.b_price = b_price;
	}
	public int getC_no() {
		return c_no;
	}
	public void setC_no(int c_no) {
		this.c_no = c_no;
	}
	public String getB_size() {
		return b_size;
	}
	public void setB_size(String b_size) {
		this.b_size = b_size;
	}
	public int getB_page() {
		return b_page;
	}
	public void setB_page(int b_page) {
		this.b_page = b_page;
	}
	 
	 
	 
}   
                            