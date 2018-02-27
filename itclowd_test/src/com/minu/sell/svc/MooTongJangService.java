package com.minu.sell.svc;

import static com.minu.db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.sql.SQLException;

import com.minu.sell.dao.SellDao;
import com.minu.sell.vo.OrderBean;

public class MooTongJangService {
	OrderBean order=null;
	SellDao sellDao=null;
	Connection conn=null;	
	
	public MooTongJangService(OrderBean order) {
		this.order=order;
		this.sellDao = new SellDao();
		conn = getConnection();
	}

	public Boolean changeData() throws SQLException {
		Boolean result = false;
		int change=0;
		
		int o_no = sellDao.addOrder(order, conn);
		if(o_no > 0) {
			change= sellDao.addOrderDetail(order.getBook(), order.getBasket(), o_no, conn);
		} else {
			conn.rollback();
			conn.close();
			return result;
		}	
		if(change >0) {
			change = sellDao.changeIndieBookStock(order.getBasket(), order.getBook(), conn);
		} else {
			conn.rollback();
			conn.close();
			return result;	
		}
		if(change>0) {
			conn.commit();
			conn.close();
			result=true;
			return result;
		} else {
			conn.rollback();
			conn.close();
			return result;
		}
	}

}
