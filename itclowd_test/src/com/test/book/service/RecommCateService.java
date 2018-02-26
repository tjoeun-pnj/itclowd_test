package com.test.book.service;

import java.util.ArrayList;

import com.test.book.dao.BookDao;
import com.test.book.model.IndieBookVo;

public class RecommCateService {

	public ArrayList<IndieBookVo> recommCate(int m_no) {
		int c_no = BookDao.getInstance().memberTasteCate(m_no);
		ArrayList<IndieBookVo> list = null;
		if(c_no <1) {
			list = (ArrayList<IndieBookVo>) BookDao.getInstance().recommGrade((int) (Math.random()*6+1));
		} else {
			list = (ArrayList<IndieBookVo>) BookDao.getInstance().recommCate(c_no);
		}
		return list;
	}

}
