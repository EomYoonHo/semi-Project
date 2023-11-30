package kr.co.green.order.model.service;

import java.sql.Connection;

import kr.co.green.common.DatabaseConnection;
import kr.co.green.order.model.dao.OrderDAO;
import kr.co.green.order.model.dto.OrderDTO;

public class OrderServiceImpl implements OrderService {
	private Connection con;
	private DatabaseConnection dc;
	private OrderDAO orderDAO;

	public OrderServiceImpl() {
		orderDAO = new OrderDAO();
		dc = new DatabaseConnection();
		con = dc.connDB();
	}

	@Override
	public int orderEnroll(OrderDTO orderDTO) {

		return orderDAO.orderEnroll(con, orderDTO);
	}

	@Override
	public OrderDTO selectOrder(String o_imp_uid) {

		return orderDAO.selectOrder(con, o_imp_uid);
	}

}
