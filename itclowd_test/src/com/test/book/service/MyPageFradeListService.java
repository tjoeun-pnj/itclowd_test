package com.test.book.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.test.book.dao.BookDao;
import com.test.book.model.BookDto;

public class MyPageFradeListService {

	public int getMyPageGradeListCount(int m_no) {
		return BookDao.getInstance().getMyPageGradeListCount(m_no);
	}

	public ArrayList<BookDto> getMyPageGradeList(HashMap<String, Object> pMap) {
		return (ArrayList<BookDto>) BookDao.getInstance().getMyPageGradeList(pMap);
	}

}
