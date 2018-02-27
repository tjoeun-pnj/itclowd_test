package com.test.board.svc;

import java.util.ArrayList;
import java.util.HashMap;

import com.test.book.dao.BookDao;
import com.test.book.model.IndieBookVo;

public class RecommIndieService {

	public ArrayList<IndieBookVo> recommIndie() {
		HashMap<String, Integer> pMap = new HashMap<String, Integer>();
		pMap.put("c_no", 0);
		return (ArrayList<IndieBookVo>) BookDao.getInstance().recommGrade(pMap);
	}

}
