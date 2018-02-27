package com.test.book.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.test.book.dao.BookDao;
import com.test.book.model.IndieBookVo;

public class RecommCateService {

	public ArrayList<IndieBookVo> recommCate(int m_no) {
		int c_no = BookDao.getInstance().memberTasteCate(m_no);
		ArrayList<IndieBookVo> list = null;
		System.out.println(c_no);
		if(c_no <1) {
			HashMap<String, Integer> pMap = new HashMap<String, Integer>();
			pMap.put("c_no", (int) (Math.random()*6+1));
			list = (ArrayList<IndieBookVo>) BookDao.getInstance().recommGrade(pMap);
		} else {
			list = (ArrayList<IndieBookVo>) BookDao.getInstance().recommCate(c_no);
		}
		return list;
	}

}
