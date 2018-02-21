package com.test.book.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.test.book.dao.BookDao;
import com.test.book.model.IndieBookQueryVo;
import com.test.book.model.IndieBookVo;

public class IndieListService {

	public ArrayList<IndieBookVo> indieGetList(IndieBookQueryVo qVo) {
		return (ArrayList<IndieBookVo>) BookDao.getInstance().getIndieBookList(qVo);
	}


	public int getListCount(IndieBookQueryVo qVo) {
		return BookDao.getInstance().getListCount(qVo);
	}




}
