package com.minu.selling.dao;

import java.sql.Connection;

import javax.sql.DataSource;

public class SellDAO {
	
	Connection conn = null;
	DataSource ds = null;
	
	private static SellDAO sellDao;
	public static SellDAO getInstance() {
		if(sellDao == null) sellDao = new SellDAO();
		return sellDao;
	}
	public void setConnection(Connection conn) {
		this.conn = conn;
	}
	public int integrateData(int od_no, int ib_no, int od_amount) {
		
		
		return 0;
	}
}

