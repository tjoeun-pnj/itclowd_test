package com.test.board.svc;

import java.util.ArrayList;

import com.test.book.dao.BookDao;
import com.test.book.model.BookDto;
import com.test.book.model.IndieBookVo;

public class TasteSetService {


	public ArrayList<BookDto> tasteSetList() {
		return (ArrayList<BookDto>) BookDao.getInstance().tasteSetList();
	}

}
