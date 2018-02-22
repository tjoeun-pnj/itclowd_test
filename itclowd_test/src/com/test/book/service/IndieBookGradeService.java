package com.test.book.service;

import java.util.HashMap;

import com.test.book.dao.BookDao;

public class IndieBookGradeService {

	public boolean insertIndieGrade(HashMap<String, Object> pMap) {
		int row = BookDao.getInstance().insertIndieGrade(pMap);
		if(row > 0) return true;
		else return false;
	}

}
