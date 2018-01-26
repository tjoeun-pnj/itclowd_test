package com.test.vo;

import java.util.ArrayList;
import java.util.Date;

public class BookVO {
	private int version;
	private String tile;
	private String link;
	private String pubDate;
	private int totalResults;
	private int itemsPerPage;
	private int startIndex;
	private String query;
	private int searchCategoryId;
	private String searchCategoryName;
	private ArrayList<BookItemVO> item;
	public int getVersion() {
		return version;
	}
	public void setVersion(int version) {
		this.version = version;
	}
	public String getTile() {
		return tile;
	}
	public void setTile(String tile) {
		this.tile = tile;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getPubDate() {
		return pubDate;
	}
	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}
	public int getTotalResults() {
		return totalResults;
	}
	public void setTotalResults(int totalResults) {
		this.totalResults = totalResults;
	}
	public int getItemsPerPage() {
		return itemsPerPage;
	}
	public void setItemsPerPage(int itemsPerPage) {
		this.itemsPerPage = itemsPerPage;
	}
	public int getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	public String getQuery() {
		return query;
	}
	public void setQuery(String query) {
		this.query = query;
	}
	public int getSearchCategoryId() {
		return searchCategoryId;
	}
	public void setSearchCategoryId(int searchCategoryId) {
		this.searchCategoryId = searchCategoryId;
	}
	public String getSearchCategoryName() {
		return searchCategoryName;
	}
	public void setSearchCategoryName(String searchCategoryName) {
		this.searchCategoryName = searchCategoryName;
	}
	public ArrayList<BookItemVO> getItem() {
		return item;
	}
	public void setItem(ArrayList<BookItemVO> item) {
		this.item = item;
	}
	
	
}
