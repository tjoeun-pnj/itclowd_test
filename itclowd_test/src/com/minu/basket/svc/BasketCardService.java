package com.minu.basket.svc;

import static com.minu.db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.sql.SQLException;

import com.minu.basket.dao.BasketDAO;
import com.minu.sell.vo.OrderBean;

public class BasketCardService {
	Connection conn=null;
	OrderBean order=null;
	BasketDAO basketDao=null; 
	
	public BasketCardService(OrderBean order) {
		this.order=order;
		this.basketDao=new BasketDAO();
		conn = getConnection();
	}

	public Boolean changeData() throws SQLException {
		Boolean result = false;
		int change=0;
		
		int o_no = basketDao.addOrder(order, conn);
		if(o_no > 0) {
			change= basketDao.addOrderDetail(order, o_no, conn);
		} else {
			conn.rollback();
			conn.close();
			return result;
		}
		if(change>0) {
			change = basketDao.deleteCart(order.getBaskets(), conn);
		} else {
			conn.rollback();
			conn.close();
			return result;
		}	
		if(change >0) {
			change = basketDao.changeIndieBookStock(order.getBaskets(), order.getBooks(), conn);
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
