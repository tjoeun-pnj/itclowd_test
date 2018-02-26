package com.test.book.service;

import java.util.HashMap;

import com.test.book.dao.BookDao;

public class BookGradeService {

	public boolean insertBookGrade(HashMap<String, Object> pMap) {
		int row = BookDao.getInstance().insertBookGrade(pMap);
		if(row > 0) return true;
		else return false;
	}

}
