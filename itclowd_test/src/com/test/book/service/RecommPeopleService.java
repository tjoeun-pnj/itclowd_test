package com.test.book.service;

import java.util.ArrayList;

import com.test.book.dao.BookDao;
import com.test.book.model.BookAssessmentVo;
import com.test.book.model.IndieAssessmentVo;
import com.test.book.model.IndieBookVo;

public class RecommPeopleService {

	public ArrayList<IndieBookVo> recommPeo(int m_no) {
		ArrayList<IndieAssessmentVo> listIndie = null;
		ArrayList<BookAssessmentVo> listBook = null;
		ArrayList<BookAssessmentVo> listYourBook = null;
		ArrayList<IndieBookVo> list = new ArrayList<IndieBookVo>();
		listBook = (ArrayList<BookAssessmentVo>) BookDao.getInstance().recommSelectMyBookGrade(m_no);
		for(BookAssessmentVo baVo : listBook) {
			long b_no = baVo.getB_no();
			listYourBook = (ArrayList<BookAssessmentVo>) BookDao.getInstance().recommSelectYourBookGrade(b_no);
			for(BookAssessmentVo baVoYour : listYourBook) {
				System.out.println(baVoYour.getM_no());
				listIndie = (ArrayList<IndieAssessmentVo>) BookDao.getInstance().recommSelectMyIndieGrade(baVoYour.getM_no());
				if(baVoYour.getM_no() != m_no) {
					for(IndieAssessmentVo iaVo: listIndie) {
						if(list.size() < 5) {
							list.add(BookDao.getInstance().getIndieBookDetail(iaVo.getIb_no()));
						}else {
							return list;
						}
					}
				}
			}
		}
		return list;
	}

}
