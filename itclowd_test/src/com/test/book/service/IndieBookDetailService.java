package com.test.book.service;

import com.test.book.dao.BookDao;
import com.test.book.model.IndieBookVo;

public class IndieBookDetailService {

	public IndieBookVo indieBookDetail(int ib_no) {
		return BookDao.getInstance().getIndieBookDetail(ib_no);
	}

}
