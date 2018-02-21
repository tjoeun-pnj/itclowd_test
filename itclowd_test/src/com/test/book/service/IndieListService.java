package com.test.book.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.test.book.dao.BookDao;
import com.test.book.model.IndieBookQueryVo;
import com.test.book.model.IndieBookVo;

public class IndieListService {

	public ArrayList<IndieBookVo> indieGetList(HashMap<String, Object> pMap) {
		return (ArrayList<IndieBookVo>) BookDao.getInstance().getIndieBookList(pMap);
	}


	public int getListCount(HashMap<String, Object> pMap) {
		return BookDao.getInstance().getListCount(pMap);
	}




}
