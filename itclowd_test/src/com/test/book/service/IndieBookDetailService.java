package com.test.book.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.test.book.dao.BookDao;
import com.test.book.model.BookAssessmentVo;
import com.test.book.model.IndieAssessmentVo;
import com.test.book.model.IndieBookVo;

public class IndieBookDetailService {

	public IndieBookVo indieBookDetail(int ib_no) {
		return BookDao.getInstance().getIndieBookDetail(ib_no);
	}

	public ArrayList<IndieAssessmentVo> indieBookGradeList(HashMap<String, Object> pMap) {
		return (ArrayList<IndieAssessmentVo>) BookDao.getInstance().indieBookGradeList(pMap);
	}

	public int indieBookGradeListCount(int ib_no) {
		return BookDao.getInstance().indieBookGradeListCount(ib_no);
	}

}
