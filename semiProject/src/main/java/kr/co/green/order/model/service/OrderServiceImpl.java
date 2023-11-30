package kr.co.green.order.model.service;

import java.sql.Connection;

import kr.co.green.common.DatabaseConnection;
import kr.co.green.order.model.dao.OrderDAO;

public class OrderServiceImpl implements OrderService {
	private Connection con;
	private DatabaseConnection dc;
	private OrderDAO orderDAO;

	public OrderServiceImpl() {
		orderDAO = new OrderDAO();
		dc = new DatabaseConnection();
		con = dc.connDB();
	}
	
	
	
}
