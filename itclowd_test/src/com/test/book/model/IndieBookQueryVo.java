package com.test.book.model;

public class IndieBookQueryVo {
	private String query;
	private int startRow;
	private int limit;
	private int cate;
	public String getQuery() {
		return query;
	}
	public void setQuery(String query) {
		this.query = query;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public int getCate() {
		return cate;
	}
	public void setCate(int cate) {
		this.cate = cate;
	}
	
}
