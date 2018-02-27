package com.minu.basket.vo;

public class Basket {

	int c_no;
	int m_no;
	int ib_no;
	int c_amount;
	
	public Basket(int c_amount) {
		this.c_amount=c_amount;
	}
	
	public Basket (int c_no, int m_no, int ib_no, int c_amount) {
		this.c_no = c_no;
		this.m_no = m_no;
		this.ib_no = ib_no;
		this.c_amount= c_amount;
	}

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public int getIb_no() {
		return ib_no;
	}

	public void setIb_no(int ib_no) {
		this.ib_no = ib_no;
	}

	public int getC_amount() {
		return c_amount;
	}

	public void setC_amount(int c_amount) {
		this.c_amount = c_amount;
	}
	
}
