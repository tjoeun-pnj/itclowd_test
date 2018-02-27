package com.minu.selling.svc;

import java.sql.Connection;

import com.minu.book.dao.BookDAO;
import com.minu.selling.dao.SellDAO;

import static com.minu.db.JdbcUtil.*;

public class SellingBookService {

	public Boolean integrateData(int od_no, int ib_no, int od_amount) {
		Boolean isIntegrateData = false;
		SellDAO sellDao = SellDAO.getInstance();
		Connection conn = getConnection();
		sellDao.setConnection(conn);
		
		int result1 = sellDao.integrateData(od_no, ib_no, od_amount);
		
		if(result1 > 0) {
			isIntegrateData= true;
			commit(conn);
		} else rollback(conn);
		close(conn);
		
		BookDAO bookDao = BookDAO.getInstance();
		bookDao.setConnection(conn);
		
		return isIntegrateData; 
	}

}
