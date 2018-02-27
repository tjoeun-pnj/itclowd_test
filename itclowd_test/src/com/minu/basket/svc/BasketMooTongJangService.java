package com.minu.basket.svc;

import static com.minu.db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import com.minu.basket.dao.BasketDAO;
import com.minu.basket.vo.Basket;
import com.minu.book.vo.BookBean;
import com.minu.sell.vo.OrderBean;
import com.mysql.jdbc.jdbc2.optional.SuspendableXAConnection;
import com.test.member.medel.MemberVo;

public class BasketMooTongJangService {
	Connection conn=null;
	OrderBean order=null;
	BasketDAO basketDao=null; 
	
	public BasketMooTongJangService(OrderBean order) {
		this.order=order;
		this.basketDao=new BasketDAO();
		conn = getConnection();
	}

	
	public Boolean changeData() throws SQLException {
		Boolean result = false;
		int change=0;
		
		
		int o_no = basketDao.addOrder(order, conn);
		if(o_no > 0) {
			conn.commit();
			change= basketDao.addOrderDetail(order, o_no, conn);
		} else {
			conn.rollback();
			conn.close();
			return result;
		}
		if(change>0) {
			conn.commit();
			change = basketDao.deleteCart(order.getBaskets(), conn);
		} else {
			conn.rollback();
			basketDao.deleteOrder(o_no, conn);
			conn.close();
			return result;
		}	
		if(change >0) {
			conn.commit();
			change = basketDao.changeIndieBookStock(order.getBaskets(), order.getBooks(), conn);
		} else {
			conn.rollback();
			basketDao.deleteOrder(o_no, conn);
			basketDao.deleteOrderDetail(order.getBaskets().size(), conn);
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
			basketDao.deleteOrder(o_no, conn);
			basketDao.deleteOrderDetail(order.getBaskets().size(), conn);
			basketDao.basketRecovery(order.getBaskets(), conn);
			conn.close();
			return result;
		}
	}
	

}
